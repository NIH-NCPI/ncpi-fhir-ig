/** 
 All instances of Organization profile should go in this file.
 */

Instance: organization-example-1
InstanceOf: Organization
Usage: #example
Description: "Example of the representation of Organization."
* active = true
* type = $organization-type#prov "Healthcare Provider"
* type.text = "Hospital"
* name = "Amazing Children's Hospital"
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
