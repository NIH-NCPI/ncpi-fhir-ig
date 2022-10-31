<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ObservationDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>ObservationDefinition.meta</sch:title>
    <sch:rule context="f:ObservationDefinition/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.implicitRules</sch:title>
    <sch:rule context="f:ObservationDefinition/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.language</sch:title>
    <sch:rule context="f:ObservationDefinition/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.text</sch:title>
    <sch:rule context="f:ObservationDefinition/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.extension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.modifierExtension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.category</sch:title>
    <sch:rule context="f:ObservationDefinition/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.code</sch:title>
    <sch:rule context="f:ObservationDefinition/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.identifier</sch:title>
    <sch:rule context="f:ObservationDefinition/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.permittedDataType</sch:title>
    <sch:rule context="f:ObservationDefinition/f:permittedDataType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.multipleResultsAllowed</sch:title>
    <sch:rule context="f:ObservationDefinition/f:multipleResultsAllowed">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.method</sch:title>
    <sch:rule context="f:ObservationDefinition/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.preferredReportName</sch:title>
    <sch:rule context="f:ObservationDefinition/f:preferredReportName">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.extension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.modifierExtension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.customaryUnit</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:customaryUnit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.unit</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:unit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.conversionFactor</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:conversionFactor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.quantitativeDetails.decimalPrecision</sch:title>
    <sch:rule context="f:ObservationDefinition/f:quantitativeDetails/f:decimalPrecision">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.extension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.modifierExtension</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.category</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.range</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:range">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.context</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:context">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.appliesTo</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:appliesTo">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.gender</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:gender">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.age</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:age">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.gestationalAge</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:gestationalAge">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.qualifiedInterval.condition</sch:title>
    <sch:rule context="f:ObservationDefinition/f:qualifiedInterval/f:condition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.validCodedValueSet</sch:title>
    <sch:rule context="f:ObservationDefinition/f:validCodedValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.normalCodedValueSet</sch:title>
    <sch:rule context="f:ObservationDefinition/f:normalCodedValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.abnormalCodedValueSet</sch:title>
    <sch:rule context="f:ObservationDefinition/f:abnormalCodedValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ObservationDefinition.criticalCodedValueSet</sch:title>
    <sch:rule context="f:ObservationDefinition/f:criticalCodedValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
