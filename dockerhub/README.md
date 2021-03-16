Dockerfile for [kPow](https://kpow.io) - The Ultimate Engineering Toolkit for [Apache Kafka®](https://kafka.apache.org/)

# Quick reference

* **Maintained by**: [the Operatr.io team](https://github.com/operatr-io/kpow-docker)
* **Where to get help**: [GitHub](https://github.com/operatr-io/kpow-docker), [our engineering Slack](https://join.slack.com/t/operatr-io/shared_invite/zt-dts4pbtt-flBE4695OrU3YW1fS5mFCw), [kPow documentation](http://docs.kpow.io/)

# Supported tags respective `Dockerfile` links

<!--- StartReleaseLinks --->

* [67](https://hub.docker.com/layers/140734411/operatr/kpow/67/images/sha256-619972c7e808fbf3237495a1144c366dfa19d4949c3c8087226191c199ff3c53?context=explore), [latest](https://hub.docker.com/layers/126256217/operatr/kpow/latest/images/sha256-619972c7e808fbf3237495a1144c366dfa19d4949c3c8087226191c199ff3c53?context=explore)
* [67-rh-ubi](https://hub.docker.com/layers/140735081/operatr/kpow/67-rh-ubi/images/sha256-0e40a27a314f3552960b37d58c34fa49df313307a831b7dc5443789d9791b78e?context=explore)

<!--- EndReleaseLinks --->

# Quick reference (cont.)

* **Where to file issues:** https://github.com/operatr-io/kpow-docker/issues
* **Published image artifact details:** [GitHub actions CI](https://github.com/operatr-io/kpow-docker/actions/workflows/build.yml)
* **Image updates**: https://github.com/operatr-io/kpow-docker/tags
* **Source of this description**: [dockerhub/README.md](https://github.com/operatr-io/kpow-docker/blob/main/dockerhub/README.md)

# What is kPow?

### An Engineering Toolkit for Apache Kafka®

kPow is the toolkit that empowers your team to deliver with Kafka.

Once installed, kPow gathers information about your Kafka resources every minute, stores the results locally in internal topics, then provides custom telemetry and insights to you in a rich data-oriented UI.

### X-Ray Vision of Kafka Resources

Gain instant visibility of your brokers, topics, groups, partitions, offsets, and more.

kPow offers full support for controlling and monitoring Kafka Connect clusters and Schema Registries.

![kPow provides x-ray vision of Kafka resources](https://i.imgur.com/diYoIuw.png)

### Deep Data Inspect with kJQ

Search **tens of thousands of messages a second** with kPow’s unique, custom implementation of JQ-like queries for Kafka topics. 

**kJQ** works with JSON or JSON-like data including Apache Avro®, Transit, EDN, and even Protobuf messages where you have configured custom serdes to output JSON formatted text.

![Search tens of thousands of messages a second with kJQ](https://i.imgur.com/fxkgFyl.png)

### Compute Console to Control and Monitor Streams

Brokers, topics, and the data on them tell only one part of the Kafka story.

kPow Compute provides access to your consumer \(and soon, _Kafka Streams_\) topologies allowing **visualization of message throughput and lag** at point of consumption and the ability to **reset consumption** at a group, host, member, topic, or assignment level.

![kPow Compute provides visualization and control of consumption](https://i.imgur.com/5eT9w60.png)

### Built for the Enterprise

kPow comes from a practical application of Kafka to real-world requirements and provides:

* **User Authentication** via DB, File, LDAP, SAML, or OpenID configuration.
* **User Authorization** with Simple or Role Based Access Controls \(RBAC\).
* **Data Policies** for masking and redaction of sensitive data like Credit Card or PII.
* **Data Governance** with all user actions captured in the kPow audit log.
* **Slack Integration** to have user actions sent to an operations channel as they happen.
* **HTTPS** easily configured with your own certificates, or integrated with a reverse-proxy.
* **Prometheus** endpoints to integrate with your preferred metrics and alerting systems.
* **Multi-Cluster Monitoring** from a single installation for cost efficiency and simplicity.
* **All data in local topics** makes kPow perfect for air-gapped environments.

![kPow is easily configured with LDAP for User Authentication](https://i.imgur.com/cLLxrgC.png)

### And Much More..

**Live Mode** for real-time monitoring, **Multi-Dimensional Consumer Lag** insights from kPow's custom derived telemetry, **No Requirement for JMX** access, discover all of our features in this [guide](https://docs.kpow.io).


# Compatibility

kPow is compatible with **Apache Kafka 1.0+.**

kPow has been tested and is compatible with [Apache Kafka](https://kafka.apache.org/), [Red Had AMQ Streams](https://www.redhat.com/en/resources/amq-streams-datasheet), [Aiven Managed Kafka](https://aiven.io/kafka), [Instaclustr Managed Kafka](https://www.instaclustr.com/products/managed-apache-kafka/), [Confluent Platform](https://www.confluent.io/product/confluent-platform), [Confluent Cloud](https://www.confluent.io/confluent-cloud)**\*** and [Azure Event Hubs](https://azure.microsoft.com/en-us/services/event-hubs/)**\***.

\*Some disk related metrics and telemetry are not available when using kPow with Confluent Cloud and Azure Event Hubs.

# Quick start + local evaluation

To evaluate kPow locally with Docker Compose and a 3-node Kafka cluster, visit the [kpow-local](https://github.com/operatr-io/kpow-local) GitHub repository.

Instructions on how to start a [30-day free trial](https://kpow.io/#trial) of kPow can be found in the [kpow-local](https://github.com/operatr-io/kpow-local) README.

Visit https://docs.kpow.io/ for more documentation on getting started with kPow

# License

kPow is proprietary software. kPow's EULA can be found in the [GitHub repository](https://github.com/operatr-io/kpow-docker/blob/main/resources/eula.txt) or at https://kpow.io/eula/

The Dockerfile's and [kpow-docker](https://github.com/operatr-io/kpow-docker) repository are licensed under the Eclipse Public License 1.0 (EPL-1.0)