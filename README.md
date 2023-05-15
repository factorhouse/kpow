[![Release to DockerHub](https://github.com/operatr-io/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/operatr-io/kpow/actions/workflows/release.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/operatr/kpow)
![Docker Stars](https://img.shields.io/docker/stars/operatr/kpow)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kpow)](https://artifacthub.io/packages/search?repo=kpow)

# Kpow for Apache Kafka

[Kpow](https://kpow.io) - The Ultimate Engineering Toolkit for [Apache Kafka®](http://kafka.apache.org/)

See the [Changelog](CHANGELOG.md) for release information or [our blog](https://kpow.io/category/releases/) for full notes on each release and JAR artefacts.

Kpow is an Enterprise-grade toolkit for engineers working with Apache Kafka that:

* Ships as a single docker-container or JAR file
* You deploy and secure like any other Enterprise web-application
* Runs air-gapped with all information stored within your Kafka cluster(s)
* Is trusted by the world's largest companies, from publishing to payments networks
* Has a simple, transparent pricing structure
* Is built and supported by an engineering-lead team deeply experienced in Kafka delivery

The Kpow image is available directly from [Docker Hub](https://hub.docker.com/r/operatr/kpow). Images are built using [GitHub Actions](https://github.com/operatr-io/kpow/actions/workflows/build.yml).

# Usage

Visit our [Get Started](https://kpow.io/get-started) page to learn more about Kpow.

## Community Edition

The free version of Kpow can be found here:

```
docker pull factorhouse/kpow-ce:91.2.1
```

## Standard and Enterprise Edition

Paying customers using the Standard or Enterprise Edition can use the following Docker image:

```
docker pull factorhouse/kpow-ee:91.3.1
```

Instructions on how to start a 30-day free trial of Kpow Standard Edition can be found [here](https://kpow.io/get-started/#standard).

# Documentation

Kpow's documentation is available at [https://docs.kpow.io](https://docs.kpow.io)

# Local Development

To use Kpow Community Edition locally with Docker Compose and a 3-node Kafka cluster, visit the [kpow-local](https://github.com/operatr-io/kpow-local) GitHub repository to get started.

# Quick Starts

Running in ECS / EKS / Fargate / EC2 / Kubernetes? See our [Helm](https://github.com/operatr-io/kpow-helm-charts) and [CloudFormation](https://github.com/operatr-io/kpow-cloudformation) quicks start guides.

# License

Kpow is proprietary software. 

Kpow's EULA can be found in the [GitHub repository](https://github.com/operatr-io/kpow/blob/main/resources/eula.txt) or at https://kpow.io/eula/

This repository is licensed under the Eclipse Public License 1.0 (EPL-1.0)
