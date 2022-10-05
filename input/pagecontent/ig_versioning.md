#### IG Version Conventions
Resource versions should be versioned according to the Semantic version scheme which uses a common three part format: Major.minor.patch. 

##### Major Loosely Follows FHIRs Standard Level
Rather than an infinitely incrementable Major version, NCPI FHIR profile Major versions should track to a clearly defined level that tracks similarly to FHIR's own Standard Levels: 

|Major Version|Name|Description|
|0|Draft|Profiles at this level are suggestions that should be discussed by the FHIR Working Group and refined as needed|
|1|Trial Use|Once FHIR WG agrees to move foward with the design, the profiles are upgraded to Trial Use and can be used in live FHIR implementations. This period of use is helpful for identifying strengths and weaknesses for futher refinement. |
|2|Normative|FHIR WG will eventually agree that the profiles are feature complete with regard to known use cases and should be stable going forward. At this point, changes are believed to largely be non-breaking changes. |

##### Minor Indicates Feature Changes
Increments at this level should be triggered by additions of significant enhancement or added restrictions.

##### Patch Indicates Basic Refinement
Basic refinements would be non-breaking changes, typically in response to feedback and use in real-world scenarios. 
