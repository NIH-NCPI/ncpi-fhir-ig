/**
 * Representing Raw Data using a single Observation with components 
 * 
 * Each component represents a single column of data with the component's 
 * code coming from the Data Dictionary's CodeSystem for the table (row 
 * of data) the observation represents. 
 */
Instance: ncpi-research-study-01-specimen-01
InstanceOf: Specimen
Title: "NCPI Research Study 01 Specimen 01"
Description: "An example Specimen used to indicate which sample a row of raw data is associated with."
* status = #available
* type.coding = $ncit#C17610 "Blood Sample"
* subject = Reference(ncpi-research-study-01-patient-01)

/* collection._collectedDateTime = ... These extensions currently generate errors in publisher when using sushi */
/**
 * diagnosis ? => Encounters do permit the addition of one or more diagnosis. Is there value
 * in linking the relevant Conditions created as a result of the encounter?
 *
 * partOf = For datasets with multiple tables, perhaps it's worth having a
 * top level "encounter" to represent the entire data collection event with
 * each distinct grouping of data representing the children that point up to the
 * top level via the partOf field.
 */
Instance: example-encounter-study-01-patient-01
InstanceOf: Encounter
Title: "Example Encounter Study 01 Patient 01"
Description: "Example encounter for use with raw data to help tie different rows associated with the same event together."
* status = $encounterStatus#finished
* class = $ResearchEncounterClassCS#survey "Survey Completed by Subject or someone representing them"
* subject = Reference(ncpi-research-study-01-patient-01)

Instance: example-observation-data-row-1
InstanceOf: Observation
Title: "Example of Raw Data"
Description: "Example Observation representing a single row of raw data from an single data table."
* status = #final
* code = $ExampleStudyDatasetCS#demographics    /** We 'link' to the DD code for the table this represents*/
* subject = Reference(ncpi-research-study-01-patient-01)
* specimen = Reference(ncpi-research-study-01-specimen-01)
* component
  * code = $ExampleStudyTableCS#subjectid
  * valueString = "SUB0001"
* component[+]
  * code = $ExampleStudyTableCS#gender
  * valueCodeableConcept.coding = $administrativeGender#female "female"
* component[+]
  * code = $ExampleStudyTableCS#bmi
  * valueQuantity
    * value = 34.1
    * system = $ucum
    * code = #kg/m2
    * unit = "kg/m2"
* component[+]
  * code = $ExampleStudyTableCS#status
  * valueCodeableConcept.coding = $umls#C99269 "Case"

