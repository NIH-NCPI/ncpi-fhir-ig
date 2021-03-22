#### Phenotype Code
The Condition.code must have one Coding from the [Human Phenotype Ontology](http://www.human-phenotype-ontology.org). For cases where there is no ideal HPO code to suit a researcher's needs, users may use a general HPO code as the first entry in the code array and one or more codes from other systems which are more technically accurate. 

##### Phenotype Present/Absent
Condition.verificationStatus is used to convey presence/absence of a given phenotype using a subset of the [Hl7 codes](http://terminology.hl7.org/CodeSystem/condition-ver-status) as follows:

| Present/Absent | Verification Status |
| -------------- | ------------------- |
| Present        | Confirmed           |
| Absent         | Refuted             |

##### recordedDate vs onset
Depending on the data available the condition may be tagged using recordedDate or onset.

Condition.recordedDate is described as "date record was first recorded" and, therefore, is expected to be the earliest date associated with the ascertainment of the diagnosis. Condition.onset is expected only for cases where there is confidence that the date is an actual onset date. Both dates should be provided as [relativeDateTime](http://hl7.org/fhir/R4/extension-cqf-relativedatetime.html) relative to the patient's birth date. 

