/** 
 All instances of Research Study profile should go in this file.
 */

Instance: research-study-example-1
InstanceOf: ResearchStudy
Usage: #example
Description: "Example of the representation of Research Study."
* title = "NCPI Research Study Example 1"
* status = #completed
* principalInvestigator = Reference(practitioner-role-example-1)
* extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content"
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumAnalyses"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumDocuments"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumMolecularDatasets"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumPhenotypeDatasets"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumSamples"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumSubStudies"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumSubjects"
* extension[=].extension[=].valueCount = 1 '1'
* extension[=].extension[+].url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content-NumVariables"
* extension[=].extension[=].valueCount = 1 '1'
