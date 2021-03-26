/** 
 All instances of Task profile should go in this file.
 */

Instance: task-example-1
InstanceOf: Task
Usage: #example
Description: "Example of the representation of Task."
* status = #completed
* intent = #order
* input.type.text = "Specimen"
* input.valueReference = Reference(specimen-example-1)
* output.type.text = "DocumentReference"
* output.valueReference = Reference(drs-document-reference-example-1)
