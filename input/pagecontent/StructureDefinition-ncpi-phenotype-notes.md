#### Observation.code
The code property is described as "the type of observation" by HL7, and as such, we have stipulated that the code must originate from the [Human Phenotype Ontology](http://www.human-phenotype-ontology.org). For cases where there is no ideal HPO code to suit a researcher's needs, users can use a more general HPO code as the first entry in the code array and one or more codes from other systems which are more technically accurate. 

#### Observation.valueCodeableConcept
In order to annotate a phenotype's presence or absence, the NCPI Phenotype employes 2 codes from SNOMED CT: 

373573001 (clinical finding present) is used to indicate that the phenotype being observed was present. 

373572006 (clinical finding absent) is used to indicate that the phenotype being observed was absent. 

It is strongly recommended that those submitting phenotype data using the NCPI Phenotype profile use the property, Observation.code.text, to properly indicate Presence or Absence using those terms. 

#### Observation.interpretation
Interpretation is used to reinstate the presence or absence of a given phenotype, using a restricted list of codes from the HL7 Observation Interpretation code system: 

POS (positive) is used to indicate the phenotype being observed is present.

NEG (negative) is used to indicate the phenotype being observed is absent. 

It is strongly recommended that the those submitting Phenotype data using the NCPI Phenotype profile use the property, Observation.interpretation.text to properly indicate Presence or Absence using those terms. 