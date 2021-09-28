/**
 * For Consortium specific summaries, we could point the focus to the 
 * consortium research study
 */
Instance: anvil-summary-cmg
InstanceOf: Observation
Title: "Summary detail for Center for Mendelian Genomics"
Description: "Summary detail for Center for Mendelian Genomics"
* status = #final
* code.coding = $ncpi#Summary "Variable Summary"
* focus = Reference(research-study-cmg)
* component
  * code = #CohortCount "Number of Cohorts"
  * valueInteger = 41
* component[+]
  * code = $ncpi#SampleCount "Number of Samples"
  * valueInteger = 807
* component[+]
  * code = $ncpi#Participant "Number of Participants"
  * valueInteger = 807
* component[+]
  * code = #StorageSize "Size on Disk"
  * valueQuantity = 4.87 $ucum#TR

/**
  *  * value = 4.87
  *  * code = TR
  *  * system = $ucum 
  *  * unit = ppb
*/

/**
 * Each of the substudies would have their own summary observation
 */
Instance: anvil-summary-phs000711
InstanceOf: Observation
Title: "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
Description: "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
* status = #final
* code.coding = $ncpi#Summary "Variable Summary"
* focus = Reference(research-study-phs000711)
/**
 * No access to row level data, so no point in providing a subject
 * However, that could point to a group with all participants in the relevant group being summarized
 */
* component
  * code = $ncpi#SampleCount "Number of Samples"
  * valueInteger = 807
* component[+]
  * code = $ncpi#Participant "Number of Participants"
  * valueInteger = 807
* component[+]
  * code = #ConsentCodes "Consent Codes"
  * valueString = "HMB-IRB-NPU"
* component[+]
  * code = #TerraWorkspace "Terra Workspace Name"
  * valueString = "AnVIL_CMG_BaylorHopkins_HMB-NPU_WES"
* component[+]
  * code = #PrimaryDisease "Primary Disease"
  * valueString = "Mendelian" /* A code may be better for this?*/
* component[+]
  * code = #AccessType "Access Type"
  * valueString = "Controlled Access"
* component[+]
  * code = #StudyDesign 
  * valueString = "Mendelian"
* component[+]
  * code = #DataType
  * valueString = #Exome
* component[+]
  * code = #StorageSize "Size on Disk"
  * valueQuantity = 4.87 $ucum#TR
