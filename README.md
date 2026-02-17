<img width="64" height="64" alt="kpow" src="https://github.com/user-attachments/assets/998b54db-fe96-4ba4-82d5-62652e9b90ad" />

# Kpow — Enterprise-grade Kafka UI for Apache Kafka®

[![Release to DockerHub](https://github.com/factorhouse/kpow/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/factorhouse/kpow/actions/workflows/release.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/operatr/kpow)
![Docker Stars](https://img.shields.io/docker/stars/operatr/kpow)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kpow)](https://artifacthub.io/packages/helm/factor-house/kpow)

Kpow is an enterprise-grade Kafka UI and engineering toolkit for Apache Kafka®.

Learn more about Kpow at https://factorhouse.io/products/kpow.

![kpow-screen](https://github.com/user-attachments/assets/3c8d4f4e-2dd5-4f1e-ae79-2e1d4074761e)

> Kpow provides a secure, production-ready web UI for inspecting, managing, and operating Kafka clusters.

See the [Changelog](https://factorhouse.io/changelog?tab=kpow) for release information or [our blog](https://factorhouse.io/releases/) for full notes on each release and JAR artefacts.

---

## What is Kpow?

Kpow is an enterprise-grade Kafka UI for Apache Kafka that helps engineers inspect, manage, and operate Kafka clusters in production environments. It is designed for teams running Kafka at scale who need visibility, control, and safety across environments, including secured and air-gapped deployments.

## About this repository

This repository contains the official release artifacts for Kpow. It is used to publish and distribute Docker images and deployment references for running Kpow in production environments.

The Kpow image is available directly from [Docker Hub](https://hub.docker.com/r/factorhouse/kpow). Images are built using [GitHub Actions](https://github.com/factorhouse/kpow/actions/workflows/release.yml).

## How to run Kpow

Kpow can be run in several common deployment environments.

### Docker

Kpow can be run directly using Docker for local development, testing, or production environments.

#### Community Edition image:

`docker pull factorhouse/kpow-ce:95.3`

#### Enterprise Edition image:

`docker pull factorhouse/kpow:95.3`

### Kubernetes (Helm)

For Kubernetes environments (including EKS, ECS, Fargate, EC2, and other managed clusters), Kpow is deployed using Helm charts.

See the official Helm charts at: https://github.com/factorhouse/helm-charts

### Local development

For local development and experimentation, we recommend using [Factor House Local](https://github.com/factorhouse/factorhouse-local).

Factor House Local provides Docker Compose environments for developing modern data platform architectures using Kafka, Flink, Spark, Iceberg, OpenLineage, OpenMetadata, Pinot, ClickHouse, StarRocks, along with Kpow and Flex.
It is a great starting point if you want to explore Kpow or Flex in the context of a broader data platform, or if you are evaluating how these tools fit into your existing stack.

If you are specifically looking to run Kafka and Kpow only, you can use [Kpow Local](https://github.com/factorhouse/kpow-local). Kpow Local provides a lightweight Docker Compose setup for running a local Kafka cluster alongside Kpow.

## Licenses and editions

Kpow and Flex are available under three licensing options, depending on your use case.

### 30-day free trial (recommended)

The 30-day free trial provides access to the full-featured Enterprise Edition of Kpow.

During the trial period, you can evaluate advanced capabilities including:

- role-based access control (RBAC)
- audit logs
- single sign-on (SSO) integration
- enterprise security and operational features

The Enterprise Edition can be deployed in your preferred environment, including:

- Kubernetes via Helm
- AWS Marketplace
- virtual machines or container platforms

No credit card is required to start a 30-day free trial.

We generally recommend starting with the free trial to evaluate Kpow in a realistic production-like setup.

[Start your free trial of Kpow](https://account.factorhouse.io/cta_action/provision_license_type?code=KPOW_TRIAL)

### Enterprise license

The Enterprise License is designed for teams running Kafka in production environments at scale.

It includes the full Enterprise feature set and commercial support, and is suitable for long-running, production deployments.

If you are planning a production rollout or would like guidance from our team, we recommend either starting with the 30-day free trial or contacting the Factor House team directly.

Contact sales:
sales@factorhouse.io

### Factor House Community License (free)

The Factor House Community License allows you to run the Community Edition of Kpow or Flex. This option is ideal for local development, learning and experimentation, and ephemeral or non-production environments

The Community Edition is distributed via the Community Edition Docker images and does not require a commercial agreement.

[Get started with a community license](https://account.factorhouse.io/cta_action/provision_license_type?code=COMMUNITY)

# Documentation

Kpow's documentation is available at [https://docs.factorhouse.io/kpow](https://docs.factorhouse.io/kpow).

# License

Kpow is proprietary software. Kpow's EULA can be found [here](https://github.com/factorhouse/kpow/blob/main/resources/eula.txt) or at [https://factorhouse.io/kpow/eula/](https://factorhouse.io/kpow/eula/)

This repository is distributed under the Apache 2.0 License.

Copyright (c) [Factor House](https://factorhouse.io)
