
### Rare Disease

Studying rare disease is a core pillar of work across the NCPI platforms, including the NGHRI’s Centers for Mendelian Disease Genomics (CMG) and the Kids First pediatric birth defects projects. These projects are looking for variants that cause disease in individuals or among a family. This type of work requires some detailed patterns of data capture, and several of our resources are modeled specifically to address these use cases.

These investigations are often keyed to identifying a suite of “phenotypic features” and then identifying or defining one or more “diseases or syndromes” that cause these observed features. Typically, such Phenotypic Features are defined as the presence or absence of Human Phenotype Ontology (HPO) terms, and the NCPI Phenotypic Feature profile encourages HPO use and also defines how to capture the status, onset, and more. The NCPI Disease profile is designed to encourage the use of common standard vocabularies and ontologies for such diseases.

Another integral component is the Family Relationship. FHIR for clinical use doesn’t broadly enable the linking of Patient resources given the privacy related challenges. In the research setting, however, a family may have many consented study participants who have data captured. This includes the Pedigree standard, which we implement using “NCPI Family Relationship”. This resource allows the fully-featured Patients with data to be connected, unlike the FamilyMemberHistory which is designed to provide single details unlinked to the family member’s Patient record (if it exists).

We also hope to provide mechanisms for linking observed variants to the Diseases they cause. This will allow researchers to share results or hypotheses in a clear, structured, interoperable manner.
