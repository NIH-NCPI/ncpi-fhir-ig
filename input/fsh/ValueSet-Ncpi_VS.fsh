/**
 * Just realize the values into value sets
 */
ValueSet: Ncpi_VS
Id: ncpi-vs
Title: "NCPI FHIR Codes"
Description: "Codes that would apply to NCPI projects"
* ^status = #draft
* include codes from system $ncpi
* include codes from system $ncpi_datatypes
