// We'll use the Baylor Hopkins CMG DbGAP resources to build this example 
// which will conform to the current NCPI Research Study model. 
//
// https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000711.v7.p2
// 
// This particular study has sufficient complexity to show the most 
// important aspects of the current model's design without being too cumbersome
// to fully represent. 

// The Consortium resource provides a single point of reference to link 
// together research studies that exist under the single umbrella. 
Instance: cmg-research-consortium
InstanceOf: ResearchConsortium
Title: "The Center for Mendelian Genomics Consortium (CMG) Consortium"
Usage: #example
Description: "The Center for Mendelian Genomics Consortium."
* name = "Center for Mendelian Genomics Consortium"
* alias[0] = "CMG"
* telecom 
  * system = #url
  * value = "http://mendelian.org/"

Instance: cmg-research-study-bhcmg
InstanceOf: NcpiResearchStudy
Title: "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
Usage: #example
Description: "The Centers for Mendelian Genomics project uses next-generation sequencing and computational approaches to discover the genes and variants that underlie Mendelian conditions. By discovering genes that cause Mendelian conditions, we will expand our understanding of their biology to facilitate diagnosis and new treatments."
// Notice that we can use the DbGaP study ID for easier searching
* identifier[0]
  * system = "http://mendelian.org/fhir"
  * value = "BH-CMG"
* identifier[1]
  * system = "https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id="
  * value = "phs000711"
* title = "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
* description = "The Centers for Mendelian Genomics project uses next-generation sequencing and computational approaches to discover the genes and variants that underlie Mendelian conditions. By discovering genes that cause Mendelian conditions, we will expand our understanding of their biology to facilitate diagnosis and new treatments."
* status = #completed
* sponsor = Reference(cmg-research-consortium)
* category 
  * coding 
    * system = $ncpi
    * code = #StudyCohort 
    * display = "Study Cohort"
* focus[+] = $mondo#MONDO:0016054 "cerebral malformation"
* focus[+].coding[0] = $hpo#HP:0030853 "Heterotaxy"
* focus[=].coding[1] = $mesh#D059446 "Heterotaxy Syndrome"
* focus[+].coding[0] = $mondo#MONDO:0016033 "Cornelia de Lange syndrome"
* focus[=].coding[1] = $mesh#D003635 "De Lange Syndrome"
// This particular study doesn't have a specific 
* relatedArtifact[0]
  * type = #derived-from
  * label = "DbGaP"
  * display = "phs000711"
  * url = "https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000711"
* relatedArtifact[+]
  * type = #documentation
  * label = "Citation"
  * citation = "Gonzaga-Jauregui C, Lupski JR, Gibbs RA. Human genome sequencing in health and disease. Annu Rev Med. 2012;63:35-61. doi: 10.1146/annurev-med-051010-162644. PMID: 22248320; PMCID: PMC3656720."
  * document.url = "https://pubmed.ncbi.nlm.nih.gov/22248320/"
* relatedArtifact[+]
  * type = #documentation
  * label = "Website"
  * document.url = "https://mendeliangenomics.org/"
* enrollment = Reference(cmg-research-study-bhcmg-group)
* extension[studyDesign].valueCodeableConcept.coding[0] = $studydesign#Mendelian "Mendelian"
* extension[studyDesign].valueCodeableConcept.coding[1] = $ncpi-study-types#Mixed "Mixed"

Instance: cmg-research-study-bhcmg-group
InstanceOf: StudyGroup
Title: "BH CMG Study Participants"
Usage: #example
Description: "BH-CMG study's entire population"
* name = "BH-CMG Study Participants"
* quantity = 2445
* actual = true
* type = #person

Instance: hmb-npu-consent
InstanceOf: ResearchStudyConsent
Title: "HMB-NPU Consent"
Usage: #example
Description: "Consented with Health/Medical/Biomedical + Not for profit use"
* status = #draft
* scope = #research
* category.coding = http://terminology.hl7.org/CodeSystem/consentcategorycodes#research
* provision.type = http://hl7.org/fhir/consent-provision-type#permit
* provision.purpose[+] = $nihcc#HMB
* provision.purpose[+] = $nihcc#NPU
//* category.text = "HMB-NPU"

Instance: cmg-research-study-subject-cmg-hmb-npu
InstanceOf: ResearchStudySubject
Title: "Participants consented under HMB-NPU"
Usage: #example
Description: "CMG Consent Group, Health/Medical/Biomedical + Not for profit use"
* identifier[0]
  * system = "http://mendelian.org/fhir"
  * value = "BH-CMG-HMB-NPU"
* title = "BH-CMG HMB-NPU Consent Study Subject"
* description = "CMG Consent Group, Health/Medical/Biomedical + Not for profit use"
* status = #completed
* partOf = Reference(cmg-research-study-bhcmg)
* extension[consent].valueReference = Reference(hmb-npu-consent)
* enrollment = Reference(cmg-research-study-bhcmg-consent-group-hmb-npu)
// Do we want to link these back to the consortium?
* sponsor = Reference(cmg-research-consortium)

Instance: cmg-research-study-bhcmg-consent-group-hmb-npu
InstanceOf: StudyGroup
Title: "Participants consented under HMB-NPU"
Usage: #example
Description: "BH-CMG study's population consented under Health/Medical/Biomedical + Not for profit use"
* name = "BM-CMG Study HMB-NPU Participants"
* quantity = 1665
* actual = true
* type = #person

Instance: hmb-irb-npu-consent
InstanceOf: ResearchStudyConsent
Title: "HMB-IRB-NPU Consent"
Usage: #example
Description: "Consented with Health/Medical/Biomedical + IRB Required + Not for profit use"
* status = #draft
* scope = #research
* category.coding = http://terminology.hl7.org/CodeSystem/consentcategorycodes#research
* provision.type = http://hl7.org/fhir/consent-provision-type#permit
* provision.purpose[+] = $nihcc#HMB
* provision.purpose[+] = $nihcc#IRB
* provision.purpose[+] = $nihcc#NPU
//* category.text = "HMB-IRB-NPU"

Instance: cmg-research-study-subject-cmg-hmb-irb-npu
InstanceOf: ResearchStudySubject
Title: "Participants consented under HMB-IRB-NPU"
Usage: #example
Description: "CMG Consent Group, HMB-IRB-NPU"
* identifier[0]
  * system = "http://mendelian.org/fhir"
  * value = "BH-CMG-HMB-IRB-NPU"
* title = "BH-CMG HMB-IRB-NPU Consent Study Subject"
* status = #completed
* partOf = Reference(cmg-research-study-bhcmg)
* extension[consent].valueReference = Reference(hmb-irb-npu-consent)
* enrollment = Reference(cmg-research-study-bhcmg-group-hmb-irb-npu)

Instance: cmg-research-study-bhcmg-consent-group-hmb-irb-npu
InstanceOf: StudyGroup
Title: "Participants consented under HMB-IRB-NPU"
Usage: #example
Description: "BH-CMG study's population consented under Health/Medical/Biomedical + IRB Approval Required + Not for profit use"
* name = "BM-CMG Study HMB-IRB-NPU Participants"
* quantity = 780
* actual = true
* type = #person


