Profile: SpecimenTask
Parent: Task
Id: ncpi-specimen-task
Title: "Research Task"
Description: "A FHIR analysis task that takes at least one specimen as input and produces at least one document."
* ^version = "0.1.0"
* ^status = #draft
// Must have a focus that points to the Specimen
* focus 1..1
* focus only Reference(Specimen)
// Must have a populated for field
* for 1..1
* for only Reference(Patient)
// Must have a populated for field
* for 1..1
* for only Reference(Patient)
// Must have a populated owner field
* owner 1..1
* owner only Reference(Organization)

// TODO 
// // Must have at least one Specimen input
// inputs contains  Specimen MS
// // Must have at least one DocumentReference output
// outputs contains DocumentReference MS
