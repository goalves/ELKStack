# ELKStack
ELK (and Kafka/Zookeeper) configuration files to use with docker and a simple Phoenix application to send messages to Kafka.

The file */etc/hosts* should have a line containing a Kafka redirection so the phoenixLogger can connect and send messages to it. The line is as follows:
```
127.0.0.1 kafka
```
