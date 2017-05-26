# KELK-Stack
KELK (and Zookeeper) configuration files to use with docker and a simple Phoenix application to send messages to Kafka.

The file */etc/hosts* should have a line containing a Kafka redirection so the phoenixLogger can connect and send messages to it. The line is as follows:

```
127.0.0.1 kafka
```

Logstash needs to have the correct version of the Kafka plugin to work. The correct plugin can be installed using the following lines after connecting in the Logstash instance:

```
logstash-plugin remove logstash-input-kafka
logstash-plugin remove logstash-output-kafka
logstash-plugin install --version 4.2.0 logstash-input-kafka
logstash-plugin install --version 4.0.4 logstash-output-kafka
```
