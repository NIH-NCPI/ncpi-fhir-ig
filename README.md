# NCPI FHIR Implementation Guide

## Quick Start

1. Install the following dependencies (See [the instructions](https://fshschool.org/docs/sushi/installation/)):

- Node.js >= v10.0.0
- SUSHI >= v1.2.0
- Jekyll >= v4.2.0

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
$ ./_updatePublisher.sh
```

5. Generate the IG.

```bash
$ ./_genonce.sh
```

6. Open the file `./output/index.html` to browse the resulting IG.

## Docker

As an alternative to installing dependencies on the host computer, you may wish to leverage a docker container.

### Create Docker image

- Assuming you have [Docker](https://docs.docker.com/get-docker/) installed locally.
- First create an image tagged `fsh`
  - The docker file will create an image with jekyll, java, node, sushi and the publisher jar file pre-installed.

```
# build
docker build -t fsh .

# double check dependency installation
docker run --rm -it -v $(pwd)/:/src fsh sh -c  "java -version && node  --version && sushi --version && jekyll --version && java -jar input-cache/publisher.jar --help  2>&1 | head -1"

```

- Should produce output similar to:

  > openjdk version "1.8.0_242"
  > OpenJDK Runtime Environment (IcedTea 3.15.0) (Alpine 8.242.08-r0)
  > OpenJDK 64-Bit Server VM (build 25.242-b08, mixed mode)
  > v12.15.0
  > SUSHI v1.2.0 (implements FHIR Shorthand specification v1.1.0)
  > ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux-musl]
  > jekyll 4.1.0
  > FHIR IG Publisher Version 1.1.59 (Git# f189dab98e15). Built 2021-01-24T15:18:07.236Z (30 days old)

### Create shorthand alias

```
alias fsh='docker run -v $(pwd)/:/src --rm -it fsh'
```

### Run development tools

```
fsh sushi .
```

#### Generate IG html

```
fsh ./_genonce.sh
```

### Optimized for multiple commands

You may need to run sushi or \_gen\* scripts several times in development mode.

```
# start image named `fsh` in background
docker run -d  -v $(pwd)/:/src -it --entrypoint "/bin/bash" --name fsh  fsh

# show running container
docker ps
>>>
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS                 NAMES
69759e4336b7   fsh       "/bin/bash"   4 seconds ago   Up 3 seconds   4000/tcp, 35729/tcp   fsh

# create alias referencing the running container
alias fsh='docker exec fsh'

# run commands per above on running container
```

### View the output of the IG

```
ls -l output/*.zip
```

## Implementation Guide (Pre-Release)

The NCPI FHIR Implementation Guide (pre-release) is available [here](https://nih-ncpi.github.io/ncpi-fhir-ig/).
