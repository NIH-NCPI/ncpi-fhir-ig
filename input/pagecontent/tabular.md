### Overview
While it may seem counterintuitive to capture tabular or raw-data inside FHIR, there are actually good reasons for doing so:

#### Traceability
Enabling traceability from source to transformed data is helpful for several reasons. For one, it can provide confidence for end users that the data means what they believe it does. Second, the potential for extra eyes on the transformations can help identify errors or inconsistencies. Finally, there are some data where the end transformations are technically sound, but being able to see the original sources can provide additional context for researchers who need that extra level of detailed knowledge about the origins of the data

Ordinarily, these lines of inquiry may require effort on the part of the 3rd party researcher, and may even have required them to reach out to the original study PIs for answers to their questions. But by providing the raw data side-by-side with the transformed data, those questions can be much more quickly answered. 

#### Imperfect FHIR Model
The development of this IG is still in its early stages and as such, there are plenty of special cases where the model doesn't properly cover situations for many research studies. By transforming data that fits the current model, research data that aligns with the completed IG can be loaded in a fully interoperable way and those portions of the data which fall outside the current IG's purview can still be accessible in it's tabular, FHIR format. 

#### Data Without Funding for Transforming to the Interoperable Model
There is a large amount of research data for which the grants have been completed and there is no effort available to fund the transformations required to load the data into the interoperable model specified by the IG. With a fully developed data-dictionary, this type of study data can easily be loaded into FHIR as raw, tabular data. While it may not have the conveniences enabled by the interoperable model, it will still be available via FHIR and can be wholly summarized for findability. 

#### Future Client Applications
While most of the ingestion of study data into FHIR today is being done at the study level, it is conceivable that in the near future there could be applications that can find these raw, tabular only sources and provide an interface for performing transformations on a more "ad-hoc" level. This could enable researchers with money to fund the partial lifting of these older studies into a more highly interoperable form that suits their own particular research needs. 

### Conventions
For most study data, using a single Observation for each row of data is appropriate, given the presence of the data dictionary components for the study are also available in FHIR. For those studies where the original sources are questionnaires, then the FHIR Questionnaire resource is appropriate. 

For Observations, all non-missing variables from a single *row* of data is kept together as separate elements in the Observation's component array. Each of those components have the variable's data-dictionary code entry for the code, and the value[X] is represented as is defined in the data-dictionary's type for that variable, with some exceptions. For numeric values where *Not a Number* is a real possibility, storing that as a valueCodeableConcept is appropriate as opposed to valueQuantity. The same applies for string values where normally a number would be expected, such as the case for values like "< 1 ml" where the instrument is unable to record the correct number, and instead, provides a meaningful substitute. 

For Questionnaires, the study should define a Questionnaire resource for each table. Each row in each of those tables is represented as a QuestionnaireResponse. Those responses link back to the appropriate Questionnaire by way of the response's Questionnaire property and the individual values link back to the Questionnaire's item using a common linkId. 

### Relevant Artifacts
In addition to reliance upon the terminologies from the Data Dictionary portions of the [study metadata](study_metadata.html), there are three resources that are primarily used to represent raw (source) data: [Observation](https://hl7.org/fhir/observation.html) and [Questionnaires](https://hl7.org/fhir/questionnaire.html) with [QuestionnaireResponses](https://hl7.org/fhir/questionnaireresponse.html). 

Out of the box, the Observations provide a bit more utility thanks to the searchability within those components. 