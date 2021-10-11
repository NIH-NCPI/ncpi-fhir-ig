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


Instance: task-example-2
InstanceOf: SpecimenTask
Usage: #example
Description: "Example of the representation of Task that points to a ResearchDocumentReference."
* status = #completed
* intent = #order
* input.type.text = "Specimen"
* input.valueReference = Reference(specimen-example-1)
* output.type.text = "DocumentReference"
* output.valueReference = Reference(research-document-reference-example-1)
// populate required search parameters
* focus = Reference(specimen-example-1)
* for = Reference(patient-example-3)
* owner  = Reference(organization-example-1)
