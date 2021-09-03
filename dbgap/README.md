## Import existing FHIR Resources into FSH

This process is useful for importing FHIR resources that are not published i.e. not in simplifier.net

To retrieve and install the Extensions, in this case dbGAP.

```
# From the root directory:
# Make a work directory, retrieve source extensions
mkdir -p dbgap/input
wget https://dbgap-api.ncbi.nlm.nih.gov/fhir/x1/StructureDefinition?type=Extension -O dbgap/input/dbgap-extentions.search-bundle

# Parse the search bundle into separate resource files
python3 fhir/ncpi-fhir-ig/dbgap/bundle_writer.py 

# Run goFSH to reverse engineer the extensions
rm -rf dbgap/gofsh
fsh gofsh /src/dbgap --out /src/dbgap/gofsh

```

Manual steps:

 * Examine outputs in fhir/ncpi-fhir-ig/dbgap/gofsh/input/fsh/extensions.
 * Edit as appropriate:
  * ResearchStudy_Content.fsh: Added `^url`
  * ResearchStudy_Content_*.fsh: Added `^url`; Removed `^context.type` `^context.expression`
 * Copy to fhir/ncpi-fhir-ig/input/fsh
 * Generate IG as ususal
