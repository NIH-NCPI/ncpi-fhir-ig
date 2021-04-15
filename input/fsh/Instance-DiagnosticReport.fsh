/**
 Example(s) of Genomics DiagnosticReport
 */
Instance: diagnostic-report-1
InstanceOf: DiagnosticReport
Description: "Example of a DiagnosticReport which aggregates genetic findings for a given test or run"
* status = #final
* code = $loinc#81247-0 "Master HL7 genetic variant reporting panel"
* subject = Reference(patient-example-1)
* result[0] = Reference(variant-example-1)
* result[1] = Reference(diagnostic-implication-1)
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/SupportingInfo"
* extension.valueReference = Reference(task-example-1)

