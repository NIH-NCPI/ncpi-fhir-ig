ValueSet: DiseaseCodes
Id: disease-codes
Title: "Disease Codes"
Description: "This value set includes all codes from this FHIR server's representation of OMIM, Mondo and NICt CodeSystems."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* include codes from system $omim
* include codes from system $mondo
* include codes from system $ncit
