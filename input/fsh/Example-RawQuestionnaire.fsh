/**
 * Representing raw data tables as questionnaire and questionnaire response

 * Some points not shown here that could be useful
 * _date => This would permit us to record the date when the responses were added to the study
 * description => Long description if available
 * purpose => 
 *
 * encounter - The QuestionnaireResponse does support references to encounters, 
 * so if the actual Conditions and Observations use encounter as well, 
 * you have a way to pull them all together
 *
 * source - For something like DS-Connect, it would be possible to point back to the family
 * member who answered the questions, if we had that information. Not sure this is a normal 
 * situation for research data. 
 *
 */

Instance: example-questionnaire-demographics-1
InstanceOf: Questionnaire
Title: "Example of a Questionnaire to Represent Raw Data"
Description: "An example Questionnaire that is used to describe the individual rows of data that are to be stored as QuestionnaireResponses"
* url = "https://nih-ncpi.github.io/ncpi-fhir-ig/data-dictionary/study-name/demographics"
* name = "Demographcs"
* title = "Example Demographics"
* status = #active
* subjectType = http://hl7.org/fhir/resource-types#ResearchSubject
* code = $ExampleStudyDatasetCS#demographics
* item
  * linkId = "subjectid"
  * code = $ExampleStudyTableCS#subjectid
  * text = "Subject ID"
  * type = http://hl7.org/fhir/item-type#string
  * required = true
* item[+]
  * linkId = "gender"
  * code = $ExampleStudyTableCS#gender
  * text = "Gender"
  * type = http://hl7.org/fhir/item-type#choice
  * required = true
  * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[+]
  * linkId = "age_at_enrollment"
  * code = $ExampleStudyTableCS#age_at_enrollment
  * text = "Subject's Age at Enrollment in days"
  * type = http://hl7.org/fhir/item-type#integer
* item[+]
  * linkId = "bmi"
  * code = $ExampleStudyTableCS#bmi
  * text = "Subject's BMI, Measured at Enrollment"
  * type = http://hl7.org/fhir/item-type#quantity
* item[+]
  * linkId = "status"
  * code = $ExampleStudyTableCS#status
  * text = "Subject's status (Case or Control)"
  * type = http://hl7.org/fhir/item-type#choice
  * answerValueSet = $ExampleDDCaseControlVS1

Instance: example-questionnaire-demographics-response-1
InstanceOf: QuestionnaireResponse
Title: "Example of a QuestionnaireResponse to Represent Raw Data"
Description: "A Single row of data represented in FHIR as a QuestionnaireResponse"
* questionnaire = "https://nih-ncpi.github.io/ncpi-fhir-ig/data-dictionary/study-name/demographics"
* status = #completed
* subject = Reference(example-sum-patient-1)
* item
  * linkId = "subjectid"
  * text = "Subject ID"
  * answer.valueString = "SUB0001"
* item[+]
  * linkId = "gender"
  * text = "Gender"
  * answer.valueString = "Female"
* item[+]
  * linkId = "bmi"
  * text = "Subject's BMI, Measured at Enrollment"
  * answer.valueQuantity
    * value = 34.1
    * unit = "kg/m2"
    * system = $ucum
    * code = #kg/m2
* item[+]
  * linkId = "status"
  * text = "Subject's status (Case or Control)"
  * answer.valueCoding = $umls#C99269 "Case"

