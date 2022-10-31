/**
 Representing basic summaries of variables in FHIR can be done using standard FHIR Observations.
 */

/**
 In order to use the Profile, SummaryObservation, we need to create a Group which represents the patients whose data was considered.

 For public servers where the summary data is open, SummaryGroups may not have any details
 about membership
*/

Instance: example-summary-group-1
InstanceOf: StudyGroup
Title: "Example Group used for Summary Results"
Description: "Just an example group for demonstrational purposes"
* type = #person
* actual = true 
* quantity = 400

/**
 Summarize the Subjects' Gender
*/
Instance: example-study-summary-gender
InstanceOf: StudyVariableSummary 
Title: "Example Variable Summary with categories (gender)"
Description: "Simple example of a VariableSummary using components to capture counts of different categories (male, female and missing)"
* status = #final
* code.coding = $umls#C0242482 "Summary Report"
* valueCodeableConcept.coding = $umls#C0079399 "Gender"
* valueCodeableConcept.coding[1] = $ExampleStudyTableCS#gender
* subject = Reference(example-summary-group-1)
* focus = Reference(ncpi-research-study-01)
* component
  * code = $administrativeGender#female 
  * valueInteger = 205
* component[+]
  * code = $administrativeGender#male
  * valueInteger = 183
* component[+]
  * code = $umls#C1705492 "Missing"
  * valueInteger = 12