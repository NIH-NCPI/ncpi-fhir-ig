Grouping subject participation within a research study is helpful to provide definitive lists of participants that fit a specific criteria such as "All Participants" or "Participants From a Particular Consent Group", etc. 

While there can be more than one StudyGroup per study, there **must** be one group representing the entire study enrollment. Patients can be members of more than one StudyGroup.

### Added Profile Restrictions
In order to ensure consistency across all NCPI research studies represented in FHIR, there are some additional requirements that are to be enforced: 

* The StudyGroup resource **must** be of type *person*.
* The StudyGroup resource **must** be *actual*.
* The StudyGroup resource **must** have a quantity. 
* The StudyGroup **must** include SNOMED#44807982 as one of it's [Codings](FHIR_Basics.html#coding). 
* When enumerating membership, the StudyGroup resource **must** have only Patients as members. 

A StudyGroup should exist alongside any row level data, but these resources can also exist outside a restricted FHIR server to provide access to non-row level information, such as the number of individuals that can be found in a given study. 

