/**
 * Example instances for NCPI Research Study
 * 
 * For this example set, we'll create the following artifacts:
 * 	* Example ResearchStudy		- An example of a single study
	* Example of ResearchGroup 	- 1 ResearchGroup for all members of the study
	* Examples for ResearchSubjects
	* Examples of Patients
 */

/**
  * The Research Study 
  */
Instance: ncpi-research-study-01
InstanceOf: ResearchStudy
Usage: #example
Description: "An example research study"
* title = "Example research study"
* status = #completed
* primaryPurposeType = #diagnostic
* category 
  * coding 
    * system = $ncpi
    * code = #StudyCohort 
    * display = "Study Cohort"
* enrollment = Reference(ncpi-research-study-01-group-01-main)

Instance: ncpi-research-study-01-group-01-main
InstanceOf: StudyGroup
Usage: #example
Description: "Study 01's complete enrollment"
* name = "Study 01's participants"
* quantity = 2
* actual = true
* type = #person
* member[0].entity = Reference(ncpi-research-study-01-patient-01)
* member[+].entity = Reference(ncpi-research-study-01-patient-02)

Instance: ncpi-research-study-01-patient-01
InstanceOf: Patient
Usage: #example
Description: "Example of a patient from study 01"
* extension[0].url = $us-core-race
* extension[0].extension[0].url = "ombCategory"
* extension[0].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[0].extension[1].url = "text"
* extension[0].extension[1].valueString = "White"
* extension[1].url = $us-core-ethnicity
* extension[1].extension[0].url = "ombCategory"
* extension[1].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[1].extension[1].url = "text"
* extension[1].extension[1].valueString = "Hispanic or Latino"
* gender = #female

Instance: ncpi-research-study-01-patient-02
InstanceOf: Patient
Usage: #example
Description: "Example of a patient from study 02"
* extension[0].url = $us-core-race
* extension[0].extension[0].url = "ombCategory"
* extension[0].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[0].extension[1].url = "text"
* extension[0].extension[1].valueString = "White"
* extension[1].url = $us-core-ethnicity
* extension[1].extension[0].url = "ombCategory"
* extension[1].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[1].extension[1].url = "text"
* extension[1].extension[1].valueString = "Not Hispanic or Latino"
* gender = #male

Instance: research-subject-study-01-patient-01
InstanceOf: ResearchSubject
Usage: #example
Description: "Example representation of a research subject"
* status = #on-study
* study = Reference(ncpi-research-study-01)
* individual = Reference(ncpi-research-study-01-patient-01)

Instance: research-subject-study-01-patient-02
InstanceOf: ResearchSubject
Usage: #example
Description: "Example representation of a research subject"
* status = #on-study
* study = Reference(ncpi-research-study-01)
* individual = Reference(ncpi-research-study-01-patient-02)
