[![Release to DockerHub](https://github.com/operatr-io/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/operatr-io/kpow/actions/workflows/release.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/operatr/operatr)
![Docker Stars](https://img.shields.io/docker/stars/operatr/kpow)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kpow)](https://artifacthub.io/packages/search?repo=kpow)

# kPow for Apache Kafka

[kPow](https://kpow.io) - The Ultimate Engineering Toolkit for [Apache Kafka®](http://kafka.apache.org/)

See the [Changelog](CHANGELOG.md) for release information or [our blog](https://kpow.io/category/releases/) for full notes on each release and JAR artefacts.

Kpow is an Enterprise-grade toolkit for engineers working with Apache Kafka that:

* Ships as a single docker-container or JAR file
* You deploy and secure like any other Enterprise web-application
* Runs air-gapped with all information stored within your Kafka cluster(s)
* Is trusted by the world's largest companies, from publishing to payments networks
* Has a simple, transparent pricing structure
* Is built and supported by an engineering-lead team deeply experienced in Kafka delivery

The kPow image is available directly from [Docker Hub](https://hub.docker.com/r/operatr/kpow). Images are built using [GitHub Actions](https://github.com/operatr-io/kpow/actions/workflows/build.yml).

# Usage

To use the kPow images from DockerHub run:

```
docker pull operatr/kpow:88.7
```

kPow's documentation is available at [https://docs.kpow.io](https://docs.kpow.io)

# Quick Starts

Running in ECS / EKS / Fargate / EC2 / Kubernetes? See our [Helm](https://github.com/operatr-io/kpow-helm-charts) and [CloudFormation](https://github.com/operatr-io/kpow-cloudformation) quicks start guides.

# Local Evaluation

To evaluate kPow locally with Docker Compose and a 3-node Kafka cluster, visit the [kpow-local](https://github.com/operatr-io/kpow-local) GitHub repository.

Instructions on how to start a [30-day free trial](https://kpow.io/try) of kPow can be found in the [kpow-local](https://github.com/operatr-io/kpow-local) README.

Visit [https://docs.kpow.io/](https://docs.kpow.io) for more documentation on getting started with kPow

# License

kPow is proprietary software. 

kPow's EULA can be found in the [GitHub repository](https://github.com/operatr-io/kpow/blob/main/resources/eula.txt) or at https://kpow.io/eula/

This repository is licensed under the Eclipse Public License 1.0 (EPL-1.0)
