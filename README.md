# NCPI FHIR Implementation Guide

## Quick Start

1. Install Node.js and SUSHI, following [the instructions](https://fshschool.org/docs/sushi/installation/).

2. Clone this repository.

```bash
$ git clone git@github.com:ncpi-fhir/ncpi-fhir-ig.git
$ cd ncpi-fhir-ig
```

3. Run SUSHI.

```bash
$ sushi .
```

4. Update the HL7 FHIR IG Publisher. This will download the latest version of the tool. This step can be skipped if 1) the command already has been run recently or 2) you don't want to update it.

```bash
$ ./updatePublisher.sh
```

5. Generate the IG.

```bash
$ ./genounce.sh
```

6. Open the file `./output/index.html` to browse the resulting IG.
