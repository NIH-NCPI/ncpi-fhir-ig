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
* #ConsentGroup "Study Consent Group"
* #Summary "Summary Data"
* #CohortCount "Number of cohorts that are part of this study"
* #SubStudyCount "Number of sub-studies that are part of this study"
* #SampleCount "Number of samples that are part of this study"
* #Participant "Number of participants that are part of this study"
* #VariableCount "Number of variables that are part of this study"
* #AnalysesCount "Number of analyses that are part of this study"
* #MolecularDatasetCount "Number of molecular datasets that are part of this study"
* #PhenotypeDatasetCount "Number of phenotype datasets that are part of this study"
* #StorageSize "Size on Disk"
* #ConsentCodes "Consent Codes"
* #TerraWorkspace "Terra Workspace Name"
* #PrimaryDisease "Primary Disease"
* #AccessType "Access Type"
* #StudyDesign "Study Design"
