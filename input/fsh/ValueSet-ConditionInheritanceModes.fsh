ValueSet: ConditionInheritanceModeVS
Id: condition-inheritance-vs
Title: "Condition Inheritance Pattern"
Description: "Value Set for specific ttransmission patterns of a condition in a pedigree"
* ^version = "1.1.0"
* ^status = #active
* ^publisher = "HL7 International Clinical Genomics Work Group"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/clingenomics"
* ^jurisdiction[0] = $m49.htm#001
* include codes from system ConditionInheritanceMode