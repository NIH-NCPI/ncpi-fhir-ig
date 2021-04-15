/**
 Instances for Genomics oriented DiagnosticImplications should go here
 */
Instance: diagnostic-implication-1
InstanceOf: Observation
Description: "Example representation of a known variant found during genetic testing"
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(variant-example-1)
* component[0].code = $tbd-codes#model-of-inheritance "Mode of Inheritance"
* component[0].valueCodeableConcept = $condition-interitanc-codes#HP:0000007  "Autosomal recessive inheritance"
* component[1].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[1].valueCodeableConcept = $loinc#LA6682-4 "Uncertain significance"