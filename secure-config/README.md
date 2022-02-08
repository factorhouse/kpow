# Kpow Secure Configuration

This guide demonstrates how to [encrypt]() or [obfuscate]() Kpow configuration to avoid sensitive variables in plaintext.

## Secure Deployment

Kpow is deployed as a single Docker container and is built from standard Enterprise Java frameworks like [Jetty](https://www.eclipse.org/jetty/).

Designed to run air-gapped and in use by payment networks to punchy startups, Kpow is deployed in every cloud and on-premise.

Kpow is conveniently secured the same way as any other Enterprise web-application in your organisation, often that means sensitive variables provided by a [secret manager or vault](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html).

Kpow also accept all environment variables and certain sensitive file-based variables as AES encrypted or OBF (Jetty) obfuscated text.

## Kpow Configuration

Kpow is mostly configured via environment variables, with some further configuration being file-based.

* [Kpow Environment Variable Guide](https://docs.kpow.io/config/environment-variables)
* [Role Based Access Control Configuration](https://docs.kpow.io/authorization/role-based-access-control)
* [Multi-Tenancy Configuration](https://docs.kpow.io/authorization/tenants)
* [Data/PII Masking Configuration](https://docs.kpow.io/features/data-policies)
* [LDAP/Jaas Authentication Configuration](https://docs.kpow.io/authentication/ldap#jaas-configuration)