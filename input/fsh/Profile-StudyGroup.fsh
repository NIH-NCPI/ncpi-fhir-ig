Profile: StudyGroup
Parent: Group
Id: study-group
Title: "NCPI Study Group"
Description: "Grouping subject participation within a research study is helpful to provide definitive lists of participants that fit a specific criteria such as *All Participants* or *Participants From a Particular Consent Group*, etc. "
* ^version = "0.0.1"
* ^status = #draft
* code = $sct#44807982 "Participant in research study"
* quantity 1..1
* actual = true
* type = #person
* member.entity only Reference(Patient)
