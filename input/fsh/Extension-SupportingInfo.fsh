/**
 Extension required to let the DiagnosticReport point to the related Task from
 which the genetic information was derived
 */
Extension: SupportingInformation
Id: supporting-info
Title: "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^version = "1.1.0"
* ^publisher = "HL7 International Clinical Genomics Work Group"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/clingenomics"
* ^jurisdiction[0] = $m49.htm#001
* . ^short = "Supporting Information"
* . ^definition = "Additional information relevant to interpreting/understanding the report."
* value[x] only Reference(Resource)