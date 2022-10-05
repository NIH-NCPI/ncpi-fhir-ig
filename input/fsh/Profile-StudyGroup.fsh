Profile: StudyGroup
Parent: Group
Id: study-group
Title: "NCPI Study Group"
Description: "Groups describing membership within a research study."
* ^version = "0.0.1"
* ^status = #draft
* code = $sct#44807982 "Participant in research study"
* quantity 1..1
* actual = true
* type = #person
* member.entity only Reference(Patient)
