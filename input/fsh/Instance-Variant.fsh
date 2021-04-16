Instance: variant-example-1
InstanceOf: Observation
Description: "Example of a fhir representation of a variant"
Usage: #example
* status = #final
* category[0] = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(specimen-example-1)
* specimen.display = "Specimen"
* component[0].code = $loinc#48018-6 "Gene studied ID"
* component[0].valueCodeableConcept = $gene#LBR "HGNC:6518"
* component[1].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[1].valueCodeableConcept = $loinc-answer-codes#LA21254-0 "Chr1"
* component[1].valueCodeableConcept.text = "Chr1"
* component[2].code = $tbd-codes#exact-start-end "Variant exact start and end"
* component[2].valueRange.low.value = 225592153
* component[3].code = $loinc#69547-8 "Genomic ref allele [ID]"
* component[3].valueString = "T"
* component[4].code = $loinc#69551-0 "Genomic alt allele [ID]"
* component[4].valueString = "C"
* component[5].code = $loinc#53034-5 "Allelic state"
* component[5].valueCodeableConcept = $loinc#LA6706-1 "Heterozygous"
* component[5].valueCodeableConcept.text = "Heterozygous"
* component[6].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[6].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[6].valueCodeableConcept.text = "GRCh37"
* component[7].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[7].valueCodeableConcept = $refseq#NM_002296.3 "NM_002296.3"
* component[8].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[8].valueCodeableConcept = $varnomen#c.1640A>G "c.1640A>G"
