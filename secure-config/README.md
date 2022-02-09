# Kpow Secure Configuration

This guide demonstrates how to [encrypt](https://github.com/operatr-io/kpow/tree/main/secure-config#aes-encrypted-variables) or [obfuscate](https://github.com/operatr-io/kpow/tree/main/secure-config#obf-encoded-variables) Kpow configuration to avoid sensitive variables in plaintext.

## Secure Deployment

Kpow is deployed as a single Docker container and is built from standard Enterprise Java frameworks like [Jetty](https://www.eclipse.org/jetty/).

Designed to run air-gapped and in use by payment networks to punchy startups, Kpow is deployed in every cloud and on-premise.

Kpow is conveniently secured the same way as any other Enterprise web-application in your organisation, often that means sensitive variables provided by a [secret manager or vault](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html). You may not need to employ the sensitive variable techniques provided in this guide.

## Kpow Configuration

Kpow is mostly configured via environment variables, with some further configuration being file-based.

Full documentation for all configuration can be found at [docs.kpow.io](https://docs.kpow.io):

* [Kpow Environment Variable Guide](https://docs.kpow.io/config/environment-variables)
* [Role Based Access Control Configuration](https://docs.kpow.io/authorization/role-based-access-control)
* [Multi-Tenancy Configuration](https://docs.kpow.io/authorization/tenants)
* [Data/PII Masking Configuration](https://docs.kpow.io/features/data-policies)
* [LDAP/Jaas Authentication Configuration](https://docs.kpow.io/authentication/ldap#jaas-configuration)
* [File Based Authentication Configuration](https://docs.kpow.io/authentication/file)

## Quick Start

Kpow accepts all environment variables and some file-based variables as AES encrypted or OBF (Jetty) obfuscated text.

#### Example Shell Script with AES Encrypted Environment Variables  

This script defines a `KPOW_SECURE_KEY` and a mixture of encrypted and plain variables.

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

#### Example LDAP JAAS Configuration with AES Encrypted 'bindPassword'

Kpow accepts the bindPassword variable in LDAP JAAS configuration in AES or OBF format.

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

## AES Encrypted Variables

Kpow provides support for encrypted variables by integrating the open-source [Kpow-Secure](https://github.com/operatr-io/kpow-secure) library.

See the [library documentation](https://github.com/operatr-io/kpow-secure) for full details on secure config with standard Java AES encryption and PBKDF2 key generation.

### AES Encryption Steps

Securing Kpow variables with AES encryption is simple:

* First we generate a master encryption key
* Then we encrypt our variables with that key
* Where we configure encrypted variables we prefix them with `AES`
* Finally, we provide the master key to Kpow via the `KPOW_SECURE_KEY`

#### Download the latest Kpow JAR file

The latest Kpow JAR artifact is always listed in our [CHANGELOG.md](https://github.com/operatr-io/kpow/blob/main/CHANGELOG.md#latest-release-artifacts) file.

#### Create a file containing your passphrase

Normal passphrase rules apply, longer passphrases with more unique characters are more secure.

```
vi passhphrase.txt
```

The passphrase is read from file to avoid observation in your shell history.

#### Generate a new master encryption key

When generating a key, specify a `--salt` if you require the ability to regenerate the key.

```bash
java -cp ./kpow-2022-02-17.jar kpow.secure.key --pass-file passhphrase.txt --out-file passphrase.key
```

```bash
13:25:58.951 INFO  [main] kpow.secure.key –

Kpow Secure Key:
----------------

wjDYJgpvFWOGq1G9CkT1szG6yHxQDN1iu8OBgzTyrM0=

Key file written to: passphrase.key

Random salt used, this key cannot be regenerated.
```

## OBF Encoded Variables

Kpow provides support for obfuscated variables by integrating the open-source [Jetty Password](https://www.eclipse.org/jetty/javadoc/jetty-10/org/eclipse/jetty/util/security/Password.html) utility.
