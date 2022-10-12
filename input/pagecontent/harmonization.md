#### Harmonization

Data harmonization is one of the fundamental objectives when it comes to loading these data into FHIR and a key aspect of that is the use of common vocabularies across all datasets when possible. FHIR provides the resource type, ConceptMap, to provide maps from one CodeSystem to another. 

For the purposes of representing the data-dictionary in FHIR, the concept map can help document the transformations that took place during the ingestion process. Column X from table Y is mapped to Coding Z from Ontology A. By providing a complete mapping of all public terms that were identified during loading, we get the advantage of: 

1. quickly providing details to researchers to understand a bit more about what the original data looked like
2. provide a baseline for those able to improve the mappings over time

For the [example](ConceptMap-example-study-dd-conceptmap-1.html), a simple dataset contains 5 variables, subjectid, gender, age_at_enrollment, bmi and status all of which are mapped to UMLS terms. For BMI, there is an additional mapping to a LOINC term. Finally, the status variable is mapped to 1 entry from Human Phenotype Ontology term and 2 Mondo terms. 