/** 
 All instances of Practitioner profile should go in this file.
 */

Instance: practitioner-example-1
InstanceOf: Practitioner
Usage: #example
Description: "Example of the representation of Practitioner."
* active = true
* name.use = #official
* name.text = "Jane Samantha Smith"
* name.family = "Smith"
* name.given[0] = "Jane"
* name.given[1] = "Samantha"
* telecom.system = #phone
* telecom.value = "(555) 555-5555"
* telecom.use = #work
* telecom.rank = 1
* address.use = #work
* address.type = #both
* address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* address.line = "3401 Civic Center Blvd."
* address.city = "Philadelphia"
* address.state = "PA"
* address.postalCode = "19104"
* gender = #female 
