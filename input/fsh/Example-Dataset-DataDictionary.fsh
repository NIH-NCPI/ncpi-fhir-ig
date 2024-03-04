/**
 All related instances necessary to show how to build a data-dictionary for a 
 small dataset
 */

/**
 Define the Terminology components specific to the dataset itself. 

 One CodeSystem for the dataset listing each of the tables as individual codes

 One CodeSystem for each of the tables with individual codes for each variable 
 to be represented in FHIR

 For Categorical variables, we'll also have a CodeSystem for each unique set of 
 values. These shouldn't displace the need for mapping appropriately to public
 ontologies for the sake of interoperability, however, these values should be
 used in Codings alongside the harmonize codes for traceability. 
*/
CodeSystem: ExampleStudyDataDictionaryStudyDatasetCS1
Id: example-study-data-dictionary-dataset-codesystem-1
Title: "Dataset CodeSystem (lists all tables)"
Description: "Example CodeSystem for a data-dictionary dataset with only 1 table."
* ^url = $ExampleStudyDatasetCS
* ^content = #complete
* ^count = 1
* #demographics "Demographics"

CodeSystem: ExampleStudyDataDictionaryStudyTableCS1
Id: example-study-data-dictionary-datatable-codesystem-1
Title: "Datatable CodeSystem (lists all variables)"
Description: "Example CodeSystem for a data-dictionary table with 4 variables represented as codes."
* ^url = $ExampleStudyTableCS
* ^content = #complete
* ^count = 5
* #subjectid "Subject's Unique Identifier"
* #gender "Gender"
* #age_at_enrollment "Subject's Age at Enrollment in days"
* #bmi "Subject's BMI, Measured at Enrollment"
* #status "Subject's status (Case or Control)"
* #phenotype "An example phenotype observed for study"

ValueSet: ExampleStudyDataDictionaryCaseControlVS1
Id: example-study-data-dictionary-case-control-vs-1
Title: "Case/Control Vars for 'status' categoricals"
Description: "Example ValueSet listing all possible 'values' from the Case/Control variable."
* ^status = #draft
* ^url = $ExampleDataDictionaryCaseControlVS1
* $umls#C99269 "Case"
* $umls#C99270 "Control"

/**
Each table SHALL have an ObservationRequirement that describes each of that
table's variables. 
*/

Instance: example-study-data-dictionary-table-1
InstanceOf: StudyDataDictionaryTable
Title: "Data-Dictionary Table"
Description: "Example Study Data Dictionary Data Table definition"
* status = #active
* code.coding = $ExampleStudyDatasetCS#demographics "Demographics"
* topic.coding = $umls#C0035168 "Research"
* observationResultRequirement[0] = Reference(example-study-data-dictionary-variable-1-1)
* observationResultRequirement[1] = Reference(example-study-data-dictionary-variable-1-2)
* observationResultRequirement[2] = Reference(example-study-data-dictionary-variable-1-3)
* observationResultRequirement[3] = Reference(example-study-data-dictionary-variable-1-4)

/**
 This is an example of a very simple variable. It is just a string containing
 the unique ID associated with a given subject.
*/
Instance: example-study-data-dictionary-variable-1-1
InstanceOf: StudyDataDictionaryVariable
Title: "Example Study Data Dictionary Variable subjectid"
Description: "Participant's Unique Identifier (example of simple variable)"
* code.coding = $ExampleStudyTableCS#subjectid
* permittedDataType = #string

/**
 
*/
Instance: example-study-data-dictionary-variable-1-2
InstanceOf: StudyDataDictionaryVariable
Title: "Example Study Data Dictionary Variable gender"
Description: "Subject's gender"
* code.coding = $ExampleStudyTableCS#gender
* permittedDataType = #CodeableConcept
* validCodedValueSet.reference = "http://hl7.org/fhir/ValueSet/administrative-gender"

/**
 A slightly more complex Variable with a range 
*/
Instance: example-study-data-dictionary-variable-1-3
InstanceOf: StudyDataDictionaryVariable
Title: "Example Study Data Dictionary Variable age_at_enrollment"
Description: "Subject's Age at Enrollment (Example with a range of 30-40 years of age)"
* code.coding = $ExampleStudyTableCS#age_at_enrollment
* permittedDataType = #integer
* qualifiedInterval.age
  * low.value = 10957
  * low.unit = "days"
  * high.value = 14610
  * high.unit = "days"

/**
 A Quantity example with units
*/
Instance: example-study-data-dictionary-variable-1-4
InstanceOf: StudyDataDictionaryVariable
Title: "Example Study Data Dictionary Variable bmi"
Description: "Subject's BMI at Enrollment"
* code.coding = $ExampleStudyTableCS#bmi
* permittedDataType = #Quantity
* quantitativeDetails
  * unit = $ucum#kg/m2

/**
 An Example with codes associated with the value
*/
Instance: example-study-data-dictionary-variable-1-5
InstanceOf: StudyDataDictionaryVariable
Title: "Data Dictionary Variable status"
Description: "Subject's Case/Control Status"
* code.coding = $ExampleStudyTableCS#status
* permittedDataType = #CodeableConcept
* validCodedValueSet.reference = "ValueSet/example-study-data-dictionary-case-control-vs-1"

