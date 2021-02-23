# Docker


## Create Docker image

* Assuming you have [Docker](https://docs.docker.com/get-docker/) installed locally.
* First create an image tagged `fish`
  * The docker file will create an image with jekyll, java, node, sushi and the publisher jar file pre-installed. 

```
# build
docker build -t fish .

# validate
docker run --rm -it fish sh -c  "java -version && node  --version && sushi --version && jekyll --version && java -jar input-cache/publisher.jar --help  2>&1 | head -1"

```

* Should produce output similar to:

    > openjdk version "1.8.0_242"
    > OpenJDK Runtime Environment (IcedTea 3.15.0) (Alpine 8.242.08-r0)
    > OpenJDK 64-Bit Server VM (build 25.242-b08, mixed mode)
    > v12.15.0
    > SUSHI v1.2.0 (implements FHIR Shorthand specification v1.1.0)
    > ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux-musl]
    > jekyll 4.1.0
    > FHIR IG Publisher Version 1.1.59 (Git# f189dab98e15). Built 2021-01-24T15:18:07.236Z (30 days old)


## Create shorthand alias

```
alias fish='docker run -v $(pwd)/:/src --rm -it fish'
```

## Run development tools

```
fish sushi .
```

### Generate IG html

```
fish ./_genonce.sh
```


### Optimized for multiple commands

You may need to run sushi or _gen* scripts several times in development mode.

```
# start image named `fish` in background
docker run -d  -v $(pwd)/:/src -it --entrypoint "/bin/bash" --name fish  fish

# verify
docker ps
>>>
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS                 NAMES
69759e4336b7   fish      "/bin/bash"   4 seconds ago   Up 3 seconds   4000/tcp, 35729/tcp   fish

# create alias referencing the running container
alias fish='docker exec fish'

# run commands per above
```
