Profile: Phenotype
Parent: Condition
Id: phenotype
Title: "NCPI Phenotype"
Description: "Representation of phenotypic observations (present or absent)"
* ^version = "0.1.0"
* ^status = #draft
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #openAtEnd
* code.coding ^slicing.ordered = true
* code.coding ^slicing.description = "Slice to require at least the one code from the phenotype-code value-set"
* code.coding contains 
    pheno-code 1..*
* code.coding[pheno-code].code from phenotype-codes (required) 
