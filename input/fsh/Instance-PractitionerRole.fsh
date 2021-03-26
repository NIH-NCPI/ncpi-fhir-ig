/** 
 All instances of Practitioner Role profile should go in this file.
 */

Instance: practitioner-role-example-1
InstanceOf: PractitionerRole
Usage: #example
Description: "Example of the representation of Practitioner Role."
* active = true
* practitioner = Reference(practitioner-example-1)
* organization = Reference(organization-example-1)
* code = $practitioner-role#researcher "Researcher"
* code.text = "Principal Investigator"
* telecom.system = #phone
* telecom.value = "(555) 555-5555"
* telecom.use = #work
* telecom.rank = 1
