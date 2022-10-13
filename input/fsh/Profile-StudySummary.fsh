/**
 Summary that applies to a Study as a whole (or possibly one of the consent groups)
 */
Profile: StudySummary
Parent: Observation
Id: study-summary
Title: "Study Summary"
Description: "An observation containing summary information about a study in it's entirety or one of it's subpopulations."
* ^version = "0.1.0"
* ^status = #draft
* code.coding = $umls#C0242482 "Summary Report"
* subject only Reference(StudyGroup)
* focus 1.. 
* focus only Reference(NcpiResearchStudy) 
* component 1..

