Profile: ResearchConsortium
Parent: Organization
Id: ncpi-research-consortium
Title: "Research Consortium"
Description: "A FHIR Organization representing a single consortium of which one or more NCPI Research Studies is a member."
* ^version = "0.1.0"
* ^status = #draft
* name ^short = "The Organization's full name."
* name 1..1 
* alias ^short = "(Strongly Recommended) all altername names and acronyms used for the consortium"
* telecom ^short = "(Strongly Recommended) Consortium's website as where the ContactPoint.system is 'url'"
