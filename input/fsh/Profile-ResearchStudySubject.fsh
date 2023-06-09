Extension: ResearchStudySubjectConsent
Id: research-study-subject-consent
Title: "Research Study Subject Consent"
Description: "ResearchStudySubjectConsent provides link to a consent through which participants were enrolled."
* value[x] only Reference(ResearchStudyConsent)

Profile: ResearchStudySubject
Parent: NcpiResearchStudy
Id: research-study-subject
Title: "Research Study Subject"
Description: "A ResearchStudySubject is representative of a group of participants whose consent and data use is governed by the same restrictions." 
* ^version = "0.1.0"
* ^status = #draft
* partOf 1..1
* extension contains ResearchStudySubjectConsent named consent 1..1