## Purpose
Test Splunk Connect for Kafka.

To run, do:
```
./run.sh
```

Splunk should be available at http://localhost:8000.
Log in using "admin/ch@ngeM3".

Create an Index named `kafka_index` on the Splunk server: Go to [Settings > Indexes](http://localhost:8000/en-GB/manager/launcher/data/indexes) > New Index.

Verify that a token exists for the HTTP Event Collector at [Data Inputs » HTTP Event Collector](http://localhost:8000/en-GB/manager/launcher/http-eventcollector#). If not, create it and put the token value at [splunk-sink-connector.properties](./kafka-connect/conf/splunk-sink-connector.properties).


To destroy the environment, do:
```
./destroy.sh
```
