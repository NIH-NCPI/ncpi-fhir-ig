### Notice

This is a pre-release version of the NIH Cloud Platform Interoperability Effort (NCPI) FHIR Implementation Guide (referred to as the **NCPI FHIR IG**). The NCPI FHIR IG is in initial stages of active development and is expected to be updated frequently. In future releases, some features may be removed and/or deprecated without backwards compatibility. 

### Overview

Data sharing is key to reproducible science. However, if the data cannot be shared in a robust, low cost manner can we effectively claim to enable reproducible science? Enter the [NIH Cloud Platform Interoperability Effort (NCPI)](ncpi.html).

The aim of this effort is to produce a shared view of research structure and semantics to accelerate the scientific process and reduce impediments needed to share knowledge among researchers. FHIR has the ability to uniformly represent structure and semantics and make the data available and searchable.

This is a marked improvement over the status quo where data consumers need to contact the authors and implement an ad hoc process for access and consumption.

### Organization of this IG

This IG is organized in three components:
- Profiles and Extensions
- Modules
- Use Cases

These components are intended to work together to more clearly describe the building blocks, how they interact, and how a user can leverage them. Not all NCPI platforms, studies, tools, or users will need or implement all of these building blocks, and different services may support different portions of this IG.

#### Profiles and Extensions

These are the raw building blocks implemented in FHIR that dictate how to construct resources to be compliant with this Implementation Guide. These elements detail the specific sematics expected to meet a common need in NCPI and are critical for technical implementation and validation. 

#### Modules

The modules represent the "generic circumstances" that an implementer may consider when building content leveraging this IG. They are intended to provide a mental model that enables discussion of several of the above elements at once in order to make more clear why the IG is constructed this way. 

#### Use Cases

Use cases are real-world, data-consumer-centric situations that describe what elements are required to be implemented and how an end-user can use those tools to solve their problem. These use cases are not exhaustive, but are intended to describe a breadth of scenarios that may help one implement or use the NCPI data.


### High-level Picture

Our Implementation Guide defines the structure of a study using the following Resource Types (Entities).  Your project will contain instances of these resource types, tagged with your identifiers and described by a defined vocabulary of CodableConcepts. 

<img width="100%" src="research-study-structure.png" alt="research-study-structure" />