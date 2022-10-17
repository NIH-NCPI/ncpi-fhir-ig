### Finding a Research Study with data of interest
In order for researchers to get access to the data that suits their research objectives, they must first know which data is out there. The NCPI Profiles are designed to make this task much easier when those responsible for loading research data into FHIR follow the recommended approaches. 

#### Study Metadata on Unrestricted Servers
By hosting studies' well formed metadata on a FHIR server with no access restrictions in place, researchers will be able to identify research studies of interest with minimal effort. 

Resource that can be hosted on unrestricted servers, even for restricted data include: 
* [NCPI Research Study](StructureDefinition-ncpi-research-study.html)
* [NCPI Study Group](StructureDefinition-study-group.html)
* [NCPI Study DD Table](StructureDefinition-study-dd-table.html)
* [NCPI Stuidy DD Variable](StructureDefinition-study-dd-variable.html)
* Various Study specific CodeSystems and ValueSets required to support any of the resources listed above

#### NCPI Research Study Condition
Linking the study's condition to appropriate terms from a public ontology, such as Human Phenotype Ontology, MONDO allows simple queries to return all studies known to contain data about the disease of interest. 

#### NCPI Study Group Count
Providing an accurate *quantity* allows for researchers to know the size of studies that may suit their needs. 

#### NCPI Study DD Table
The study table collects those variables together in the manner of traditional data-dictionary file. This provides a list of references to the StudyDdVariables, each of which provides a comprehensive description of what should be found inside the *table*.

#### NCPI Study DD Variable
The study variable provides the means to describe each variable as completely as the resource production team can provide. 

#### NCPI Study Summary
The Study Summary provides summary details about the study across a single population, either the entire study or one of its subpopulations. These summary details are not about specific data inside the study's row data, but about the study itself such number of cohorts, total number of subjects, etc.

This information can be used by the client to understand that types of consents are required for access, the numbers of different cohorts that have participated in the study, the types of data that has been collected, etc. 

#### NCPI Study Variable Summary
The Study Variable Summary provides summary details about a single variable across a single population within the study, either the entire study population or one of its subpopulations. These can provide a comprehensive description of the study across every data point as well as demographic and disease specific counts. 

When properly harmonized to public ontologies, these summaries can be used by the client to identify datasets that contain the very data needed to facilitate a researcher's particular interest in order to make the decision to apply for access when the particular study is restricted. 