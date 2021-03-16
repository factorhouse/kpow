Dockerfile for [kPow](https://kpow.io) - The Ultimate Engineering Toolkit for [Apache Kafka®](https://kafka.apache.org/)

# Quick reference

* **Maintained by**: [the Operatr.io team](https://github.com/operatr-io/kpow-docker)
* **Where to get help**: [GitHub](https://github.com/operatr-io/kpow-docker), [our engineering Slack](https://join.slack.com/t/operatr-io/shared_invite/zt-dts4pbtt-flBE4695OrU3YW1fS5mFCw), [kPow documentation](http://docs.kpow.io/)

# Supported tags respective `Dockerfile` links

* [67](https://hub.docker.com/layers/140734411/operatr/kpow/67/images/sha256-619972c7e808fbf3237495a1144c366dfa19d4949c3c8087226191c199ff3c53?context=explore), [latest](https://hub.docker.com/layers/126256217/operatr/kpow/latest/images/sha256-619972c7e808fbf3237495a1144c366dfa19d4949c3c8087226191c199ff3c53?context=explore)
* [67-rh-ubi](https://hub.docker.com/layers/140735081/operatr/kpow/67-rh-ubi/images/sha256-0e40a27a314f3552960b37d58c34fa49df313307a831b7dc5443789d9791b78e?context=explore)

# Quick reference (cont.)

* **Where to file issues:** https://github.com/operatr-io/kpow-docker/issues
* **Published image artifact details:** [GitHub actions CI](https://github.com/operatr-io/kpow-docker/actions/workflows/build.yml)
* **Image updates**: https://github.com/operatr-io/kpow-docker/tags
* **Source of this description**: [dockerhub/README.md](https://github.com/operatr-io/kpow-docker/blob/main/dockerhub/README.md)

# What is kPow?

kPow is the Ultimate Engineering Toolkit for [Apache Kafka®](https://kafka.apache.org/)

Use kPow’s intuitive Kafka UI to gain instant visibility of your Kafka brokers, topics, partitions, offsets, groups, members, assignments, streams, and more.

Visit https://demo.operatr.io to view a demo of kPow directly from your browser.

![ui-screenshot](https://kpow.io/wp-content/uploads/2020/10/topic-high-1.png)

# Compatibility

kPow is compatible with **Apache Kafka 1.0+.**

kPow has been tested and is compatible with [Apache Kafka](https://kafka.apache.org/), [Red Had AMQ Streams](https://www.redhat.com/en/resources/amq-streams-datasheet), [Aiven Managed Kafka](https://aiven.io/kafka), [Instaclustr Managed Kafka](https://www.instaclustr.com/products/managed-apache-kafka/), [Confluent Platform](https://www.confluent.io/product/confluent-platform), [Confluent Cloud](https://www.confluent.io/confluent-cloud)**\*** and [Azure Event Hubs](https://azure.microsoft.com/en-us/services/event-hubs/)**\***.

\*Some disk related metrics and telemetry are not available when using kPow with Confluent Cloud and Azure Event Hubs.

# Quick start + local evaluation

To evaluate kPow locally with Docker Compose and a 3-node Kafka cluster, visit the [kpow-local](https://github.com/operatr-io/kpow-local) GitHub repository.

Instructions on how to start a [30-day free trial](https://kpow.io/#trial) of kPow can be found in the repositories README.

# License

kPow is proprietary software. kPow's EULA can be found in the [GitHub repository](https://github.com/operatr-io/kpow-docker/blob/main/resources/eula.txt) or at https://kpow.io/eula/

The Dockerfile's and [kpow-docker](https://github.com/operatr/kpow-docker) repository are licensed under the Eclipse Public License 1.0 (EPL-1.0)
