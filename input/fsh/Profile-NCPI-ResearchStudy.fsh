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
* ^description = "The NCPI Research Study is based upon the core HL7 FHIR ResearchStudy resource (R4) and shall act as the umbrella under which all study resources can ultimately be found."
* ^version = "0.0.1"
* ^status = #draft
* identifier 1..*
* identifier ^short = "Accession IDs from dbGaP, etc."
* title ^short = "Study Title (Strongly Recommended)"
* description ^short = "Study Description (Recommended)"
* category.coding ^short = "Indicate this is an NCPI Research Study"
* category.coding = $ncpi#StudyCohort "Study Cohort"
* enrollment ^short = "Study Participants"
* enrollment 1..1
* enrollment only Reference(StudyGroup) 
* sponsor ^short = "Consortium or other group the study is a member"
* sponsor only Reference(ResearchConsortium)    
* principalInvestigator only Reference(Practitioner)  // The primary investigator
* relatedArtifact ^short = "Attribution, Study Weblinks, Citation, Study Documents, etc."
* condition ^short = "Disease or phenotypes that were interrogated during the study’s execution. MONDO, HPO "
* condition ^comment = "This is a comment"
* extension contains ResearchStudyDesign named studyDesign 0..*
* extension[studyDesign] ^short = "Study Design and Study Type"

Logical: CdeResearchStudy
Id: common-data-model-research-study
Title: "CDE Research Study"
Description: "Common Data Model representation of a research study."
* accession 1..1 SU string 
     "Study Accession Number" "Accession number produced by access authority such as dbGaP."
* name 1..1 SU string "Study Name" "The study's name or title"
* substudies 0..* ResearchStudy "Substudies" "A component study, often with a different type of data and/or different consent."
* description 1..1 string "The study's description" "A detailed description about the research study."
* disease_focus 0..* Coding "Disease or focus of the study" "One or more relevant disease or phenotype associated with the research study’s focus"
* attribution 0..* string "Attribution"
* weblinks 0..* string "Web Links"
* study_design 0..* Coding "Study Design"
* study_type 0..* Coding "Study Type"
* citation 0..* string "Citation(s) associated with this study" "Citations associated with this study."
* study_documents 0..* string "Study Documents"

Mapping: NcpiResearchStudyToCdeResearchStudy
Source: NcpiResearchStudy
Target: "StructureDefinition-common-data-model-research-study.html"
Id: cde-research-study-to-ncpi-research-study
Title: "NCPI Research Study Mappings"
* identifier -> "accession"
* title -> "name"

