#### Disease Designation
Patients identified as affected or unaffected for a given disease will have a condition object linked to their patient record containing one or more Coding entries assigned to Condition.code. Condition.code.text will contain the textual description of the disease. The first Coding object present must be one of the [disease codes](ValueSet-disease-codes.html)

#### Affected Status
Affection status is mapped to the standard parameter, Condition.verificationStatus using the corresponding [hl7 codes](http://terminology.hl7.org/CodeSystem/condition-ver-status). 

| Status            | Verification Status |
| ----------------- | ------------------- |
| Affected          | Confirmed           |
| Unaffected        | Refuted             |
| Possibly Affected | Provisional         |

#### recordedDate vs onset
Depending on the data available, data may be tagged with a date in either Condition.recordedDate or Condition.onset using the extension [relativeDateTime](http://hl7.org/fhir/R4/extension-cqf-relativedatetime.html) where recordedDate is presumably the earliest date at which this disease was noted in the patient's record. Onset would be specified only when the actual onset was established and recorded as such. The relative date targets the patient's birth date. 

