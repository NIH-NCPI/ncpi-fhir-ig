Profile: NcpiResearchStudy
Parent: ResearchStudy
Id: ncpi-research-study
Title: "NCPI Research Study"
Description: "The NCPI Research Study is based upon the core HL7 FHIR ResearchStudy resource (R4) and shall act as the umbrella under which all study resources can ultimately be found."
* ^version = "0.0.1"
* ^status = #draft
* category.coding = $ncpi#StudyCohort "Study Cohort"
* enrollment 1..1
* enrollment only Reference(StudyGroup) 
* sponsor only Reference(ResearchConsortium)
* principalInvestigator only Reference(Practitioner)
