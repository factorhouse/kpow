[![Release to DockerHub](https://github.com/factorhouse/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/factorhouse/kpow/actions/workflows/release.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/operatr/kpow)
![Docker Stars](https://img.shields.io/docker/stars/operatr/kpow)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kpow)](https://artifacthub.io/packages/search?repo=kpow)

# Kpow for Apache Kafka

[Kpow](https://factorhouse.io/kpow) - The Ultimate Engineering Toolkit for [Apache Kafka®](http://kafka.apache.org/)

See the [Changelog](https://factorhouse.io/kpow/changelog) for release information or [our blog](https://factorhouse.io/blog/releases/) for full notes on each release and JAR artefacts.

Kpow is an Enterprise-grade toolkit for engineers working with Apache Kafka that:

* Ships as a single docker-container or JAR file
* You deploy and secure like any other Enterprise web-application
* Runs air-gapped with all information stored within your Kafka cluster(s)
* Is trusted by the world's largest companies, from publishing to payments networks
* Has a simple, transparent pricing structure
* Is built and supported by an engineering-lead team deeply experienced in Kafka delivery

The Kpow image is available directly from [Docker Hub](https://hub.docker.com/r/factorhouse/kpow). Images are built using [GitHub Actions](https://github.com/factorhouse/kpow/actions/workflows/release.yml).

# Usage

Visit our [Get Started](https://factorhouse.io/kpow/get-started) page to learn more about Kpow.

## Community Edition

The free version of Kpow can be found here:

```
docker pull factorhouse/kpow-ce:93.4
```

## Standard and Enterprise Edition

Paying customers using the Standard or Enterprise Edition can use the following Docker image:

```
docker pull factorhouse/kpow-ee:93.4
```

Instructions on how to start a 30-day free trial of Kpow can be found [here](https://factorhouse.io/kpow/get-started).

# Documentation

Kpow's documentation is available at [https://docs.factorhouse.io/kpow-ee/](https://docs.factorhouse.io/kpow-ee/).

# Local Development with Docker Compose

See [kpow-local](https://github.com/factorhouse/kpow-local) to get started with local Kpow and a 3-node Kafka cluster in Docker Compose.

# Quick Starts

Running in ECS / EKS / Fargate / EC2 / Kubernetes? See our [Helm Charts](https://github.com/factorhouse/kpow-helm-charts).

# License

Kpow is proprietary software. Kpow's EULA can be found [here](https://github.com/factorhouse/kpow/blob/main/resources/eula.txt) or at [https://factorhouse.io/kpow/eula/](https://factorhouse.io/kpow/eula/)

This repository is distributed under the Apache 2.0 License.

Copyright (c) [Factor House](https://factorhouse.io)
