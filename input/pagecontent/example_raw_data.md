Tabular data can be captured in FHIR using either Observations or Questionnaires and QuestionnaireResponses. Doing so provides convenience for clients when tracing original source values from transformed data or can be used to move data into FHIR when there is either no current model supporting the data at hand or no effort to work through the transformations. Using either of these two resources allows for an entire row's worth of data in a single resource. 

For the examples below, we will be reusing the fictitious dataset as described in the [Metadata Example](example_study_metadata.html). 

### Tabular Data as Observations
An example of using an Observation to represent tabular data can be found [here.](Observation-example-observation-data-row-1.html)

In order to use Observations to represent tabular data, we'll need to have previously defined our data dictionary, since those resources will be vital for clients to properly interpret the resource's contents. Each Observation resource represents a single row from one table. 

The first thing to note is that we've set the Observation's code to the table's code from the study's [dataset CodeSystem](CodeSystem-example-study-data-dictionary-dataset-codesystem-1.html). In this case, it's the code, *demographics*. While not absolutely required, it is highly recommended that the subject be set to the corresponding Patient resource so that these observations can be easily found using basic FHIR queries. In this case, such a query might look like: *Observation?code=http://example.org/my-dataset/fhir/codesystem/dataset|demographics&subject=Patient/ncpi-research-study-01-patient-01*.

Observations do permit association to a specimen as well, which may make good since if the row is from a table that provides specimen details. 

Finally, each of the variables is captured as a component within the Observation's component array. Here, you will see that each of the components has a code that originates from the study's demographics table indicating which variable is being represented. Then, for each of those components, the appropriate value[X] provides the variable's value for that row. So, for the first component, the code indicates that is is the "subjectid" variable with a value of "SUB0001". 

To provide context about a given variable's content, the data-dictionary resources should also be present in order to provide type information via the permittedDataType property as well as potential details about min/max, units and others that may have been provided in the Data Dictionary variable resources. For instance, [subjectid](ObservationDefinition-example-study-data-dictionary-variable-1-1.json.html) is formally defined to be of type, *string*. Whereas [gender](ObservationDefinition-example-study-data-dictionary-variable-1-2.json.html) is defined to be of type *CodeableConcept* with the possible values specified by this [ValueSet](http://hl7.org/fhir/ValueSet/administrative-gender). That information agrees with the contents of this example's resource's components. 

One advantage of using Observations with components for tabular data is the fact that they should be searchable from any truly compliant FHIR server. So, if one were interested in all rows associated with *cases*, the following query should work: *Observation?code=http://example.org/my-dataset/fhir/codesystem/dataset|demographics&component-value-concept=https://uts.nlm.nih.gov/uts/umls|C99269*

### Tabular Data as Questionnaires and QuestionnaireResponses
We provide the same example representing data using Questionnaires and QuestionnaireResponses. 

The [Questionnaire](Questionnaire-example-questionnaire-demographics-1.html) defines the structure of how the responses are to be formatted, basically providing details about each of the variables that may be found within a response. The [QuestionnaireResponse](QuestionnaireResponse-example-questionnaire-demographics-response-1.html) simply provides the values for those variables. Similarly to the Observation approach, the code for the Questionnaire links back to the study's data dictionary code for the relevant table, in the case it's [demographics](CodeSystem-example-study-data-dictionary-dataset-codesystem-1.html). To tie each of the variables back to the appropriate table, their code entry is used for each of the Questionnaire's item's code. Thus, the code for bmi links back to the bmi entry in the study's demographics table's [CodeSystem](CodeSystem-example-study-data-dictionary-dataset-codesystem-1.html). 

The QuestionnaireResponse's data links back to the relevant variable by way of a common linkId. So, the item associated with the linkId of "gender" is described by the Questionnaire's item with the same linkId. 

Similarly to the Observation approach, the QuestionnaireResponse can be linked back to the appropriate Patient resource using the subject property. The response is tied to the corresponding Questionnaire by way of the response's *questionnaire* property. This will match the designated Questionnaire's *url*. 

QuestionnaireResponses don't come with the ability to search for data inside the items, but a response is validated against the corresponding Questionnaire's definitions. That validation is a double edged sword, however, since it means that you can't provide a code for "Not a Number" in place of a quantity like you can with the Observation approach. 