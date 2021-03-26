Invariant: must-be-drs-uri
Description: "attachment.url must start with ^drs://. A drs:// hostname-based URI, as defined in the DRS documentation, that tells clients how to access this object. The intent of this field is to make DRS objects self-contained, and therefore easier for clients to store and pass around.  For example, if you arrive at this DRS JSON by resolving a compact identifier-based DRS URI, the `self_uri` presents you with a hostname and properly encoded DRS ID for use in subsequent `access` endpoint calls."
Expression: "$this.url.matches('^drs://.*')"
Severity: #error

Profile: DRSAttachment
Parent: Attachment
Id: ncpi-drs-attachment
Title: "DRS Attachment"
Description: "A FHIR Attachment with a DRS url."
* ^version = "0.1.0"
* ^status = #draft
* obeys must-be-drs-uri
