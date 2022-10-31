While one of the primary goals of using FHIR to represent Research Study Data is interoperability, there are a number of reasons to capture the raw data in a form that is accessible through similar means despite its lack of interoperable features. These include:

* Traceability
* Survey Data
* (???)
* Support for Untransformed Data

#### Traceability
By providing data as close to its original form as possible alongside the transformed data, researchers can more easily trace the origins of those transformations to better understand the data they are going to use. This is enabled by linking the raw-data to those transformed resources via the variable's data-dictionary terms. 

#### Survey Data
Perhaps you want to work with a survey as recorded. Sometimes data doesn't have the same level of semantic integration necessary for a robust, standardized representation. In these cases, you can use Questionnaires and QuestionnaireResponses to represent the entire dataset and perform transformations into appropriate, interoperable resources for those that make the most sense.

#### Support for Untransformed Data
While the goal is to transform as much data as is possible, there are very real limits to what is possible due to limited effort availability as well as current "model limitations". 

With the data stored as raw data, it is possible to provide tools that can provide assistance to researchers to further transform those data into interoperable resources at a later date. Also, for some data, the FHIR Working Group may not have a clear answer at the time of ingestion as to how to represent them in FHIR. By storing those data as raw-data, they are nonetheless available even if not in a fully interoperable form. 
