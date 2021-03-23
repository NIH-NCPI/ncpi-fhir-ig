Instance: phenotype-1
InstanceOf: phenotype
Usage: #example
Description: "Example of the representation of an observed phenotype"
* identifier[0].system = "urn:ncpi:unique-string"
* identifier[0].value = "Phenotype|SD_PREASA7S|1|HP:0000076"
* code = hpo#HP:0000076 "Vesicoureteral reflux"
* code.text = "Present: Vesicoureteral reflux"
* subject.reference = "Patient/patient-example-1"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* recordedDate.extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-relativeDateTime"
* recordedDate.extension[0].extension[0].url = "target"
* recordedDate.extension[0].extension[0].valueReference = Reference(patient-example-1)
* recordedDate.extension[0].extension[1].url = "targetPath"
* recordedDate.extension[0].extension[1].valueString = "birthDate"
* recordedDate.extension[0].extension[2].url = "relationship"
* recordedDate.extension[0].extension[2].valueCode = #after
* recordedDate.extension[0].extension[3].url = "offset"
* recordedDate.extension[0].extension[3].valueDuration = 2 'weeks'
* recordedDate.extension[0].extension[3].valueDuration.unit = "w"