#### Component Definition
The components represent non-missing data from the table of origin for the given row. As such, each will have some data stored in the value[x] property, along with a proper code from the table's data-dictionary CodeSystem.

##### Data Dictionary Codes Provide Context
In order to establish what each of the components represents, one of the component's codings should point to the appropriate code from the related table's data-dictionary CodeSystem. 

##### Typed Data is Encouraged Within Limits
Given a reasonably complete data-dictionary, it should be possible to properly type most of the data and correctly assign those typed data to the appropriate value[x] properties. Where the data actually fails to conform to the data-dictionary's established type, the resource will validate fine with an appropriate value[x] type that can support the non-conforming data, such as signifying NaN as a code for non-numeric numerics, or choosing a valueString to handle cases like "< 1". 

In general, it is assumed _decimal_ numbers will be represented as valueQuantity, however, unless there is some specification from the data-dictionary about the value's type, that quantity may simply contain the singular value property. 

#### Each Non-Missing Column Should be Present
While it may seem appropriate to merge certain types of columns together to take advantage of their known relationship, such as using a separate column's contents to assign the units associated with a quantity, the objective here is to establish as accurate a picture of what the original data looked like as possible. As such, resource generators should avoid any such transformations for these _raw data_ resources. Leave those to the *interoperable* portion of the FHIR transformation.