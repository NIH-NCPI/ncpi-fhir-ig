### Key Guidelines
The ResearchStudyConsent profile is designed to conform to the same guidelines as found in the DbGaP/NIH Consent model and is intended to be a singular resource that represents the consent signed by a group of participants in a research study. 

#### Added Profile Restrictions
* The consent's **category** *MUST* be set to the code, **research** from the system, http://terminology.hl7.org/CodeSystem/consentcategorycodes.
* All distinct consent restrictions should be added to the consent's provision.purpose as a separate coding from the [NIH Consent CodeSystem](codesystem-nih-consent.html).
* For disease specific restrictions, the code *DS* must be present in the purpose described above along with appropriate code(s) added via the [Research Disease Use Limitation Extension](StructureDefinition-research-disease-use-limitation.html). 

#### Recommended Practice
*This should go within the regular page content, but I want to wait until I have Katie's verbiage before working it in.* 

In this model, the consent's category contains an array of codes for each of the restrictions specified in the given consent. For instance, [HMB-NPU Consent](consent-hmb-npu-consent.html), there would be two codes added to the provision's purpose property: One for the HBM restriction and one for the NPU. Those restrictions must be selected from the CodeSystem, [NIH Consent](codesystem-nih-consent.html). For more disease specific restrictions, the code _DS_ is to be used along with a corresponding disease code(s) added via the [Research Disease Use Limitation](StructureDefinition-research-disease-use-limitation.html). 

Each ResearchStudyConsent resource is intended to be a singular resource that is used by all participants that were enrolled into the study under the particular consent agreement. As such, the model differs somewhat from the R4 Consent model. In this model, for each distinct consent agreement present in the study will be represented by a (ResearchStudySubject)(StructureDefinition-research-study-subject.html) which contains a single [Study Group](StructureDefinition-study-group.html) that may contain references to each participant consented by the relevant agreement. This ResearchStudySubject will contain a reference to the corresponding ResearchStudyConsent resource via the [Research Disease Use Limitation](StructureDefinition-research-disease-use-limitation.html).
