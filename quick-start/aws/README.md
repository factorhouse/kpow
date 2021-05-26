# Run kPow(https://kpow.io) in ECS with CloudFormation

This quick start provides help getting kPow up and running in AWS in minutes.

kPow is the perfect companion to [Amazon MSK](https://aws.amazon.com/msk/) and is easily configured to run in ECS/Fargate/EC2/EKS.

See our [documentation](https://docs.kpow.io/) for full installation options and licensing information.

See our [AWS Marketplace Guide](https://docs.kpow.io/installation/aws-marketplace) for information on our AWS Marketplace listing, including the IAM roles and permissions required by kPow.

## Deploying to ECS or EKS.

kPow is a great fit for ECS or EKS because it a **single docker container** with **zero dependencies**.

kPow has a suggested allocation of **2GB heap** making it ideal for provisioning as a FARGATE task.

kPow connects to your Kafka cluster with exactly the same configuration as a Kafka Producer or Consumer.

This quick start provides CloudFormation scripts to run a kPow in ECS, for EKS installation support see our Kubernetes / Helm Quick Start.

## Licensing Options

The kPow container is available in two places for AWS Customers.

* [Dockerhub](https://hub.docker.com/r/operatr/kpow) requires a license, [start a free 30-day trial](https://kpow.io/try) today.
* [AWS Marketplace](https://aws.amazon.com/marketplace/seller-profile?id=ab356f1d-3394-4523-b5d4-b339e3cca9e0&ref=dtl_B084BTWJHD) is automatically licensed, simply click subscribe and pay via your AWS bill.

## CloudFormation

This repository contains configuration for a kPow Cloudformation Stack.

* **kpow-dockerhub.yaml** includes license parameters
* **kpow-aws-marketplace.yaml** includes the AWSMarketplaceMetering/registerUsage IAM policy

This configuration is provided as a quick-start demonstration of simple provisioning and configuration options, and is for example purposes only. You may extend it however you need to fit your own purposes.

This configuration defines the following resources:

* **AWS::ECS::TaskDefinition** to run your kPow container.
* **AWS::ECS::Service** containing the Task, provisioned within a Subnet designated by you.
* **AWS::EC2::SecurityGroup** with permissive egress to ECR/Kafka and ingress on the UI port.
* **AWS::IAM::Role** providing IAM actions to ECS, Logs, and Marketplace:RegisterUsage (if applicable).

In order for kPow to run correctly you may need to ***alter your Kafka Cluster Security Group to allow ingress on the port of the bootstrap URL*** (eg. 9092, 9094 for MSK w/ SSL connections, etc).

## Authentication & Encryption

kPow supports all standard Kafka client authentication options, configured via environment variables.

The Cloudformation scripts provided here support PLAIN and SASL connections.

## Known Issues

If stack creation fails with a 'CannotPullContainer' error please either:

* Select the 'Auto-Assign-Public-IP' deployment option; or,
* Ensure the subenet you choose to deploy kPow into has access to a NAT.

This is required to pull your kPow subscription container image, see [here for more information](https://github.com/aws/amazon-ecs-agent/issues/1128).

