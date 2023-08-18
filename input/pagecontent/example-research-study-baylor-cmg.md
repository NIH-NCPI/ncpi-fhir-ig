Research Study details can be represented in FHIR using a number of key Profiles defined within the NCPI Implementation Guide. Together, these profiles can be used to describe the properties of the study as well as relationships of the study to other studies such as through a common Consortium. These resources can also be used to indicate participant counts associated with each of the different types of access restrictions (consent, etc.) associated with components of the study. 

For this example, we have taken the [Baylor Hopkins Center for Mendelian Genomics](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000711.v7.p2) DbGaP study and built some of the relevant resources that in compliance to the Research Study Model. 

<img width="100%" src="bh-cmg-research-study-example.png" alt="Baylor Hopkins CMG" />

# ResearchConsortium
To discuss this particular set of research studies, we must first describe the role of the consortium when discussing studies of this type. The consortium, Centers for Mendelian Genomics, is used in the NCPI FHIR Model as a mechanism for aggregating member studies together. In the diagram above, you can see that, in addition to BH-CMG, there are several other centers which would each have their own set of studies. By representing the consortium in this way, we can show their relationship to one another, by association to the Consortium. 

The profile, [ResearchConsortium](StructureDefinition-ncpi-research-consortium.html), is very simple in nature. There is a single attribute that is required specific to this IG, the name. Recommended attributes include any common Acronyms and the URL for the consortium's website. 

For this example, we have created a ResearchConsortium resource, [The Center for Mendelian Genomics](Organization-cmg-research-consortium.json.html). 

```json
{
  "resourceType" : "Organization",
  "id" : "cmg-research-consortium",
  "meta" : {
    "profile" : [
      "https://nih-ncpi.github.io/ncpi-fhir-ig/StructureDefinition/ncpi-research-consortium"
    ]
  },
  "name" : "Center for Mendelian Genomics Consortium",
  "alias" : [
    "CMG"
  ],
  "telecom" : [
    {
      "system" : "url",
      "value" : "http://mendelian.org/"
    }
  ]
}
```

In this compliant example, we indicate the name of the consortium using the name attribute: 
```"name": "The Center for Mendelian Genomics Consortium"```

Since this is commonly referred to as _CMG_, we provide that acronym as an alias:
```json
{
  "alias": [
    "CMG"
  ]
}
```

And finally, in order to provide the consortium's website, we provide it using the _telecom_ attribute:
```json
{ 
    "telecom": [     
        {
          "system": "url",
          "value": "http://mendelian.org"
        }
    ]
}
```
The system, in this case, is how consumers of this data can properly interpret the value as a website URL. 

# Research Study, Baylor Hopkins, CMG
In this example, we have a dbGaP study, [BH-CMG](researchstudy-cmg-research-study-bhcmg.html), which has a number of different ways in which participants were consented. We've represented this main study as an [NCPI Research Study](StructureDefinition-ncpi-research-study.html), and will represent each of those consent components as [Research Study Subject](StructureDefinition-research-study-subject.html) resources. 

First, let's take a look at the study itself:
```json
{
  "resourceType" : "ResearchStudy",
  "id" : "cmg-research-study-bhcmg",
  "meta" : {
    "profile" : ["https://nih-ncpi.github.io/ncpi-fhir-ig/StructureDefinition/ncpi-research-study"]
  },
  "identifier" : [{
    "system" : "http://mendelian.org/fhir",
    "value" : "BH-CMG"
  },
  {
    "system" : "https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=",
    "value" : "phs000711"
  }],
  "title" : "Baylor Hopkins Center for Mendelian Genomics (BH CMG)",
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem/ncpi",
      "code" : "StudyCohort",
      "display" : "Study Cohort"
    }]
  }],
  "focus" : [{
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/mondo.owl",
      "code" : "MONDO:0016054",
      "display" : "cerebral malformation"
    }]
  },
  {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/hp.owl",
      "code" : "HP:0030853",
      "display" : "Heterotaxy"
    },
    {
      "system" : "urn:oid:2.16.840.1.113883.6.177",
      "code" : "D059446",
      "display" : "Heterotaxy Syndrome"
    }]
  },
  {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/mondo.owl",
      "code" : "MONDO:0016033",
      "display" : "Cornelia de Lange syndrome"
    }]
  }],
  "relatedArtifact" : [
    {
      "type" : "derived-from",
      "label" : "DbGaP",
      "url" : "phs000711"
    },
    {
      "type" : "documentation",
      "label" : "Citation",
      "citation" : "Gonzaga-Jauregui C, Lupski JR, Gibbs RA. Human genome sequencing in health and disease. Annu Rev Med. 2012;63:35-61. doi: 10.1146/annurev-med-051010-162644. PMID: 22248320; PMCID: PMC3656720.",
      "document" : {
        "url" : "https://pubmed.ncbi.nlm.nih.gov/22248320/"
      }
    },
    {
      "type" : "documentation",
      "label" : "Website",
      "document" : {
        "url" : "https://mendeliangenomics.org/"
      }
    }
  ],
  "description" : "The Centers for Mendelian Genomics project uses next-generation sequencing and computational approaches to discover the genes and variants that underlie Mendelian conditions. By discovering genes that cause Mendelian conditions, we will expand our understanding of their biology to facilitate diagnosis and new treatments.",
  "enrollment" : [{
    "reference" : "Group/cmg-research-study-bhcmg-group"
  }],
  "sponsor" : {
    "reference" : "Organization/cmg-research-consortium"
  },
  "extension" : [{
    "url" : "https://nih-ncpi.github.io/ncpi-fhir-ig/StructureDefinition/research-study-design",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/CodeSystem/ResearchStudy-StudyDesign",
        "code" : "Mendelian",
        "display" : "Mendelian"
      },
      {
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem/ncpi-study-types",
        "code" : "Mixed",
        "display" : "Mixed"
      }]
    }
  }]
}
```

The first thing I'll point out is the use of identifier:
```json
{
    "identifier" : [
      {
        "system" : "http://mendelian.org/fhir",
        "value" : "BH-CMG"
      },
      {
        "system" : "https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=",
        "value" : "phs000711"
      }
    ]
}
```
We are providing two identifiers. One to distinguish it using the more familiar identifier, BH-CMG. Next, we are proving the dbGaP Accession ID. Both of these identifiers will be reasonable ways to refer to the study, depending on the user's relationship to the study itself. 

One of the required attributes is the title. ```"title" : "Baylor Hopkins Center for Mendelian Genomics (BH CMG)"``` We have added this requirement in order to ensure that the resource will be reasonably informative to those who are using data compliant with the NCPI FHIR IG. 

We defined the consortium to which this study belongs above. To associate this study to that consortium, we point the  *sponsor* attribute to a reference to that consortium resource: 

```json
{
    "sponsor": {
        "reference" : "Organization/cmg-research-consortium"
    }
}
```
This provides a way to search for research studies who are sponsored by the consortium of interest. 

Another key component is participant data. We'll define the actual study group below, but it is an important part of the Study and is, therefore, required. We've added restrictions to require enrollment to have a single StudyGroup. We've done this to enforce proper implementation of the model itself. If there are different combinations of participant enrollment, those should be captured as substudies whose "partOf" property points to this study. For this particular study's enrollment, we expect that StudyGroup to consist of the entire population associated with the study at hand. 

```json
{
  "enrollment" : [
    {
      "reference" : "Group/cmg-research-study-bhcmg-group"
    }
  ]
}
```

While it isn't required, it is strongly recommended that each study resource have a complete and meaningful description that can be provided to researchers who may be interested in accessing the data from this study. For that, we use the *description* attribute: ```"description" : "The Centers for Mendelian Genomics project uses next-generation sequencing and computational approaches to discover the genes and variants that underlie Mendelian conditions. By discovering genes that cause Mendelian conditions, we will expand our understanding of their biology to facilitate diagnosis and new treatments.",```

In addition to details about the study itself and it's enrollment details, researches will want to be able to find information about the data that goes beyond the study itself including Citations for talks and papers that used the data, the study's website, if one exists and other types of document URLs that may be of interest to researches interested in finding out more about this study. 

For this study, we've added a few of these items using the *relatedArtifact* attribute:
```json
{
  "relatedArtifact" : [
    {
      "type" : "derived-from",
      "label" : "DbGaP",
      "display": "phs000711",
      "url" : "https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs000711"
    },
    {
      "type" : "documentation",
      "label" : "Citation",
      "citation" : "Gonzaga-Jauregui C, Lupski JR, Gibbs RA. Human genome sequencing in health and disease. Annu Rev Med. 2012;63:35-61. doi: 10.1146/annurev-med-051010-162644. PMID: 22248320; PMCID: PMC3656720.",
      "document" : {
        "url" : "https://pubmed.ncbi.nlm.nih.gov/22248320/"
      }
    },
    {
      "type" : "documentation",
      "label" : "Website",
      "document" : {
        "url" : "https://mendeliangenomics.org/"
      }
    }
  ]
}
```
With these 3 *artifacts*, we provide the dbGaP study link and related ID, one of the citations that reference the study and the study's official website. 




One of the important features for making these studies _findable_ is annotating them with proper disease codes relating the study to those diseases and phenotypes that are under study. In this case, we are only representing 3, but there is no reason to stop with any particular number. For the purpose of being concise, we'll look at one of those three diseases: 

```json
{
  "focus" : [
    {
        "coding" : [{
        "system" : "http://purl.obolibrary.org/obo/hp.owl",
        "code" : "HP:0030853",
        "display" : "Heterotaxy"
        },
        {
        "system" : "urn:oid:2.16.840.1.113883.6.177",
        "code" : "D059446",
        "display" : "Heterotaxy Syndrome"
        }]
    }
  ]
}
```
For this one, we've included codings from two different ontologies: HPO and MeSH relating to Heterotaxy granting end users greater flexibility in which terms they choose for their searches. 



* [CMG Consortium](organization-cmg-research-consortium.html)
* [BH-CMG](researchstudy-cmg-research-study-bhcmg.html)
  * [BH-CMG All Participants](group-cmg-research-study-bhcmg-group.html)
  * [Consent Group HMB-NPU](researchstudy-cmg-research-study-subject-cmg-hmb-npu.html)
    * [Consent HMB-NPU](consent-hmb-npu-consent.html)
    * [Related StudyGroup](group-cmg-research-study-bhcmg-consent-group-hmb-npu.html)
  * [Consent Group HMB-IRB-NPU](researchstudy-cmg-research-study-subject-cmg-hmb-irb-npu.html)
    * [Consent HMB-IRB-NPU](consent-hmb-irb-npu-consent.html)
    * [Related StudyGroup](Group-cmg-research-study-bhcmg-group-hmb-irb-npu.html)
    * [Related StudyGroup](group-cmg-research-study-bhcmg-consent-group-hmb-irb-npu.html)