Invariant: disease-specific-consent-code
Description: "Disease Specific components reflect the content that appears after the DS- portion of the NIH style consent code."
Expression: "valueString.matches('DS-[A-Z]+')"
Severity: #error

//https://nih-ncpi.github.io/ncpi-fhir-ig/StructureDefinition/research-consent-disease-abbreviation
Invariant: completed-conset-code
Description: "If category is DS then there must be a ResearchConsentDiseaseAbbreviation"
Expression: "!category.where(coding.where(system&'|'&code = 'https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem/nih-consent|DS').exists()).exists() or  extension.where(url=https://nih-ncpi.github.io/ncpi-fhir-ig/StructureDefinition/research-consent-disease-abbreviation).exists()"
Severity: #error

Extension: ResearchConsentDiseaseAbbreviation
Id: research-consent-disease-abbreviation 
Title: "Research Consent Disease Abbreviation"
Description: "Full code string for disease specific consent abbreviations"
* value[x] only string
* obeys disease-specific-consent-code

// The current version of SMILES CDR that we are using doesn't support
// version 4.3.0 resources, and when generating Consent based profiles with 
// version 4.0.1 resource, sushi generates invalid profiles. 
// 
// This profile exists in the resources directory until we have migrated all 
// R4 servers to a more recent version of HAPI. 
//
// Profile: ResearchStudyConsent
// Parent: Consent
// Id: research-study-consent
// Title: "Research Study Consent"
// Description: "A ResearchStudyConsent represents the core NIH Consent properties as they apply when consenting subjects to a research study"
// * ^version = "0.1.0"
// * ^status = #draft
// * category from nih-consent-codes (extensible)
// * extension contains ResearchConsentDiseaseAbbreviation named diseaseAbbreviation 0..1
// * extension[diseaseAbbreviation] ^short = "Consent Code Disease Abbreviation"
// * extension[diseaseAbbreviation].value[x] only string
