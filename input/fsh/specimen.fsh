Alias: SpecimenTypeCodeSystem = http://terminology.hl7.org/CodeSystem/v2-0487
Alias: SCT = http://snomed.info/sct

Instance: bs-001
InstanceOf: Specimen
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Specimen"
* identifier[0].system = "https://kf-api-dataservice.kidsfirstdrc.org/biospecimens?study_id=SD_BHJXBDQK"
* identifier[0].value = "571312"
* identifier[1].system = "urn:kids-first:unique-string"
* identifier[1].value = "Specimen|SD_BHJXBDQK|571312"
* type.coding = SpecimenTypeCodeSystem#TISS "Tissue"
* type.text = "Solid Tissue"
* subject = Reference(pt-001)
* receivedTime = "2019-06-15"
* collection.collectedDateTime = "2019-06-15"
* collection.quantity = 50.0 'uL' 
* collection.bodySite = SCT#21483005 "Structure of central nervous system"
* collection.bodySite.text = "Central Nervous System"
* collection.method = SCT#129314006 "Biopsy - action"
* collection.method.text = "Biopsy"
