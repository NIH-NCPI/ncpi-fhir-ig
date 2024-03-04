### Overview
This module describes the tools used for a public representation of a Research Study. The Research Study represents the umbrella under which all related information can be found. Because of its central role in data aggregation, the Research Study resource should be present, even on public servers providing only summary information. 

<img width="100%" src="bh-cmg-research-study-example.png" alt="Example NCPI Research Study Model" />

#### ResearchStudy
The [NCPI ResearchStudy](StructureDefinition-ncpi-research-study.html) profile is used to share data about Research Studies themselves. In the NCPI setting, these resources are focused on retrieving information about the study and data from the study and not on operating a research study. Additionally, we’ve acknowledged some of the weaknesses of the R4 ResearchStudy and have included some extensions that map to the R5 version.

Patient resources are associated with the study by way of the ResearchSubject resource as well as membership in one or more of the StudyGroup resources. 

#### ResearchConsortium
When capturing studies that are a part of a consortium, the [NCPI ResearchConsortium](StructureDefinition-ncpi-research-consortium.html) profile should be defined and referenced from the participating studies via the studies' __sponsor__ property. 

### Conventions
For each NCPI Research Study resource, there **must** be at least one [StudyGroup](StructureDefinition-study-group.html).

For summary level FHIR servers with no patient level information, the Study Group must provide the number of members it represents, but doesn't have to list the references directly. 

For FHIR servers hosting row-level data, each Study Group should provide a complete list of all patients. While there can be more than one Study Group associated with a single Research Study, one of those groups **must** list every single patient enrolled in the study. 

In addition to a more comprehensive Study Group, Research Studies that exist alongside row-level data should formally tied to Patients via the [ResearchSubject](https://hl7.org/fhir/researchsubject.html) resource. 
 which describes the number of participants as well as individual patients enrolled in the study if the server hosts row-level data. 

### Relevant Artifacts
* [ResearchStudy](https://hl7.org/fhir/researchstudy.html) is a base FHIR resource. It is strongly recommended that the following properties be provided:
  * A clear, meaningful title
  * One or more relevant disease or phenotype associated with the research study's focus. 
  * One or more StudyGroup resources as references in the enrollment property. 
  * Study URLs can be attached via the relatedArtifact property. 

* [ResearchConsortium](StructureDefinition-ncpi-research-consortium.html) can be used to represent studies' participation within a consortium. Using ResearchConsortium provides the ability to search for participating studies using the ResearchStudy's sponsor search parameter. 

* [StudyGroup](StructureDefinition-study-group.html) provides information about the study as the number of subjects (quantity) as well as an explicit listing of the Patients as references in the group's member property when the Study resource is present in a server with row-level data. The can be more than one StudyGroup associated with a given Study. 

* [ResearchSubject](https://hl7.org/fhir/researchsubject.html) provides the linkage between a Patient and a ResearchStudy. 

### TBD 
The following issues require refinement:
* DbGAP identifiers. Currently, we have used identifiers to capture this, but this may be better suited as part of the relatedArtificat
* Does any of the suggested properties warrant being required? Does this need to become a profile?