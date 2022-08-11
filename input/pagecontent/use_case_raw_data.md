#### Representing Raw Data in FHIR
<img width="100%" src="raw-data-as-observations.png" alt="research-study-structure" />

##### Raw Data as Observations (with components)
FHIR Observations are rich resource structures that provide a direct link to a *subject*, which can be a Patient or a group of Patients) and an optional *focus* which can point to any other resource. There is also the possibility to link the observation to an *encounter*. Each observation can have 0 or more *component* entries.

###### Component Composition
Components can contain only a small number of properties of which we'll use only a few. 

* Code - The code associated with each component _MUST_ be the corresponding code associated with that column from the table's data-dictionary *CodeSystem*. This is how consumers will be able to identify what each component represents.
* value[x] - The data-dictionary for each table should describe the type of each of the columns. This can be exploited to provide baseline casting when storing the column's contents into FHIR. As such, a column noted as being an integer, will be represented as a *valueInteger*, while a column with a list of possible values will be a *valueCodeableConcept*. It should be noted that, while "decimal" values will be represented as *valueQuantity*, those will only have a unit if the data-dictionary is defined to provide this (currently not supported by NCPI Whistler, but can be added in the future). For quantities whose unit is expressed in a separate column, those should not be expected to ever get linked together except by an end user. 

###### Subject
In general, each row will always refer to a single subject. This is true even for rows that describe something like a sample which may have been extracted from a subject--ultimately, one can trace that sample back to the original source, which would be the subject. The *Observation's* subject property is a reference, which we'll assume will point to the appropriate *Patient* resource. 

Having a subject present for these resources makes it possible for FHIR users to collect all of the raw data for a given patient.

When attempting to automate the construction of these resources, it is possible that the actual subject's ID will not be present in the table. For instance, we have received files where the patient's ID was able to extracted from the sample ID, so only the sample ID was provided. For these scenarios, NCPI whistler is not able to link those rows back to the patient. 

###### Future Considerations
Beyond linking back to the subject, it is possible that we might want to link back to slightly more specific resources as well.

It should be noted that NCPI Whistler does not support either of these and there may not be plans to support them in the future. 

###### Specimen, VCF, etc
For data like a file that contains data related specifically to a sample or is the result of processing done on a VCF, it is reasonable to suggest one could link a given row back to the original source. For samples, this would mean that, in addition to having a valid *subject*, the *focus* could point back to the appropriate *Specimen* resource. Out from a process run, may have a *focus* that points either to the *DocumentReference* or possible the *Task* related to the data's origins. 

In the case of many task related output, there may not really be a single *Patient*. In these cases, *subject* may point to a *group* of *Patients* or just be missing altogether. 

###### Encounters 
For some data tables, it is easy to imagine they are describing the outcome of a single encounter which will be realized by during a transformation. It seems reasonable that such a relationship could be captured for these resources. 