CodeSystem: NcpiStudyType
Id: ncpi-study-type
Title: "NCPI Study Type"
Description: "Enumerated List of Research Study Types used in NCPI Funded studies."
* ^url = $ncpi-study-types
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment 
* #Family "Family"
* #Cohort "Cohort"
* #Mixed "Mixed"
* #Repository "Repository"
* #RNA-Sequencing "RNA Sequencing"
* #Parent-Offspring-Trios "Parent-Offspring Trios"
* #Cross-Sectional "Cross-Sectional"
* #Control-Set "Control Set"
* #Tumor-vs-Matched-Normal "Tumor vs. Matched-Normal"
* #Observational "Observational"
* #Longitudinal "Longitudinal"
