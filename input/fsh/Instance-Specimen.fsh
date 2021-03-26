/** 
 All instances of Specimen profile should go in this file.
 */

Instance: specimen-example-1
InstanceOf: Specimen
Usage: #example
Description: "Example of the representation of Specimen."
* type = $v2-0487#TISS "Tissue"
* type.text = "Solid Tissue"
* subject = Reference(patient-example-1)
* receivedTime.extension.url = $cqf-relativeDateTime
* receivedTime.extension.extension[0].url = "target"
* receivedTime.extension.extension[0].valueReference = Reference(patient-example-1)
* receivedTime.extension.extension[1].url = "targetPath"
* receivedTime.extension.extension[1].valueString = "birthDate"
* receivedTime.extension.extension[2].url = "relationship"
* receivedTime.extension.extension[2].valueCode = #after
* receivedTime.extension.extension[3].url = "offset"
* receivedTime.extension.extension[3].valueDuration = 366 'days'
* receivedTime.extension.extension[3].valueDuration.unit = "d"
* collection.collectedDateTime.extension.url = $cqf-relativeDateTime
* collection.collectedDateTime.extension.extension[0].url = "target"
* collection.collectedDateTime.extension.extension[0].valueReference = Reference(patient-example-1)
* collection.collectedDateTime.extension.extension[1].url = "targetPath"
* collection.collectedDateTime.extension.extension[1].valueString = "birthDate"
* collection.collectedDateTime.extension.extension[2].url = "relationship"
* collection.collectedDateTime.extension.extension[2].valueCode = #after
* collection.collectedDateTime.extension.extension[3].url = "offset"
* collection.collectedDateTime.extension.extension[3].valueDuration = 366 'days'
* collection.collectedDateTime.extension.extension[3].valueDuration.unit = "d"
// * receivedTime = "2019-06-15"
// * collection.collectedDateTime = "2019-06-15"
* collection.quantity = 50.0 'uL' 
* collection.bodySite = $sct#21483005 "Structure of central nervous system"
* collection.bodySite.text = "Central Nervous System"
* collection.method = $sct#129314006 "Biopsy - action"
* collection.method.text = "Biopsy"
