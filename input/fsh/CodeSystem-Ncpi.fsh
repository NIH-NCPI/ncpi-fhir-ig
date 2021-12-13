/**
 * Code Systems - Perhaps we can put all of our fields into a single
 * code system so that identification is easy. However, if these can
 * be found in other vocabularies, maybe having a single value set 
 * is clear and concise enough.*/
CodeSystem: Ncpi
Id: ncpi
Title: "NCPI FHIR Codes"
Description: "Codes that would apply to NCPI projects"
* ^url = $ncpi
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment 
* #Consortium "Study Consortium"
* #StudyCohort "Study Cohort"
* #Summary "Summary Data"
* #CohortCount "Number of Cohorts"
* #SampleCount "Number of Samples"
* #Participant "Number of Participants"
* #StorageSize "Size on Disk"
* #ConsentCodes "Consent Codes"
* #TerraWorkspace "Terra Workspace Name"
* #PrimaryDisease "Primary Disease"
* #AccessType "Access Type"
* #StudyDesign "Study Design"
