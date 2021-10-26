Profile: ResearchDocumentReference
Parent: DocumentReference
Id: ncpi-research-document-reference
Title: "Research Document Reference"
Description: "A FHIR Document Reference created by an analysis task. Context.related = Task "
* ^version = "0.1.0"
* ^status = #draft
// Must have a context that points to the task
* context 1..1
* context.related only Reference(Task)
* content.attachment only DRSAttachment or Attachment
// Must have a populated subject field
* subject 1..1
// Must have a populated custodian field
* custodian 1..1
