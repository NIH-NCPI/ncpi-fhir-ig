/** 
 All instances of Disease profile should go in this file.
 */

Instance: disease-example-1
InstanceOf: Disease
Usage: #example
Description: "Example of the representation of Disease."
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Affected"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $ncit.owl#NCIT:Neuroblastoma "Neuroblastoma"
* code.text = "Neuroblastoma"
* subject = Reference(patient-example-1)
* recordedDate.extension.url = $cqf-relativeDateTime
* recordedDate.extension.extension[0].url = "target"
* recordedDate.extension.extension[0].valueReference = Reference(patient-example-1)
* recordedDate.extension.extension[1].url = "targetPath"
* recordedDate.extension.extension[1].valueString = "birthDate"
* recordedDate.extension.extension[2].url = "relationship"
* recordedDate.extension.extension[2].valueCode = #after
* recordedDate.extension.extension[3].url = "offset"
* recordedDate.extension.extension[3].valueDuration = 25 'days'
* recordedDate.extension.extension[3].valueDuration.unit = "d"
