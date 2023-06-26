### Key Guidelines
The NCPI ResearchStudySubject profile represents the different access control restrictions that may be found within a given study. This profile links the consent usage restrictions with the related list of participants together within the study in which the participants are enrolled. 

#### Added Profile Restrictions
Based on the [NCPI Research Study](StructureDefinition-ncpi-research-study.html) profile, this resource:
* **must** have a _partOf_ property which points to the main NcpiResearchStudy resource. 
* **should** also use the [Research Study Subject Consent extension](StructureDefinition-research-study-subject-consent.html) to point to the corresponding consent resource. 

Because it is derived from the NCPI Research Study profile, the resource's enrollment **must** contain a single [Study Group](StructureDefinition-study-group.html). 