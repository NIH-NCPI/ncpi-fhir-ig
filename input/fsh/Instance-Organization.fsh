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
* telecom
  * system = #phone
  * value = "(555) 555-5555"
  * use = #work
  * rank = 1
* address
  * use = #work
  * type = #both
  * text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
  * line = "3401 Civic Center Blvd."
  * city = "Philadelphia"
  * state = "PA"
  * postalCode = "19104"
