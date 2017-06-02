# KELK-Stack
KELK (and Zookeeper) configuration files to use with docker.

The file */etc/hosts* should have a line containing a Kafka redirection so the phoenixLogger can connect and send messages to it. The line is as follows (you should configure it properly when in production):

```
127.0.0.1 kafka
```

This also configures logstash to work properly without the need to install specific kafka plugins by hand (using a shell script).
