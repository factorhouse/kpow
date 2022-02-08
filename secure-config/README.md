# Kpow Secure Configuration

This guide demonstrates how to [encrypt]() or [obfuscate]() Kpow configuration to avoid sensitive variables in plaintext.

## Secure Deployment

Kpow is deployed as a single Docker container and is built from standard Enterprise Java frameworks like [Jetty](https://www.eclipse.org/jetty/).

Designed to run air-gapped and in use by payment networks to punchy startups, Kpow is deployed in every cloud and on-premise.

Kpow is conveniently secured the same way as any other Enterprise web-application in your organisation, often that means sensitive variables provided by a [secret manager or vault](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html). You may not require further support with sensitive variables.

## Kpow Configuration

Kpow is mostly configured via environment variables, with some further configuration being file-based.

Kpow accepts all environment variables and certain sensitive file-based variables as AES encrypted or OBF (Jetty) obfuscated text.

Full documentation for all configuration can be found at [docs.kpow.io](https://docs.kpow.io):

* [Kpow Environment Variable Guide](https://docs.kpow.io/config/environment-variables)
* [Role Based Access Control Configuration](https://docs.kpow.io/authorization/role-based-access-control)
* [Multi-Tenancy Configuration](https://docs.kpow.io/authorization/tenants)
* [Data/PII Masking Configuration](https://docs.kpow.io/features/data-policies)
* [LDAP/Jaas Authentication Configuration](https://docs.kpow.io/authentication/ldap#jaas-configuration)
* [File Based Authentication Configuration](https://docs.kpow.io/authentication/file)

## Quick Start

Kpow accepts all environment variables in either AES or OBF format, encoding details follow in this guide.

#### Shell Script with AES Variables  

This script configures Kpow with a `KPOW_SECURE_KEY` and a mixture of encrypted and plain variables.

```bash
# license variables removed
KPOW_SECURE_KEY="XT65RFOuw34GgP+ohBE4J8SwXX0OwoVzQf4KcA4zzaY=" \
ENVIRONMENT_NAME="UAT2 - Trading Book" \
BOOTSTRAP="AES:ARDGXF5y5sG0sPZdACdCyQUO6nVKhpCrkCP//NbrOJEuzO2D22RrocfNJG0J5zegfC4BKznqlQQEI0jU45sKqyRV" \
SECURITY_PROTOCOL="AES:ARDZjxJjLyFJBekswaPK1AGYzO9tUmkqVFxI/wEVvMMVzg==" \
SASL_MECHANISM="AES:ARAM9+ZmMGKfhK8pFufBMnIV3rPMU+MYrITh+3Yauct2wQ==" \
SASL_JAAS_CONFIG="AES:ARBxaOuPOPvyJqyq791yGAAi1eUGVjMgXGoBSRmrw7OTb3EzVjURa15Zuszh8mFCi1990vuKocSV0KHXf9auLn4UmdDjJa5WEuWlvYgefiG6RwWxV3YamITl2Wvuazj8V4c2jkwPb1DkhTylDVJmiYHTrcXSWoYJ4Hiv5EYMOC2x5Q==" \
AUTH_PROVIDER_TYPE="jetty" \
RBAC_CONFIGURATION_FILE="./dev-resources/rbac/jetty.yml" \
java -Djava.security.auth.login.config=dev-resources/jaas/ldap.conf -jar -Xmx2G ./latest-kpow.jar
```

#### LDAP Jaas Configuration with AES bindPassword

```bash
kpow {
  io.kpow.jaas.spi.LdapLoginModule required
  useLdaps="true"
  contextFactory="com.sun.jndi.ldap.LdapCtxFactory"
  hostname="test-ldap-server.com"
  port="616"
  bindDn="test@ad.test-ldap-server.com"
  bindPassword="AES:ARDZjxJjLyFJBekswaPK1AGYzO9tUmkqVFxI/wEVvMMVzg=="
  authenticationMethod="simple"
  forceBindingLogin="true"
  userBaseDn="DC=ad,DC=test-ldap-server,DC=com"
  userRdnAttribute="sAMAccountName"
  userIdAttribute="sAMAccountName"
  userObjectClass="user"
  roleBaseDn="OU=Distribution Groups,OU=Exchange Objects,OU=Melbourne,DC=ad,DC=test-ldap-user,DC=com"
  roleNameAttribute="cn"
  roleMemberAttribute="member"
  roleObjectClass="group";
};
```

## Sensitive Configuration

Any configuration that should not be observed in plaintext is considered sensitive.

### Kafka Configuration

Kpow connects to your Kafka resources using standard Java Kafka clients, these clients may require plaintext authentication variables.

#### Kafka Cluster Configuration

Environment variables that you might encrypt or obfuscate for Kafka cluster configuration include:

```bash

```