ValueSet: StudyDesign
Id: study-design
Title: "Study Design"
Description: "This is a set of terms for study design characteristics."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* include codes from system https://hl7.org/fhir/codesystem-study-design.html

Extension: ResearchStudyDesign
Id: research-study-design
Title: "Research Study Design"
Description: "Codes categorizing the type of study such as investigational vs. observational, type of blinding, type of randomization, safety vs. efficacy, etc."
* value[x] only CodeableConcept 
* valueCodeableConcept from study-design (example)

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
* extension contains ResearchStudyDesign named studyDesign 0..*
