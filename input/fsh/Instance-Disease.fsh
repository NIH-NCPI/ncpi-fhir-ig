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
* code = $ncit#NCIT:Neuroblastoma "Neuroblastoma"
* code.text = "Neuroblastoma"
* subject = Reference(patient-example-1)
* recordedDate.extension.url = $cqf-relativeDateTime
* recordedDate.extension.extension[+]
  * url = "target"
  * valueReference = Reference(patient-example-1)
* recordedDate.extension.extension[+]
  * url = "targetPath"
  * valueString = "birthDate"
* recordedDate.extension.extension[+]
  * url = "relationship"
  * valueCode = #after
* recordedDate.extension.extension[+]
  * url = "offset"
  * valueDuration = 25 'days'
  * valueDuration.unit = "d"
