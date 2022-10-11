The Study Metadata can be represented using a mix of profiles and terminology resources. For this example, we have a very simple dataset consisting of a single table called "demographics" which has 5 variables: subjectid, gender, age_at_enrollment, bmi and status. The variables gender and status each represent "categorical" type variables and each have their own list of possible values. 

The first step is to define the language necessary to discuss these resources. To do this we create two CodeSystems:
* [The Dataset CodeSystem](CodeSystem-example-study-dd-dataset-codesystem-1.html) defines a local code representing each of the tables that make up the dataset. In this case, it is a CodeSystem with only one code defined. 
*  [The Data Table CodeSystem](CodeSystem-example-study-dd-datatable-codesystem-1.html) defines codes for each of the variables contained within a specific table. These codes are used throughout, not only the metadata FHIR resources, but also appropriate resources where the original source values were used, such as additional codes in an Observation or Condition. For this example, our table CS has 5 distinct codes, one for each of the variables mentioned above.  

Now that we have a "language" to use we build out the descriptive metadata to help inform users about the actual contents of the data contained within this dataset. 
* [The Subject ID Variable Definition](ObservationDefinition-example-study-dd-variable-1-1.html) indicates that this variable simply contains "string" data as its permitted data type and its code maps to the code, [subjectid](CodeSystem-example-study-dd-datatable-codesystem-1.html) from the data table. 
* [The Gender Variable Definition](ObservationDefinition-example-study-dd-variable-1-2.html) describes the variable as permitting only CodeableConcept data, which must be one of the values defined in this [ValueSet](http://hl7.org/fhir/ValueSet/administrative-gender).
* [The Age at Enrollment Variable Definition](ObservationDefinition-example-study-dd-variable-1-3.html) suggests that the variable's type should be an integer and that it should be within the range of 10957 and 14610 days. 
* [The BMI Variable Definition](ObservationDefinition-example-study-dd-variable-1-4.html) describes this variable as "Quantity" and that its units are "kg/m2".
* [The Status Variable Definition](ObservationDefinition-example-study-dd-variable-1-5.html) defines a variable whose value must be one of a locally defined [ValueSet](ValueSet-example-study-dd-case-control-vs-1.html).

Finally, we pull all of these variables together using [The Dataset Study Table](ActivityDefinition-example-study-dd-table-1.html) whose property, *observationResultRequirement* contains a reference to each of those variables. 
