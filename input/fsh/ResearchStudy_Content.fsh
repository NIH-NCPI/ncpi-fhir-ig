Extension: ResearchStudy_Content
Id: ResearchStudy-Content
Title: "Associated content counts"
Description: "Counts of different type of content that is part of this study"
* ^url = "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition/ResearchStudy-Content"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2021-09-01T02:55:01.084-04:00"
* ^meta.source = "#hMjajWXGqrqolqTP"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . ^short = "Associated content counts"
* . ^definition = "Counts of different type of content that is part of this study"
* extension contains
    ResearchStudy_Content_NumAnalyses named NumAnalyses 1..1 and
    ResearchStudy_Content_NumDocuments named NumDocuments 1..1 and
    ResearchStudy_Content_NumMolecularDatasets named NumMolecularDatasets 1..1 and
    ResearchStudy_Content_NumPhenotypeDatasets named NumPhenotypeDatasets 1..1 and
    ResearchStudy_Content_NumSamples named NumSamples 1..1 and
    ResearchStudy_Content_NumSubStudies named NumSubStudies 1..1 and
    ResearchStudy_Content_NumSubjects named NumSubjects 1..1 and
    ResearchStudy_Content_NumVariables named NumVariables 1..1