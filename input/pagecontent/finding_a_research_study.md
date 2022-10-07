### Finding a Research Study with data of interest
In order for researchers to get access to the data that suits their research objectives, they must first know which data is out there. The NCPI Profiles are designed to make this task much easier when those responsible for loading research data into FHIR follow the recommended approaches. 

#### Study Metadata on Unrestricted Servers
By hosting studies' well formed metadata on a FHIR server with no access restrictions in place, researchers will be able to identify research studies of interest with minimal effort. 

Resource that can be hosted on unrestricted servers, even for restricted data include: 
* [NCPI Research Study](StructureDefinition-ncpi-research-study.html)
* [NCPI Study Group](StructureDefinition-study-group.html)

#### NCPI Research Study Condition
Linking the study's condition to appropriate terms from a public ontology, such as Human Phenotype Ontology, MONDO allows simple queries to return all studies known to contain data about the disease of interest. 

#### NCPI Study Group Count
Providing an accurate *quantity* allows for researchers to know the size of studies that may suit their needs. 