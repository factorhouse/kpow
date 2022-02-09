# Kpow Secure Configuration

This guide demonstrates how to [encrypt](#aes-encrypted-variables) or [obfuscate](#obf-encoded-variables) Kpow configuration to avoid sensitive variables in plaintext.

## Contents

* [Kpow Deployment Notes](#kpow-deployment-notes)
* [Kpow Configuration](#kpow-configuration)
* [Secure Variables Quick Start](#secure-variables-quick-start)
  * [AES Encrypted Environment Variables Example](#example-shell-script-with-aes-encrypted-environment-variables)
  * [AES Encrypted LDAP JAAS 'bindPassword' Example](#example-ldap-jaas-configuration-with-aes-encrypted-bindpassword)
* [AES Encrypted Variables](#aes-encrypted-variables)
  * [AES Encryption Steps](#aes-encryption-steps)
    * [Download](#download-the-latest-kpow-jar-file) the latest Kpow JAR file
    * [Generate](#generate-a-master-encryption-key) a master encryption key
    * [Encrypt](#encrypt-sensitive-variables) sensitive variables
    * [Configure](#configure-encrypted-variables) encrypted variables
    * [Provide](#provide-the-master-key-to-kpow) the master key to Kpow
* [OBF Obfuscated Variables](#obf-obfuscated-variables)
  * [OBF Obfuscation Steps](#obf-obfuscation-steps)
    * [Download](#download-the-latest-kpow-jar) the latest Kpow JAR file
    * [Obfuscate](#obfuscate-sensitive-variables) sensitive variables
    * [Configure](#configure-obfuscated-variables) obfuscated variables
* [Using Kpow Secure Configuration in your Kafka Client Application](#using-kpow-secure-configuration-in-your-kafka-client-application)
  * [AES Encrypted Client Configuration](#aes-encrypted-client-configuration)
  * [Kpow Secure Java API for Decryption](#kpow-secure-java-api-for-decryption)


## Kpow Deployment Notes

Kpow is deployed as a single Docker container and is built from standard Enterprise Java frameworks like [Jetty](https://www.eclipse.org/jetty/).

Designed to run air-gapped and used by punchy startups to payment networks, Kpow is deployed in every cloud and on-premise.

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

## Secure Variables Quick Start

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

When encrypting with AES Kpow expects the `KPOW_SECURE_KEY` environment variable to be set.

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

Kpow provides support for strong encryption of variables by integrating the open-source [Kpow-Secure](https://github.com/operatr-io/kpow-secure) library.

See the [library documentation](https://github.com/operatr-io/kpow-secure) for full details on secure config with standard Java AES encryption and PBKDF2 key generation.

### AES Encryption Steps

Follow these simple steps to secure Kpow variables with AES encryption

* [Download](#download-the-latest-kpow-jar-file) the latest Kpow JAR file
* [Generate](#generate-a-master-encryption-key) a master encryption key
* [Encrypt](#encrypt-sensitive-variables) sensitive variables
* [Configure](#configure-encrypted-variables) encrypted variables
* [Provide](#provide-the-master-key-to-kpow) the master key to Kpow

#### Download the latest Kpow JAR file

The latest Kpow JAR artifact is always listed in our [CHANGELOG.md](https://github.com/operatr-io/kpow/blob/main/CHANGELOG.md#latest-release-artifacts) file.

#### Generate a master encryption key

Create a passphrase file, longer passphrases with more unique characters are more secure.

```
vi passhphrase.txt
```

The passphrase is read from file to avoid observation in your shell history.

Then generate a master encryption key using the Kpow JAR and the following command:

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

When generating a key, specify a `--salt` if you require the ability to regenerate the key.

#### Encrypt sensitive variables

Keystore and key passwords are a common variable that you may want to secure. 

```
SSL_KEYSTORE_PASSWORD=mykeystorepassword
```

Encrypt the text 'mykeystorepassword' with Kpow and your master key

 ```bash
java -cp ./kpow-2022-02-17.jar kpow.secure --key-file passphrase.key --encrypt mykeystorepassword
```

```bash
13:49:01.998 INFO  [main] kpow.secure –

Kpow Encrypted:
---------------

ARBtyl4hxANqbKPMFg4wEFCf3BJy+nKBkPYMIwK7SMS+jt1WxockS2HJSA50t+IjJU4=
```

#### Configure encrypted variables

Replace any sensitive plaintext variables with `AES:cipher-text`.

```
SSL_KEYSTORE_PASSWORD=AES:ARBtyl4hxANqbKPMFg4wEFCf3BJy+nKBkPYMIwK7SMS+jt1WxockS2HJSA50t+IjJU4=
```

#### Provide the master key to Kpow

Configure the `KPOW_SECURE_KEY` environment variable with your master key.

```
KPOW_SECURE_KEY=wjDYJgpvFWOGq1G9CkT1szG6yHxQDN1iu8OBgzTyrM0=
```

Kpow will now decrypt any AES encrypted variables with your master encryption key.

## OBF Encoded Variables

Kpow provides support for weak obfuscatation of variables by integrating the open-source [Jetty Password](https://www.eclipse.org/jetty/javadoc/jetty-10/org/eclipse/jetty/util/security/Password.html) utility.

### OBF Obfuscation Steps

Follow these simple steps to obfuscate Kpow variables with the Jetty Password utility.

* [Download](#download-the-latest-kpow-jar) the latest Kpow JAR file
* [Obfuscate](#obfuscate-sensitive-variables) sensitive variables
* [Configure](#configure-obfuscated-variables) obfuscated variables

#### Download the latest Kpow JAR

The latest Kpow JAR artifact is always listed in our [CHANGELOG.md](https://github.com/operatr-io/kpow/blob/main/CHANGELOG.md#latest-release-artifacts) file.

#### Obfuscate sensitive variables

Keystore and key passwords are a common variable that you may want to obfuscate.

```
SSL_KEYSTORE_PASSWORD=mykeystorepassword
```

Obfuscate the text 'mykeystorepassword' with Kpow and the Jetty Password utility

```bash
java -cp ./kpow-2022-02-17.jar org.eclipse.jetty.util.security.Password mykeystorepassword
```

```bash
mykeystorepassword
OBF:1uh41zly1w8r1wml1zt11ym71v9u1x8e1vnw1vn61x8g1v8s1ym71zsp1wnl1w8z1zlk1ugm
MD5:14a6a8ceae8529e0ec1a1f5ecc09e8de
```

#### Configure obfuscated variables

Replace any sensitive plaintext variables with `OBF:obfuscated-text`.

```
SSL_KEYSTORE_PASSWORD=OBF:1uh41zly1w8r1wml1zt11ym71v9u1x8e1vnw1vn61x8g1v8s1ym71zsp1wnl1w8z1zlk1ugm
```

Kpow will now deobfuscate any OBF encoded variables with the Jetty Password utility.

## Using Kpow Secure Configuration in your Kafka Client Application

Kpow provides support for strong encryption of variables by integrating the open-source [Kpow-Secure](https://github.com/operatr-io/kpow-secure) library.

You can use the Kpow-Secure library to encrypt sensitive Kafka client configuration for your own client applications, then use the convenience of the Decoder API to convert encrypted payloads into `java.util.Properties` files.

You can then `.putAll` decoded secure properties into your normal plaintext properties before starting any Kafka client.

### AES Encrypted Client Configuration

Kafka client configuration written to file in `java.util.Properties` format may look similar to:

```text
security.protocol: SASL_PLAINTEXT
sasl.mechanism: PLAIN
sasl.jaas.config: org.apache.kafka.common.security.plain.PlainLoginModule required username="kpow" password="kpow-secret";
ssl.truststore.location: /ssl/truststore.jks
ssl.truststore.password: 1234
```

### Kpow Secure Java API for Decryption

