For the purposes of interoperability, some restrictions have been made to enforce a common mechanism for describing enrollment and provide a simple means for summarizing subject count as well as access control through the main (parent) consent groups. In addition, we are providing some recommended practices for the common data elements required for submission. 

Please see the research study documentation for in-depth mappings on the R4 version and the necessary extensions needed to ensure interoperability. 

### Added Profile Restrictions
To ensure consistency across all NCPI research studies represented in FHIR, there are some additional requirements which must be enforced. These requirements are derived from the [Differential Table](#profile) section of this document. 

#### The following requirements are true for all NCPI Research Studies:
* enrollment **must** contain 1 reference of type, [Study Group](StructureDefinition-study-group.html).
* category **must** contain the Coding from NCPI [StudyCohort](CodeSystem-ncpi.html).
* each study **should** have its _accession ID_ added as an identifier. This is an identifier provided by DbGAP or other organization which represents a common identifier recognized by similar research groups.
* each study **should** have its _study name_ as the title. 
* for those studies which exist as part of a larger study, the parent study **should** be referenced in the study's _partOf_ property. 
* *principalInvestigator* **must** be of type _Practitioner_ if present. 

| NCPI Common Data Elements | HL7 FHIR (R4) Element | Notes |
| --- | --- | --- | 
| Accession # | identifier | Accession IDs from dbGaP, etc should be added as identifiers with a meaningful system |
| Study name | title | |
| Substudies | partOf | Substudies other than consent based organization should reference the parent NCPI Research Study using the partOf reference |

### Recommended Practices
To ensure consistency across all NCPI research studies represented in FHIR, there are some additional elements which should be included if applicable to your study. A recommended element is one that is important and will likely have value for those trying to understand the study's purpose and usefulness but not essential for validation against the profile. Those elements labeled as optional are not central to the fundamental understanding of the study's content but may play a key role in a study being *findable*. 

#### Common Data Elements

| NCPI COmmon Data Elements | HL7 FHIR (R4) Element | Recommended or Optional | Notes |
| --- | --- | --- | --- |
| Study description | description | Recommended | |
| Disease/focus | condition | Recommended | Should also have one or more Codings provided, indicating the disease or phenotypes that were interrogated during the study’s execution |
| Attribution | relatedArtifact | Recommended | This can include, but not limited to; principal investigators, grant numbers, etc. |
| Study weblinks | relatedArfifact | Optional | These elements fall under the StudyDescription element located in the [Added Profile Restrictions](#added-profile-restrictions) section of this document. |
| Study design | [studyDesign](StructureDefinition-research-study-design.html) | Optional | These elements fall under the StudyDescription element located in the [Added Profile Restrictions](#added-profile-restrictions) section of this document. |
| Study type |  [studyDesign](StructureDefinition-research-study-design.html) | Optional | These elements fall under the StudyDescription element located in the [Added Profile Restrictions](#added-profile-restrictions) section of this document. |
| Citation | relatedArtifact | Optional | |
| Study documents | relatedArtifact | Optional | |

For a more detailed view of these elements as well as the recommended FHIR mappings please see the research study documentation. 

#### Population Details
Each NCPI Research must have one [Study Group](StructureDefinition-study-group.html) which must, at the very least, indicate the total number of patients enrolled at the time the data was loaded into FHIR. 
