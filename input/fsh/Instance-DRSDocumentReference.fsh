// Name the file after type of 'root' resource, include any inline elements

Instance: drs-attachment-example
InstanceOf: DRSAttachment
Description: "An example representation of a DRSAttachment"
Usage: #inline
* url = "drs://example.com/ga4gh/drs/v1/objects/0f8c27b9-3300-4249-bb28-f49ffb80e277"

Instance: drs-document-reference-example
InstanceOf: DRSDocumentReference
Description: "An example representation of a DRSDocumentReference"
* status = #current
* content.attachment = drs-attachment-example

