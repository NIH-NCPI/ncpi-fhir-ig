// This is required by the experimental Genomics that is being used for the variant examples

ValueSet: ToBeDeterminedCodes
Id: tbd-codes
Title: "tbd-codes"
Description: "This value set includes all TBD Codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #cg
* ^url = "http://hl7.org/fhir/uv/genomics-reporting/ValueSet/tbd-codes"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-08-21T00:00:00-04:00"
* ^publisher = "HL7 (Clinical Genomics)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* include codes from system TbdCodes
