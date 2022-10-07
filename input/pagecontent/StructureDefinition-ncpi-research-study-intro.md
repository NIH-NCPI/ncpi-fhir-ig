### Added Profile Restrictions
In order to ensure consistency across all NCPI research studies represented in FHIR, there are some additional requirements that are to be enforced: 

The following requirements are true for all NCPI Research Studies:
* enrollment **must** contain 1 or more reference
* enrollment **must** only reference NCPI StudyGroup resources
* category must contain the Coding from NCPI [StudyCohort](CodeSystem-ncpi.html)

### Recommended Practices
In order to support interoperability, whenever possible, the NCPI Research Study resource should have one or more Codings provided for the Study's condition property indicating the disease or phenotype's that were interrogated during the study's execution. 