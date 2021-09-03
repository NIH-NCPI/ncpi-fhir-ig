# use jekyll as a base
FROM jekyll/builder

# add node
RUN apk update
RUN apk add  nodejs 
# add the sushi tool
RUN  npm install -g fsh-sushi@1.2.0
# add the GOFSH tool, which turns FHIR artifacts into FSH definitions
RUN npm install -g gofsh


# add java
RUN apk add --no-cache openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

# https://github.com/docker-library/openjdk/issues/73#issuecomment-451102068
RUN apk add --no-cache ttf-dejavu


# add misc
RUN apk add curl
RUN apk add jq


# anticipate source mounted to /src
VOLUME [ "/src" ]
WORKDIR /src

# run side effects of _updatePublisher.sh
RUN mkdir ./input-cache
RUN curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./publisher.jar --create-dirs
RUN curl -L https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_gencontinuous.sh -o ./_gencontinuous.sh --create-dirs
RUN curl -L https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_genonce.sh -o ./_genonce.sh --create-dirs
RUN curl -L https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_updatePublisher.sh -o ./_updatePublisher.sh --create-dirs

