As mentioned in the section, "Added Profile Restrictions" above, each NCPI Research must have one NCPI [Study Group](StructureDefinition-study-group.html) which must, at the very least, indicate the total number of patients enrolled at the time the data was loaded into FHIR. 

### Practices for Summary Only Resources
For Studies loaded into Summary Only FHIR servers, the Study's Study Group resources **must** have the quantity. This promotes findability by enabling researches without current access to the study's row-level data to get basic study details including the different subject counts. 

For studies that exist alongside row-level data, the Study's Study Group resources **should** have each corresponding Patient referenced in the Group's members array. 