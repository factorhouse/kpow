<img width="64" height="64" alt="kpow" src="https://github.com/user-attachments/assets/998b54db-fe96-4ba4-82d5-62652e9b90ad" /><br />

[![Release to DockerHub](https://github.com/factorhouse/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/factorhouse/kpow/actions/workflows/release.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/operatr/kpow)
![Docker Stars](https://img.shields.io/docker/stars/operatr/kpow)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kpow)](https://artifacthub.io/packages/helm/factor-house/kpow)

# Kpow for Apache Kafka

[Kpow](https://factorhouse.io/kpow) - The Ultimate Engineering Toolkit for [Apache Kafka®](http://kafka.apache.org/)

![kpow-screen](https://github.com/user-attachments/assets/3c8d4f4e-2dd5-4f1e-ae79-2e1d4074761e)

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
docker pull factorhouse/kpow-ce:95.2
```

## Enterprise Edition

Paying customers using the Enterprise Edition can use the following Docker image:

```
docker pull factorhouse/kpow:95.2
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
