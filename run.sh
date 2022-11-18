#!/bin/bash

docker compose up -d

docker compose \
    exec broker kafka-topics \
    --create \
    --topic splunk_topic \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --if-not-exists

docker compose exec broker \
    kafka-console-producer \
    --topic splunk_topic \
    --bootstrap-server localhost:9092 < ./tmp/records.txt

curl -sS http://localhost:8083/connector-plugins | jq .

exit 0
