Profile: NcpiResearchStudy
Parent: ResearchStudy
Id: ncpi-research-study
Title: "NCPI Research Study"
Description: "The NCPI Research Study is based upon the core FHIR ResearchStudy resource and shall act as the umbrella under which all study resources can ultimately be found. For the purposes of interoperability, some restrictions have been made to enforce a common mechanism for describing enrollment and provide a simple means for summarizing subject count and consent group membership."
* ^version = "0.0.1"
* ^status = #draft
* category.coding = $ncpi#StudyCohort "Study Cohort"
* enrollment 1..*
* enrollment only Reference(StudyGroup) 
* sponsor only Reference(ResearchConsortium)
