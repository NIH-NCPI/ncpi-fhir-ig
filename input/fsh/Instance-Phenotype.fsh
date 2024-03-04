/** 
 All instances of Phenotype profile should go in this file.
 */

Instance: phenotype-example-1
InstanceOf: Phenotype
Usage: #example
Description: "Example of the representation of observed Phenotype."
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code.coding[+] = $hpo#HP:0000076 "Vesicoureteral reflux" 
* code.coding[+] = $ExampleStudyTableCS#phenotype
* code.text = "Present: Vesicoureteral reflux"
* subject = Reference(patient-example-1)
* recordedDate.extension.url = $cqf-relativeDateTime
* recordedDate.extension.extension[0].url = "target"
* recordedDate.extension.extension[0].valueReference = Reference(patient-example-1)
* recordedDate.extension.extension[1].url = "targetPath"
* recordedDate.extension.extension[1].valueString = "birthDate"
* recordedDate.extension.extension[2].url = "relationship"
* recordedDate.extension.extension[2].valueCode = #after
* recordedDate.extension.extension[3].url = "offset"
* recordedDate.extension.extension[3].valueDuration = 2 'weeks'
* recordedDate.extension.extension[3].valueDuration.unit = "w"
