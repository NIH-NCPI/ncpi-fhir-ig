Instance: disease-1
InstanceOf: disease
Usage: #example
Description: "Example of the representation of a disease"
* subject.reference = "Patient/patient-example-1"
* subject.type = "Patient"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Affected"
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $ncit.owl#NCIT:C54705 "Neoplastic Syndrome"
* code.text = "Neoplastic Syndrome"
* recordedDate.extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-relativeDateTime"
* recordedDate.extension[0].extension[0].url = "target"
* recordedDate.extension[0].extension[0].valueReference = Reference(patient-example-1)
* recordedDate.extension[0].extension[1].url = "targetPath"
* recordedDate.extension[0].extension[1].valueString = "birthDate"
* recordedDate.extension[0].extension[2].url = "relationship"
* recordedDate.extension[0].extension[2].valueCode = #after
* recordedDate.extension[0].extension[3].url = "offset"
* recordedDate.extension[0].extension[3].valueDuration = 25 'days'
* recordedDate.extension[0].extension[3].valueDuration.unit = "d"