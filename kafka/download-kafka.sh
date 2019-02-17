#!/bin/sh

mirror=$(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred')
url="${mirror}kafka/2.1.0/kafka_2.11-2.1.0"
wget -q "${url}" -O "/tmp/kafka_2.11-2.1.0"
