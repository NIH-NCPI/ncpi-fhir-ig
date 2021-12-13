/** 
 All instances of DRS Document Reference profile should go in this file.
 */

Instance: research-document-reference-example-1
InstanceOf: ResearchDocumentReference
Usage: #example
Description: "Example of the representation of Research Document Reference."
* status = #current
* content.attachment = drs-attachment-example-1
// without `context`, this will fail validation
* context.related = Reference(task-example-2)
// without `subject`, this will fail validation
* subject = Reference(patient-example-3)
// without `custodian`, this will fail validation
* custodian = Reference(organization-example-1)