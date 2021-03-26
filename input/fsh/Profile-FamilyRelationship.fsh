Profile: FamilyRelationship
Parent: Observation
Id: family-relationship
Title: "NCPI Family Relationship"
Description: "Representation of a family relationship."
* ^version = "0.1.0"
* ^status = #draft
* code = $v3-RoleCode#FAMMEMB "family member"
* code.text = "Family Relationship"
* value[x] only CodeableConcept
* valueCodeableConcept from $v3-FamilyMember (extensible)
