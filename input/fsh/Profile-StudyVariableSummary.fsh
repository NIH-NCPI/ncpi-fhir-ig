/**
 Summary Observations record summary data associated with data-values stored in FHIR
 */
Profile: StudyVariableSummary
Parent: Observation
Id: study-variable-summary
Title: "Study Variable Summary"
Description: "An observation containing summary data associated with research data from FHIR."
* ^version = "0.1.0"
* ^status = #draft
* code.coding = $umls#C0242482 "Summary Report"
* valueCodeableConcept 1..1
* subject only Reference(StudyGroup)
* focus 1.. 
* focus only Reference(NcpiResearchStudy) 
* component 1..

