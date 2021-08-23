/** 
 All instances of Patient profile should go in this file.
 */

Instance: patient-example-1
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."
* extension[0].url = $us-core-race
* extension[0].extension[0].url = "ombCategory"
* extension[0].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[0].extension[1].url = "detailed"
* extension[0].extension[1].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2113-9 "Irish"
* extension[0].extension[2].url = "text"
* extension[0].extension[2].valueString = "White"
* extension[1].url = $us-core-ethnicity
* extension[1].extension[0].url = "ombCategory"
* extension[1].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[1].extension[1].url = "detailed"
* extension[1].extension[1].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[1].extension[2].url = "text"
* extension[1].extension[2].valueString = "Hispanic or Latino"
* name.use = #official
* name.text = "Mariah Abigail Smith"
* name.family = "Smith"
* name.given[0] = "Mariah"
* name.given[1] = "Abigail"
* telecom.system = #phone
* telecom.value = "(555) 555-5555"
* telecom.use = #home
* telecom.rank = 1
* gender = #female
* birthDate = "2019-06-15"
* address.use = #home
* address.type = #both
* address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* address.line = "3401 Civic Center Blvd."
* address.city = "Philadelphia"
* address.state = "PA"
* address.postalCode = "19104"
* contact[0].relationship = $v2-0131#C "Emergency Contact"
* contact[0].relationship.text = "Parent"
* contact[0].name.use = #official
* contact[0].name.text = "Jane Samantha Smith"
* contact[0].name.family = "Smith"
* contact[0].name.given[0] = "Jane"
* contact[0].name.given[1] = "Samantha"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "(555) 555-5555"
* contact[0].telecom.use = #home
* contact[0].telecom.rank = 1
* contact[0].address.use = #home
* contact[0].address.type = #both
* contact[0].address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* contact[0].address.line = "3401 Civic Center Blvd."
* contact[0].address.city = "Philadelphia"
* contact[0].address.state = "PA"
* contact[0].address.postalCode = "19104"
* contact[0].gender = #female
* contact[1].relationship = $v2-0131#C "Emergency Contact"
* contact[1].relationship.text = "Parent"
* contact[1].name.use = #official
* contact[1].name.text = "John Samuel Smith"
* contact[1].name.family = "Smith"
* contact[1].name.given[0] = "John"
* contact[1].name.given[1] = "Samuel"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "(555) 555-5555"
* contact[1].telecom.use = #home
* contact[1].telecom.rank = 1
* contact[1].address.use = #home
* contact[1].address.type = #both
* contact[1].address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* contact[1].address.line = "3401 Civic Center Blvd."
* contact[1].address.city = "Philadelphia"
* contact[1].address.state = "PA"
* contact[1].address.postalCode = "19104"
* contact[1].gender = #male

Instance: patient-example-2
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."
* extension[+]
  * url = $us-core-race
  * extension[+]
    * url = "ombCategory"
    * valueCoding = $urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[+]
    * url = "text"
    * valueString = "White"
* extension[+]
  * url = $us-core-ethnicity
  * extension[+]
    * url = "ombCategory"
    * valueCoding = $urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
  * extension[+]
    * url = "detailed"
    * valueCoding = $urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
  * extension[+]
    * url = "text"
    * valueString = "Hispanic or Latino"
* name.use = #official
* name.text = "Jane Samantha Smith"
* name.family = "Smith"
* name.given[0] = "Jane"
* name.given[1] = "Samantha"
* telecom.system = #phone
* telecom.value = "(555) 555-5555"
* telecom.use = #home
* telecom.rank = 1
* gender = #female
* address.use = #home
* address.type = #both
* address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* address.line = "3401 Civic Center Blvd."
* address.city = "Philadelphia"
* address.state = "PA"
* address.postalCode = "19104"
* contact.relationship = $v2-0131#C "Emergency Contact"
* contact.relationship.text = "Spouse"
* contact.name.use = #official
* contact.name.text = "John Samuel Smith"
* contact.name.family = "Smith"
* contact.name.given[0] = "John"
* contact.name.given[1] = "Samuel"
* contact.telecom.system = #phone
* contact.telecom.value = "(555) 555-5555"
* contact.telecom.use = #home
* contact.telecom.rank = 1
* contact.address.use = #home
* contact.address.type = #both
* contact.address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* contact.address.line = "3401 Civic Center Blvd."
* contact.address.city = "Philadelphia"
* contact.address.state = "PA"
* contact.address.postalCode = "19104"
* contact.gender = #male

Instance: patient-example-3
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."
* extension[0].url = $us-core-race
* extension[0].extension[0].url = "ombCategory"
* extension[0].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[0].extension[1].url = "detailed"
* extension[0].extension[1].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2113-9 "Irish"
* extension[0].extension[2].url = "text"
* extension[0].extension[2].valueString = "White"
* extension[1].url = $us-core-ethnicity
* extension[1].extension[0].url = "ombCategory"
* extension[1].extension[0].valueCoding = $urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[1].extension[1].url = "text"
* extension[1].extension[1].valueString = "Not Hispanic or Latino"
* name.use = #official
* name.text = "John Samuel Smith"
* name.family = "Smith"
* name.given[0] = "Jone"
* name.given[1] = "Samuel"
* telecom.system = #phone
* telecom.value = "(555) 555-5555"
* telecom.use = #home
* telecom.rank = 1
* gender = #male
* address.use = #home
* address.type = #both
* address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* address.line = "3401 Civic Center Blvd."
* address.city = "Philadelphia"
* address.state = "PA"
* address.postalCode = "19104"
* contact.relationship = $v2-0131#C "Emergency Contact"
* contact.relationship.text = "Spouse"
* contact.name.use = #official
* contact.name.text = "Jane Samantha Smith"
* contact.name.family = "Smith"
* contact.name.given[0] = "Jane"
* contact.name.given[1] = "Samantha"
* contact.telecom.system = #phone
* contact.telecom.value = "(555) 555-5555"
* contact.telecom.use = #home
* contact.telecom.rank = 1
* contact.address.use = #home
* contact.address.type = #both
* contact.address.text = "3401 Civic Center Blvd., Philadelphia, PA 19104"
* contact.address.line = "3401 Civic Center Blvd."
* contact.address.city = "Philadelphia"
* contact.address.state = "PA"
* contact.address.postalCode = "19104"
* contact.gender = #female
