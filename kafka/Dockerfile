FROM anapsix/alpine-java

ARG kafka_version=2.11-2.1.0
ARG scala_version=2.11

MAINTAINER wurstmeister

RUN apk add --update unzip wget curl docker jq coreutils

ENV KAFKA_VERSION=2.11-2.1.0 SCALA_VERSION=2.11

VOLUME ["/kafka"]

ENV KAFKA_HOME /opt/kafka
ENV PATH ${PATH}:${KAFKA_HOME}/bin
ADD start-kafka.sh /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
ADD create-topics.sh /usr/bin/create-topics.sh
# The scripts need to have executable permission
RUN chmod a+x /usr/bin/start-kafka.sh && \
    chmod a+x /usr/bin/broker-list.sh && \
    chmod a+x /usr/bin/create-topics.sh
# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka.sh"]
