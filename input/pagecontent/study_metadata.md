### Overview
The data-dictionary acts as the key to the dataset itself. Traditionally, this file is delivered alongside the data itself as flat files that contain column names, descriptions along with other details to help the individuals doing analysis to understand how they are expected to use the data. FHIR provides descriptive resource types that can be used for the purposes of describing the variables that are found within a given dataset even more completely than many data-dictionaries themselves.

<img width="100%" src="ncpi-dd.png" alt="DD Resource Overview" />

There should be no identifiable data contained within the data-dictionary resources and as such, these should be well suited to be hosted on an unrestricted server even if the dataset itself is restricted. However, even if there is a public server hosting a given study's metadata, it still may be advisable to provide the metadata alongside the data itself for the convenience of those using the data, especially if the data itself has not been fully transformed into an interoperable form.

### Conventions
#### Coding Conventions
[CodeSystems](https://hl7.org/fhir/R4/codesystem.html) should be defined for each dataset enumerating the following: 
* A Single CodeSystem whose codes represent each of the *tables* that make up the dataset.
* A CodeSystem for each table whose codes represent each variable contained within the respective table
* A CodeSystem enumerating each distinct variable in a variable whose type is that of a list of values. 

Together, these CodeSystems provide a highly specific vocabulary with terms that can be dropped into any appropriate Coding in the various transformed resources to provide linkage between the transformed data and the original source of the data.

#### Tables and Variables
For each variable contained within the dataset, a [Study DD Variable](StructureDefinition-study-dd-variable.html) should be defined describing in as great of detail as possible. At a minimum, there should be the data type (permittedDataType), the variable's entry from the table's CodeSystem (code) and a corresponding reference to a ValueSet (validCodedValueSet) when the variable represents an enumerated data type. Additional details are helpful but are data type specific such as the units associated with a Quantity data type, numeric type limits, etc. 

The table itself is a simple container where each of the table's variables are referenced in the *observationResultRequirement* property. It too should have the appropriate vocabulary referenced from the dataset's code system for it's *topic*. 

### Relevant Artifacts
#### Dataset Specific CodeSystem
Codes are a fundamental mechanic for relating things across different resources. To that end, there should be CodeSystems to represent the dataset, its tables and the variables' enumerations. 

#### Dataset Specific Codes for tables
A single [CodeSystem](https://hl7.org/fhir/R4/codesystem.html) should be defined containing a code for each of the tables that make up the dataset. 

#### Variable Specific Codes 
Each table itself will be represented as its own CodeSystem where each variable represented in FHIR will have a corresponding code. 

#### Study DD Data Table
Based on the FHIR ResourceType, [ActivityDefinition](https://hl7.org/fhir/R4/activitydefinition.html), The [data table](StructureDefinition-study-dd-table.html) represents a single table within the dataset and contains references to the individual data variable details. 

Some key parameters that can help identify the table and provide context and necessary clarity on the table's purpose would be: 
* name
* title
* description

One of the **code.coding** properties should point to the table's Code from with the dataset's Table CodeSystem. 

Individual variable definitions will be attached as references within the **observationResultRequirement** property.

#### Study DD Data Variable
Data variables describe a single column within the data table. The descriptive components used will depend on the type of data represented in the variable itself and maybe be very simple (basic string data), or moderately complex, depending on the data that is known about the variable itself. 

##### Coding Identity
To associate a given variable to it's specific entry in a data-table, one of its **code.coding** properties should point to the corresponding variable from the table's CodeSystem. This same code can be used throughout resources that are produced as a result the data from this variable. 

##### Data Types
One fundamental aspect of a good data dictionary is a comprehensive description of the data that can be expected to be found within each individual variable. This can be defined using proper codes for the **permittedDataType** and relevant secondary properties. 

###### Basic Values
Strings, boolean values and integer all represent very simple data types that can be expressed, possibly with no additional details, though, in some cases, additional details may also be permitted (such as a min/max range for an integer value, or possible a ValueSet containing the codes that can be found for special cases). 

###### Ranges
For Quantity, Integer and any other type that can be bound within a range, this should be specified using **qualifiedInterval[x].range** (or age/genestationalAge should those be more appropriate). 

###### Units 
For quantities and any other data type that needs to be accompanied with a unit, this should be specified using **quantitativeDetails.unit**. 

###### Variable Enumerations
When specifying that a variable should consist of a value from a list of possible values, a reference to a ValueSet containing all possible values should be given for the property, **validCodedValueSet**.


