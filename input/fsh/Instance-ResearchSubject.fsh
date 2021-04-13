/** 
 All instances of Research Subject profile should go in this file.
 */

Instance: research-subject-example-1
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-example-1)
* individual = Reference(patient-example-1)

Instance: research-subject-example-2
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-example-1)
* individual = Reference(patient-example-2)

Instance: research-subject-example-3
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-example-1)
* individual = Reference(patient-example-3)
