### Key Guidelines
The **Study Variable Summary** profile is based on the standard [FHIR Observation](https://hl7.org/fhir/observation.html) and is intended to provide summary information for a single variable for either the entire research study, or one of its subgroups. The resource's *code* must be set to an appropriate code describing that it's a summary. The value[x] is set to an appropriate code either from the one of the Study's data-dictionary tables or a public ontology associated with an appropriate entity to be summarized such as a code from HPO or Mondo. The summary details themselves will be captured in the Observation's component property. 

#### Added Profile Restrictions
* In order to clarify the contents of the summary observation, the **code** *MUST* include the UMLs code, **C0242482**, for Summary Report. 
* To ensure uniform usability, the **subject** *MUST* only reference [NCPI Study Group](StructureDefinition-study-group.html). 
* Again to enforce uniform behavior, there *MUST* be **at least one focus** and that *MUST* be one of the [NCPI Research Study](StructureDefinition-ncpi-research-study.html) resources. 
* Because the entire purpose of the summary are the contents of the components, there *MUST* be **at least one component**. 