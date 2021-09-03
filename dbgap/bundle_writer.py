"""
Utility script to read dbgap extentions from search Bundle and write resources to their own file
"""

import json
with open('dbgap/input/dbgap-extentions.search-bundle','r') as input:
    searchset = json.load(input)
assert searchset['resourceType'] == 'Bundle', 'Should contain a FHIR Bundle'
assert len(searchset['entry']) > 0, 'Should have at least 1 entry'
for entry in searchset['entry']:
    resource = entry['resource']
    file_name = f"dbgap/input/{resource['id']}.json"
    with open(file_name, 'w') as output:
        json.dump(resource, output)
    print(f"wrote {file_name}")