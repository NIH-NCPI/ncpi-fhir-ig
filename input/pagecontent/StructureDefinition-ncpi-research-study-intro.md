For the purposes of interoperability, some restrictions have been made to enforce a common mechanism for describing enrollment and provide a simple means for summarizing subject count as well as access control through the main (parent) consent groups. In addition, we are providing some recommended practices for the common data elements required for submission. 

Please see the research study documentation for in-depth mappings on the R4 version and the necessary extensions needed to ensure interoperability. 

### Added Profile Restrictions
To ensure consistency across all NCPI research studies represented in FHIR, there are some additional requirements which must be enforced. These requirements are derived from the Differential Table which can be found in the 28.4.1.3 section of this document. 

#### The following requirements are true for all NCPI Research Studies:
* enrollment **must** contain 1 reference of type, [Study Group](StructureDefinition-study-group.html).
* category **must** contain the Coding from NCPI [StudyCohort](CodeSystem-ncpi.html).
* each study **should** have its _accession ID_ added as an identifier. This is an identifier provided by DbGAP or other organization which represents a common identifier recognized by similar research groups.
* each study **should** have its _study name_ as the title. 
* for those studies which exist as part of a larger study, the parent study **should** be referenced in the study's _partOf_ property. 
* *principalInvestigator* **must** be of type _Practitioner_ if present. 

### General Study Guideleines 
To ensure consistency across all NCPI research studies represented in FHIR, there are some additional elements which should be included if applicable to your study. 

#### Recommended Elements
A recommended element is not mandatory for validation but will potentially interfere with data analysis if not included. 
* A reasonably complete _study description_ **should** be provided in the _description_ property. 
* All relevant _diseases or study focus_ **should** be enumerated as terms from relevant ontologies in the _condition_ property.
* _Attribution details_ such as principal investigators, grant numbers, etc. **should** be enumerated inside the _relatedArtifact_ property.

### Optional Elements 
An optional element is one which will help provide additional context to the research study but will not affect data analysis. 
* It is highly recommended that each _study weblink_ be enumerated inside the _relatedArtifact_ property.
* Any _citations_ **should** be enumerated in the _relatedArtifact_ property. 
* Any other _relevant documents_ **should** be enumerated in the _relatedArtifact_ property. 

For a more detailed view of these elements as well as the recommended FHIR mappings please see the research study documentation. 

Each NCPI Research must have at least one NCPI Study Group which must, at the very least, indicate the total number of patients enrolled at the time the data was loaded into FHIR. Additional Study Groups can be present indicating relevant groupings of subjects. 
