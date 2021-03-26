/** 
 All instances of Family Relationship profile should go in this file.
 */

Instance: family-relationship-example-1
InstanceOf: FamilyRelationship
Usage: #example
Description: "Example of the representation of Family Relationship."
* status = #final
* subject = Reference(patient-example-1)
* focus = Reference(patient-example-2)
* valueCodeableConcept = $v3-RoleCode#CHILD "child"
* valueCodeableConcept.text = "Child"

Instance: family-relationship-example-2
InstanceOf: FamilyRelationship
Usage: #example
Description: "Example of the representation of Family Relationship."
* status = #final
* subject = Reference(patient-example-1)
* focus = Reference(patient-example-3)
* valueCodeableConcept = $v3-RoleCode#CHILD "child"
* valueCodeableConcept.text = "Child"

Instance: family-relationship-example-3
InstanceOf: FamilyRelationship
Usage: #example
Description: "Example of the representation of Family Relationship."
* status = #final
* subject = Reference(patient-example-2)
* focus = Reference(patient-example-1)
* valueCodeableConcept.coding[0] = $v3-RoleCode#PRN "parent"
* valueCodeableConcept.coding[1] = $v3-RoleCode#MTH "mother"
* valueCodeableConcept.text = "Mother"

Instance: family-relationship-example-4
InstanceOf: FamilyRelationship
Usage: #example
Description: "Example of the representation of Family Relationship."
* status = #final
* subject = Reference(patient-example-3)
* focus = Reference(patient-example-1)
* valueCodeableConcept.coding[0] = $v3-RoleCode#PRN "parent"
* valueCodeableConcept.coding[1] = $v3-RoleCode#FTH "father"
* valueCodeableConcept.text = "Father"
