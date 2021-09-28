/** 
 All instances of Research Study profile should go in this file.
 */

Instance: research-study-example-1
InstanceOf: ResearchStudy
Usage: #example
Description: "Example of the representation of Research Study."
* title = "NCPI Research Study Example 1"
* status = #completed
* principalInvestigator = Reference(practitioner-role-example-1)


/**
 * The overall cohort
 */
Instance: research-study-cmg
InstanceOf: ResearchStudy
Usage: #example
Description: "Center for Mendelian Genomics"
* title = "Center for Mendelian Genomics"
* status = #completed 
* primaryPurposeType = #diagnostic 
* category 
  * coding 
    * system = $ncpi
    * code = #Consortium 
    * display = "Study Consortium"
* condition
  * text = "Mendelian"

Instance: research-study-phs000711
InstanceOf: ResearchStudy
Usage: #example
Description: "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
* title = "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"
* status = #completed 
* primaryPurposeType = #diagnostic 
* partOf = Reference(research-study-cmg)
* category 
  * coding 
    * system = $ncpi
    * code = #StudyCohort 
    * display = "Study Cohort"
* condition
  * text = "Mendelian"