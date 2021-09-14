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
* component[+]
  * code = $tbd-codes#mode-of-inheritance "mode-of-inheritance"
  * valueCodeableConcept = $condition-interitanc-codes#HP:0000007  "Autosomal recessive inheritance"
* component[+]
  * code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
  * valueCodeableConcept = $loinc#LA6682-4 "Unknown Significance"