[![Release to DockerHub](https://github.com/factorhouse/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/factorhouse/kpow/actions/workflows/release.yml)

Dockerfile for the enterprise edition of [Kpow](https://kpow.io) - The Ultimate Engineering Toolkit for [Apache Kafka®](https://kafka.apache.org/)

**Note**: This repository is for the [Enterprise Edition](https://kpow.io/pricing) of Kpow. 

*  The Community Edition DockerHub repository can be found at [factorhouse/kpow-ce](https://hub.docker.com/r/factorhouse/kpow-ce) 
*  The Standard Edition DockerHub repository can be found at [factorhouse/kpow-se](https://hub.docker.com/r/factorhouse/kpow-se) 

View [Features](https://kpow.io/features) to compare editions.

# Quick reference

* **Maintained by**: [the Factor House team](https://github.com/factorhouse/kpow)
* **Where to get help**: [GitHub](https://github.com/factorhouse/kpow), [Kpow documentation](http://docs.kpow.io/), [Support Hub](https://kpow.io/support)

# Supported tags respective `Dockerfile` links

<!--- StartReleaseLinks --->

* [92.4, latest](https://github.com/factorhouse/kpow/blob/main/dockerfile/kpow/Dockerfile)
* [92.4-alpine](https://github.com/factorhouse/kpow/blob/main/dockerfile/alpine/Dockerfile)
* [92.4-jdk17](https://github.com/factorhouse/kpow/blob/main/dockerfile/jdk17/Dockerfile)
* [92.4-rh-ubi](https://github.com/factorhouse/kpow/blob/main/dockerfile/rh-ubi/Dockerfile)

<!--- EndReleaseLinks --->

# Quick reference (cont.)

* **Where to file issues:** https://github.com/factorhouse/kpow/issues
* **Published image artifact details:** [GitHub actions CI](https://github.com/factorhouse/kpow/actions/workflows/build.yml)
* **Image updates**: https://github.com/factorhouse/kpow/tags
* **Source of this description**: [dockerhub/kpow-ee/README.md](https://github.com/factorhouse/kpow/blob/main/dockerhub/kpow-ee/README.md)

# What is Kpow?

### An Engineering Toolkit for Apache Kafka®

Kpow is the toolkit that empowers your team to deliver with Kafka.

Once installed, Kpow gathers information about your Kafka resources every minute, stores the results locally in internal topics, then provides custom telemetry and insights to you in a rich data-oriented UI.

### X-Ray Vision of Kafka Resources

Gain instant visibility of your brokers, topics, groups, partitions, offsets, and more.

Kpow offers full support for controlling and monitoring Kafka Connect clusters and Schema Registries.

![Kpow provides x-ray vision of Kafka resources](https://docs.factorhouse.io/img/assets/overview-xray.png)

### Deep Data Inspect with kJQ

Search **tens of thousands of messages a second** with Kpow’s unique, custom implementation of JQ-like queries for Kafka topics. 

**kJQ** works with JSON or JSON-like data including Apache Avro®, Transit, EDN, and even Protobuf messages where you have configured custom serdes to output JSON formatted text.

![Search tens of thousands of messages a second with kJQ](https://docs.factorhouse.io/img/assets/data-inspect-with-data.png)

### Compute Console to Control and Monitor Streams

Brokers, topics, and the data on them tell only one part of the Kafka story.

Kpow Compute provides access to your consumer \(and soon, _Kafka Streams_\) topologies allowing **visualization of message throughput and lag** at point of consumption and the ability to **reset consumption** at a group, host, member, topic, or assignment level.

![Kpow Compute provides visualization and control of consumption](https://docs.factorhouse.io/img/assets/streams-topology-usage.png)

### Built for the Enterprise

Kpow comes from a practical application of Kafka to real-world requirements and provides:

* **User Authentication** via DB, File, LDAP, SAML, or OpenID configuration.
* **User Authorization** with Simple or Role Based Access Controls \(RBAC\).
* **Data Policies** for masking and redaction of sensitive data like Credit Card or PII.
* **Data Governance** with all user actions captured in the Kpow audit log.
* **Slack Integration** to have user actions sent to an operations channel as they happen.
* **HTTPS** easily configured with your own certificates, or integrated with a reverse-proxy.
* **Prometheus** endpoints to integrate with your preferred metrics and alerting systems.
* **Multi-Cluster Monitoring** from a single installation for cost efficiency and simplicity.
* **All data in local topics** makes Kpow perfect for air-gapped environments.

![Kpow is easily configured with LDAP for User Authentication](https://docs.factorhouse.io/img/assets/login-jetty.png)

### And Much More..

**Live Mode** for real-time monitoring, **Multi-Dimensional Consumer Lag** insights from Kpow's custom derived telemetry, **No Requirement for JMX** access, discover all of our features in this [guide](https://docs.kpow.io).


# Compatibility

Kpow is compatible with **Apache Kafka 1.0+.**

Kpow has been tested and is compatible with [Apache Kafka](https://kafka.apache.org/), [Amazon MSK](https://aws.amazon.com/msk/), [Amazon MSK Serverless](https://aws.amazon.com/msk/features/msk-serverless/), [Red Had AMQ Streams](https://www.redhat.com/en/resources/amq-streams-datasheet), [Aiven Managed Kafka](https://aiven.io/kafka), [Instaclustr Managed Kafka](https://www.instaclustr.com/products/managed-apache-kafka/), [Confluent Platform](https://www.confluent.io/product/confluent-platform), [Confluent Cloud](https://www.confluent.io/confluent-cloud)**\***, [Azure Event Hubs](https://azure.microsoft.com/en-us/services/event-hubs/)**\*** and [Vectorized Redpanda](https://vectorized.io/redpanda/)**\***.

\*Some disk related metrics and telemetry are not available when using Kpow with Confluent Cloud, Azure Event Hubs and Redpanda.

# Quick start + local evaluation

To evaluate Kpow locally with Docker Compose and a 3-node Kafka cluster, visit the [kpow-local](https://github.com/factorhouse/kpow-local) GitHub repository.

Instructions on how to start a [30-day free trial](https://kpow.io/#trial) of Kpow can be found in the [kpow-local](https://github.com/factorhouse/kpow-local) README.

Visit https://docs.kpow.io/ for more documentation on getting started with Kpow

# License

Kpow is proprietary software. Kpow's EULA can be found in the [GitHub repository](https://github.com/factorhouse/kpow/blob/main/resources/eula.txt) or at https://kpow.io/eula/

The Dockerfile's and [kpow](https://github.com/factorhouse/kpow) repository are licensed under the Eclipse Public License 1.0 (EPL-1.0)