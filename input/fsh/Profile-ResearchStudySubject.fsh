Extension: ResearchStudySubjectConsent
Id: research-study-subject-consent
Title: "Research Study Subject Consent"
Description: "ResearchStudySubjectConsent provides link to a consent through which participants were enrolled."
* value[x] only Reference(ResearchStudyConsent)

Profile: ResearchStudySubject
Parent: NcpiResearchStudy
Id: research-study-subject
Title: "Research Study Subject"
Description: "A ResearchStudySubject is representative of a group of participants whose consent and data use is governed by the same restrictions. This profile is an R4 proxy for the more flexible R5 ResearchSubject." 
* ^version = "0.1.0"
* ^status = #draft
* partOf 1..1
* extension contains ResearchStudySubjectConsent named consent 1..1