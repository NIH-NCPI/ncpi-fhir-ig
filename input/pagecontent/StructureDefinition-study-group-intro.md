
### Key Guidelines
While there can be more than one StudyGroup per study, there **must** be one group representing the entire study enrollment. Patients can be members of more than one StudyGroup.

#### Added Profile Restrictions
In order to ensure consistency across all NCPI research studies represented in FHIR, there are some additional requirements that are to be enforced: 

* The StudyGroup resource **must** be of type *person*.
* The StudyGroup resource **must** be *actual*.
* The StudyGroup resource **must** have a quantity. 
* The StudyGroup **must** include the NCIT Code, C142710 as one of it's [Codings](FHIR_Basics.html#coding). 
* When enumerating membership, the StudyGroup resource **must** have only Patients as members. 

A StudyGroup should exist alongside any row level data, but these resources can also exist outside a restricted FHIR server to provide access to non-row level information.

At the very least, the Study Group should provide the count of subjects it represents. 
