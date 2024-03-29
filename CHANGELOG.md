# Kpow for Apache Kafka Changelog 

[Kpow](https://kpow.io) is the market-leading enterprise-grade toolkit for engineers who work with Apache Kafka.

Get started with the [Community Edition](https://kpow.io/get-started) of Kpow today.

## Changelog Location Update

**Please Note!** This Changelog has moved to [https://factorhouse.io/kpow/changelog](https://factorhouse.io/kpow/changelog)

You may also be interested in the Flex for Apache Flink Changelog and Factor House Product Roadmap:

* Flex for Apache Flink Changelog: [https://factorhouse.io/flex/changelog](https://factorhouse.io/flex/changelog)
* Factor House Product Roadmap:[https://factorhouse.io/roadmap](https://factorhouse.io/roadmap)

# Remainder Left In Place for Archive Purposes Only

**This changelog will no longer be updated, see the links above for the new Kpow changelog location.**

## Latest Release Artifacts

The latest release of Kpow is [v92.1](https://kpow.io/category/releases/92-1).

* [Dockerhub Repository](https://hub.docker.com/r/factorhouse/kpow-ee)
* [Dockerhub Repository (Community Edition)](https://hub.docker.com/r/factorhouse/kpow-ce)
* [Java JAR](https://releases.operatr.io/kpow-2023-09-15-16-32.jar?AWSAccessKeyId=AKIAXNNKGCAKDUQSTKG4&Signature=2vveFWfre3w5G8lE5FWoNdutKtw%3D&Expires=1710311740)
* [Java 8 JAR](https://releases.operatr.io/kpow-2023-09-15-16-36.jar?AWSAccessKeyId=AKIAXNNKGCAKDUQSTKG4&Signature=P8UKXaXZNUBKxXqOTh374mwiHGc%3D&Expires=1710311854)
* [Release Blog Post](https://kpow.io/category/releases/91-5)

## Project Information

See [https://kpow.io/category/releases/](https://kpow.io/category/releases/) for full notes on each release.

Docker containers for each release can be found here:

 * Dockerhub Community Edition (CE) [factorhouse/kpow-ce](https://hub.docker.com/r/factorhouse/kpow-ce)
 * Dockerhub Standard Edition (SE) [factorhouse/kpow-se](https://hub.docker.com/r/factorhouse/kpow-se)
 * Dockerhub Enterprise Edition (EE) [factorhouse/kpow-ee](https://hub.docker.com/r/factorhouse/kpow-ee)
 * Standard Edition (SE) on [AWS Marketplace](https://aws.amazon.com/marketplace/seller-profile?id=ab356f1d-3394-4523-b5d4-b339e3cca9e0)

Deploy Kpow to Kubernetes with our [Helm Charts](https://github.com/operatr-io/kpow-helm-charts), also available at [artifacthub.io](https://artifacthub.io/packages/helm/kpow/kpow).

Links to JAR artefacts are provided on each release blog post: [https://kpow.io/releases/](https://kpow.io/releases/).

Learn more about [Kpow for Apache Kafka](https://kpow.io), read our [docs](https://docs.kpow.io), or [get started today, free!](https://kpow.io/get-started)

## Kpow Releases

### [92.1] 2023-09-15

See: [Kpow v92.1 Full Release Notes & Artifacts](https://kpow.io/releases/92-1/)

* Change default to observation_version=2 for Schema and Connect resources
* Introduce "time since URP" metric to under replicated partitions table
* Improve topic create UX, allow multiple topics to be created at once
* Improve Prometheus egress performance by up to 300%
* Improve Kafka documentation/help for topic+broker configuration
* Improve truncate/delete UX by separating action items
* Improve authorization UX by better differentiaton between Kpow RBAC and Kafka errors.
* Improve staged mutations modals, show ID in confirmation modal
* Improve consumer offset management, introduce tabular actions
* Improve audit log detail for kREPL queries
* Improve default serdes and schema registry detection UX
* Improve topic configuration support with custom fields
* Improve charts: better denominations in chart details, KB MB, etc.
* Improve topic UX with topic identifiers shown in topic tables
* Fix stale offset consumer lag calculation bug
* Fix data produce "show schema" bug
* Fix top-level wildcards not showing bug
* Fix relative-url assets (css, images) page rengering bug
* Fix WARN on missing cluster context bug

### [91.5] 2023-07-12

See: [Kpow v91.5 Full Release Notes & Artifacts](https://kpow.io/releases/91-5/)

* Introduce new 'Expand/Explore Table' UX for all tabular data
* Introduce prometheus metrics in system performance UI
* Introduce and document importing messages with headers in Data Produce
* Improve Data Produce UX when creating new messages
* Improve Streams and Consumer topology view with expand/contract UI
* Fix redundant OpenID 'Not Authorized' screen prior to login 
* Fix OpenID authentication redirect when Kpow is path-proxied
* Fix topic edit when Kpow is path-proxied
* Fix Connect observation-v2 for confluent cloud bug
* Fix RBAC system settings UI when plural resources configured
* Fix RBAC rules for individual connectors bug
* Fix ghost filters in topic and group UI
* Fix /metrics/v1/streams endpoint not available bug
* Fix broker edit RBAC UI bug

### [91.4] 2023-05-30

See: [Kpow v91.4 Full Release Notes & Artifacts](https://kpow.io/releases/91-4/)

* Introduce new ARM64 docker builds to support Graviton deployments
* Improve scheduled mutations, add new MUTATION_SCHEDULER_EXPIRES_MS (default 15 mins) env var
* Improve temporary policies, add new TEMPORARY_POLICY_MAX_MS (default 1hr) env var and extend UI to support the same
* Improve multi-tenancy, add support for tenancy inclusions/exclusions by Kafka Connector, Schema Subject and ACL principal
* Improve Kafka Connect, introduce fallback UI when connector validation endpoint returns 500 status code
* Improve Kafka Connect, introduce CONNECT_OBSERVATION_VERSION=2 for more efficient snapshotting of Connect resources
* Improve RBAC, introduce GROUP_DELETE RBAC permission (previously GROUP_EDIT was used for group delete actions)
* Improve RBAC, support plural resources
* Improve Audit-log UI, visually group mutations by their correlation id for bulk actions and staged mutations
* Improve Overview UI, add Connect/Schema/ksqlDB overview items
* Fix STS provider for AWS Glue authentication
* Bump protobuf-java to 3.22.3 to better support custom serdes

### [91.3] 2023-04-18

See: [Kpow v91.3 Full Release Notes & Artifacts](https://kpow.io/releases/91-3/)

* Introduce Kafka Connect JSON import dialog and form integration
* Introduce Prometheus group.member.count and group.host.count metrics
* Introduce Prometheus /group-offsets/v1 endpoint for group assignment offset metrics
* Improve schema registry AWS configurability with static and STS credentials
* Improve schema registry Oauth2 configurability with new parameters
* Improve Kafka Connect validation with CONNECT_STARTUP_VALIDATION (default: true)
* Fix auth regression bug, admin_roles considered authorized_roles
* Fix stages scheduled mutations misfire bug
* Fix PERSISTENCE_MODE=none when running in a multi-cluster environment
* Fix several minor UI bugs
* Bump to Slipway 1.1.6, latest Jetty dependencies


### [91.2] 2023-03-14

See: [Kpow v91.2 Full Release Notes & Artifacts](https://kpow.io/releases/91-2/)

* Introduce "Resume Connector" bulk action 
* Fix ksqlDB basic authentication configuration
* Fix schema registry OAuth configuration
* Fix kREPL continue search schema registry issue
* Bump to Confluent 7.3.2 dependencies

### [91.1] 2023-03-06

See: [Kpow v91.1 Full Release Notes & Artifacts](https://kpow.io/releases/91-1/)

* Introduce new ksqlDB integration
* Introduce new disk usage telemetry
* Introduce support for Confluent Cloud Schema Registry Oauth2 authentication
* Improve custom serdes with headers support
* Improve top-level filtering with wildcard support
* Improve topic and broker configuration UI with fast filters and table preferences
* Improve schema registry observation with configurable OBSERVATION_VERSION
* Improve bulk actions with bulk group delete support
* Fix ACL bug related to comma-separated principals
* Fix intellisense bug in key entry field when producing messages
* Fix minor dark mode UI bugs
* Bump to Kafka 3.4.0 dependencies
* Bump to Confluent 7.3.1 dependencies

### [90.6] 2023-01-26

See: [Kpow v90.6 Full Release Notes & Artifacts](https://kpow.io/releases/90-6/)

* Introduce new Dark Mode UI
* Introduce new configurable persistence mode
* Improve editor intellisense

### [90.5] 2022-12-20

See: [Kpow v90.5 Full Release Notes & Artifacts](https://kpow.io/releases/90-5/)

* Fix Java 8 JAR Regression

### [90.4] 2022-12-16

See: [Kpow v90.4 Full Release Notes & Artifacts](https://kpow.io/releases/90-4/)

* Introduce Bulk Actions for topic delete, group delete, schema edit, connector restart, pause, delete
* Improve snapshot materialization performance
* Improve healthcheck performance
* Improve 'multiple-instances detected' UX
* Improve UI with new Heroicons v2.0
* Improve audit log UI with pagination
* Improve community edition wizard
* Improve community edition with in-UI callouts to upgrade path
* Fix scheduler task contention issue
* Fix jetty authentication expired session re-login bug
* Fix connect bug where connectors with no tasks would not show in tables
* Support Kpow-Secure encryption of 'javax.net.ssl.trustStorePassword'
* Update Helm charts to 2CPU / 8GB heap as default
* Open-source [Slipway](https://github.com/factorhouse/slipway) and publish to Clojars
* Open-source [Kpow Secure](https://github.com/factorhouse/kpow-secure) and publish to Clojars
* Add robots.txt with "User-agent: * Disallow: /"

### [90.3] 2022-12-02

See: [Kpow v90.3 Full Release Notes & Artifacts](https://kpow.io/releases/90-3/)

* Improve OpenID SSO configuration with OPENID_USER_FIELD and roles_from fields
* Fix custom serdes in the kREPL
* Improve scheduled mutations UI/UX
* Improve performance of snapshot materialization

### [90.2] 2022-11-03

See: [Kpow v90.2 Full Release Notes & Artifacts](https://kpow.io/releases/90-2/)

* Introduce new OPENID_ISSUER environment variable for genereric openid sso integration
* Fix scheduled mutation UI/UX bugs


### [90.1] 2022-10-27

See: [Kpow v90.1 Full Release Notes & Artifacts](https://kpow.io/releases/90-1/)

* [Kpow Community Edition (CE)](https://kpow.io/get-started/) is now GA. Free to use, no sign-up or license required
* Complete overhaul of existing UI/UX with a brand-new Tailwind UI user interface
* Introduce new Topic Truncate feature for record deletion
* Improve support for OpenID Auth with Generic OpenID Provider configuration
* Improve Data Inspect/Produce UI/UX with multiple bugfixes
* Improve Data Inspect export with option for un-escaped JSON export
* Introduce NullSerde to allow production of null key/value (record deletion/tombstones)
* Introduce new UUID Serdes in Data Inspect
* Improve Connect topic inference (for debezium and other connectors) 
* Introduce new columns to Source Connector tables (bytes total, last activity)
* Introduce new Connect table of unreachable/erroring connectors + prometheus metrics of the same
* Improve cluster configuration options with inclusion of all OATHBEARER token parameters
* Improve table export with CSV export option
* Improve filtering options, favour prefixes before plain alphabetical match/order
* Fix regression of allow-permissive-ssl? Connect configuration

### [89.4] 2022-08-26

See: [Kpow v89.4 Full Release Notes & Artifacts](https://kpow.io/releases/89-4/)

* Improve connect RBAC with CONNECT_INSPECT permission
* Improve connect error messaging
* Fix schema subject delete bug
* Fix staged mutations table bug

### [89.3] 2022-08-11

See: [Kpow v89.3 Full Release Notes & Artifacts](https://kpow.io/releases/89-3/)

* Provide DISABLE_LOG_CLEANER_CHECK configuration option

### [89.2] 2022-08-08

See: [Kpow v89.2 Full Release Notes & Artifacts](https://kpow.io/releases/89-2/)

* Fix Data Inspect XML message display bug
* Fix SAML re-auth relay-state bug

### [89.1] 2022-08-02

See: [Kpow v89.1 Full Release Notes & Artifacts](https://kpow.io/releases/89-1/)

* Support Confluent Managed Connect
* Support MSK Managed Connect
* Support MSK Serverless
* Improve Data Inspect speed (3x to 20x depending on message factors)
* Improve Data Inspect UX (deserialization error reporting)
* Improve Data Inspect UX (react-select text-input modals, etc)
* Improve Resource UX with consistent ordering of resources
* Upgrade Base Corretto Image to 11.0.16 (no known memory issues)
* Numerous minor bugfixes

### [88.7] 2022-06-01

See: [Kpow v88.7 Full Release Notes & Artifacts](https://kpow.io/releases/88-7/)

* Revert Kafka Client libraries due to producer idempotency breaking change

### [88.6] 2022-05-27

See: [Kpow v88.6 Full Release Notes & Artifacts](https://kpow.io/releases/88-6/)

* Support Protobuf format with AWS Glue Schema Registry
* Support configurable JSON logging with LOG_FORMAT env variable
* Support previous 24hr search windown in Data Inspect
* Support JDK17 with new -jdk17 Docker tag
* Improve orphan schema detection and deletion
* Improve Confluent Cloud Metrics API integration
* Mute redundant INFO logging by Confluent Schema Registry

### [88.5] 2022-05-06

See: [Kpow v88.5 Full Release Notes & Artifacts](https://kpow.io/releases/88-5/)

* Improve Confluent Cloud Metrics API integration
* Improve Kafka Connect error messages
* Improve broker graphs sorting function
* Improve data produce UI/UX 
* Fix regression with Confluent Avro logical types
* Fix default serdes configuration regression

### [88.4] 2022-04-14

See: [Kpow v88.4 Full Release Notes & Artifacts](https://kpow.io/releases/88-4/)

* Security improvement, reduce visibility of application functionality per RBAC rules.
* Fix connect task actions bug
* Fix schema subject actions bug
* Fix Java 8 KpowLdapLoginModule bug
* Improve connect UI labels

### [88.3] 2022-04-08

See: [Kpow v88.3 Full Release Notes & Artifacts](https://kpow.io/releases/88-4/)

* Schema and connect table to react-virtualized
* Kpow application logs are JSON formatted
* Improve UI to allow table export to JSON
* Improve UI support dynamic table column resizing
* Security improvement, optional disallow concurrent login
* Security improvement, improved websocket CSRF and same-origin impl
* Security improvement, LDAP session max age configuration
* Reduce Kpow topic disk usage by 75%
* Reduce Kpow CPU usage by 50%
* Reduce Kpow Confluent Cloud topic disk usage by 95%
* Support UUID literal in EDN data format

### [88.2] 2022-02-25

See: [Kpow v88.2 Full Release Notes & Artifacts](https://kpow.io/releases/88-2/)

* Improve support for Flink / Simple consumers
* Support for encrypted Kpow configuration
* Support for Confluent Schema Registry w/ Mutual TLS
* Export to CSV from the kREPL
* Data Import improvements and bugfixes

### [88.1] 2022-01-17

See: [Kpow v88.1 Full Release Notes & Artifacts](https://kpow.io/releases/88-1/)

* Move to Major.Minor release format
* Bump core dependencies to latest where possible
* Fix protobuf deserialization issue with Connect-produced messages and dependent schema
* Fix Confluent Cloud startup error related to minimum segment.bytes configuration
* Improve UI reportage of installed vs. available Kpow version

### [88] 2021-12-21

See: [Kpow v88 Full Release Notes & Artifacts](https://kpow.io/releases/88/)

* Protobuf supports referenced schema (e.g. google.protobuf.Timestamp)
* Message production with optional message headers
* Increase Topic Partitions function
* Improved AWS Glue resource consumption
* Improved Github Enterprise SSO integration
* Support empty string literal ("") in Klang 
* Fix Prometheus offsets-by-topic lookup
* Improve Prometheus scraper endpoint error handling
* Introduce standard 404/405/406/500 pages
* Monospace fonts in Consumer and Streams Topology Viewer
* Fix form z-index issue in data produce with schema registry
* Fix minor LH navigation menu issue with small viewbox

### [87] 2021-11-04

See: [Kpow v87 Full Release Notes & Artifacts](https://kpow.io/releases/87/)

* AVRO Decimal Logical Type Support
* Red Hat OpenShift Streams for Apache Kafka (RHOSAK) Support
* Data Import CSV UX Improvements

### [86] 2021-10-16

See: [Kpow v86 Full Release Notes & Artifacts](https://kpow.io/releases/86/)

* Improved Kpow snapshot compute performance
* Introduction of AWS Glue schema status
* Improved support for message version in ConsumerOffsets serde

### [85] 2021-10-11

See: [Kpow v85 Full Release Notes & Artifacts](https://kpow.io/releases/85/)

* Data Policies now support an [optional Header, Key, or Value resource](https://docs.kpow.io/features/data-policies#resource).
* Data Inspect now includes a ConsumerOffsets serdes.
* Improved Audit Log performance.

### [84] 2021-09-30

See: [Kpow v84 Full Release Notes & Artifacts](https://kpow.io/releases/84/)

* Support for AWS Glue Schema Registry: https://docs.kpow.io/config/schema-registry#aws-glue-schema-registry.
* Improve Data Produce UX – clear produced items.
* Improve Data Inspect UX – highlight queued queries.
* Improve Data Inspect UX – remember previously selected header serdes.
* Bugfix Data Inspect – resolve potential query engine deadlock.
* Bugfix Data Inspect – show correct tab names when searching by regex or group.

### [83] 2021-09-13

See: [Kpow v83 Full Release Notes & Artifacts](https://kpow.io/releases/83/)

* Multi-Produce: Import and produce multiple messages at once.
* Data Inspect: Simplified UI and more powerful kJQ search implementation.
* Github Teams: Github Oath SSO now supports Github Teams as RBAC roles.
* Audit Log: Data Inspect queries are recorded in the Audit Log.
* AWS IAM: Support for [AWS IAM MSK authentication](https://docs.kpow.io/config/kafka-cluster#aws-iam-integration)
* SAML Authentication: Option to extract roles from LDAP-encoded attributes.

### [82] 2021-08-17

See: [Kpow v82 Full Release Notes & Artifacts](https://kpow.io/releases/82/)

* Default user to previously selected tenant

### [81] 2021-08-13

See: [Kpow v81 Full Release Notes & Artifacts](https://kpow.io/releases/81/)

* Configurable Multi-Tenancy Function
* Data Inspect: Streaming Search Function
* 5x Search Throughput Improvement
* Confluent Cloud Metrics API integration
* Reverted the / -> /ui new session redirect
* Streams Agent – support streams with group.instance.id config
* Kafka Connect – support ConfigProvider, dynamic fields and creating/editing debezium connectors
* OpenID/Okta – support OKTA_DOMAIN configuration

### [80] 2021-07-12

See: [Kpow v80 Full Release Notes & Artifacts](https://kpow.io/releases/80/)

* New Kafka Streams Live Topology Visualisation UI
* GA open-source Kpow Streams Agent
* Multi-topic search by topic regex
* Multi-topic search by group
* Topic and consumer group freshness metrics
* Exposed topic and consumer inactivity via Prometheus
* Configurable columns for tabular data
* Topic read/s metric
* Under-replicated partitions count in summary data
* Fixed ‘in-sync?’ and controller broker UI regressions
* Open client websocket session count metrics
* Reduced Kpow internal topic disk usage

### [79] 2021-06-25

See: [Kpow v79 Full Release Notes & Artifacts](https://kpow.io/releases/79/)

* Staged Mutations: actions (e.g. Topic Create) can now be staged for approval by an Admin user.
* Temporary Policies: Admin Users can assign temporary access permissions to a role.
* RBAC: Added KPOW_ADMIN action to policies
* RBAC: Added “Stage” effect to RBAC policies
* RBAC: Ability for admins to temporarily create policies
* RBAC: allow ENVIRONMENT_NAME as an identifier for cluster in the resource of a policy
* Bump to Jetty10, more performant websocket sessions
* Default cluster names now align with config, e.g bootstrap_1, bootstrap_2
* Fixed bug where topic/broker configuration would intermittently disappear from UI in some cases.
* Fixed j_session null pointer exception that could occur when using simple authentication

### [78] 2021-06-07

See: [Kpow v78 Full Release Notes & Artifacts](https://kpow.io/releases/78/)

* Data Inspect: Multi-Topic Search
* A brand new User Interface

### [77] 2021-05-06

See: [Kpow v77 Full Release Notes & Artifacts](https://kpow.io/releases/77/)

* Improved reverse-proxy support with configurable X-Forwarded-For headers

### [76] 2021-05-04

See: [Kpow v76 Full Release Notes & Artifacts](https://kpow.io/releases/76/)

* New Kafka ACL Management features
* Minor bugfixes to the Kpow UI initialisation process

### [75] 2021-04-30

See: [Kpow v75 Full Release Notes & Artifacts](https://kpow.io/releases/75/)

* Data Inspect: added JSON Schema Serde.
* Schema Registry: added support for Protobuf and JSON Schema.

### [74] 2021-04-29

See: [Kpow v74 Full Release Notes & Artifacts](https://kpow.io/releases/74/)

* Full Kafka ACL Management UI
* Client UI / Server performance improvements. 
* General UI improvements.
* Bumped Kafka clients to 2.8.0 for improved streams/operational resiliency.
* New Prometheus metrics:
  * schema_subject_version
  * acl_count
  * cluster_controller
  * broker_urp
  * connect_connector_state
  * connect_connector_task_state
  * registry_subject_version

### [73] 2021-04-23

See: [Kpow v73 Full Release Notes & Artifacts](https://kpow.io/releases/73/)

* Support for PEM format SSL certificates introduced in Kafka 2.7.0 and described in [KIP-651](https://cwiki.apache.org/confluence/display/KAFKA/KIP-651+-+Support+PEM+format+for+SSL+certificates+and+private+key)

### [72] 2021-04-16

See: [Kpow v72 Full Release Notes & Artifacts](https://kpow.io/releases/72/)

* HA Resource Management
  * Manage multiple Connect Clusters connected to a single Kafka Cluster
  * Manage multiple Schema Registries connected to a single Kafka Cluster
* A new liveness endpoint to complement the existing readiness endpoint

### [71] 2021-04-15

See: [Kpow v71 Full Release Notes & Artifacts](https://kpow.io/releases/72/)

* Improved reverse-proxy notes and support for proxying Kpow at a specific custom path

### [70] 2021-03-22

See: [Kpow v70 Full Release Notes & Artifacts](https://kpow.io/releases/70/)

* Klang/within function

### [69] 2021-03-19

See: [Kpow v69 Full Release Notes & Artifacts](https://kpow.io/releases/70/)

* Transparent OSS CI/CD automation for Kpow build (this repo) 

### [68] 2021-03-18

See: [Kpow v68 Full Release Notes & Artifacts](https://kpow.io/releases/70/)

* Improved Confluent Cloud support

### [67] 2021-03-12

See: [Kpow v67 Full Release Notes & Artifacts](https://kpow.io/releases/67/)

* Fix Jetty Memory Leak (Websockets)

### [66] 2021-03-03

See: [Kpow v66 Full Release Notes & Artifacts](https://kpow.io/releases/66/)

* Resolve UI issue with consumer groups topology viewer

### [65] 2021-03-01

See: [Kpow v65 Full Release Notes & Artifacts](https://kpow.io/releases/65/)

* Klang in the kREPL

### [64] 2021-02-26

See: [Kpow v64 Full Release Notes & Artifacts](https://kpow.io/releases/64/)

* Dependency improvements and automated CVE scanning with NVD

### [63] 2020-11-27

See: [Kpow v63 Full Release Notes & Artifacts](https://kpow.io/releases/63/)

* Data Inspect support for message header decoding and kJQ filtering
* UI resposivity improvements

### [62] 2020-11-20

See: [Kpow v62 Full Release Notes & Artifacts](https://kpow.io/releases/62/)

* Compute Label Correction

### [61] 2020-11-19

See: [Kpow v61 Full Release Notes & Artifacts](https://kpow.io/releases/61/)

* Configurable Kafka Connect permissive SSL

### [60] 2020-11-17

See: [Kpow v60 Full Release Notes & Artifacts](https://kpow.io/releases/60/)

* Consumption Topology Visualizer
* Consumer group offsets resetting
* LDAP, File, and JDBC Authentication via Jetty JAAS
* UI state maintained throughout a SAML session refresh
* UI access restricted to Authorized Roles when RBAC is configured
* RBAC configuration now supports a list of roles per policy
* Connect UI improvements to Task State and Group Lag sort order
* System startup UI improvements
* Configurable Data Policies Exclusions

### [59] 2020-10-19

See: [Kpow v59 Full Release Notes & Artifacts](https://kpow.io/releases/59/)

* Configurable SAML session duration with SAML_SESSION_S

### [58] 2020-10-15

See: [Kpow v58 Full Release Notes & Artifacts](https://kpow.io/releases/58/)

* Respect Reverse Proxy Scheme w/ SAML

### [57] 2020-10-12

See: [Kpow v57 Full Release Notes & Artifacts](https://kpow.io/releases/57/)

* Improved Kafka Connect Resilience

### [56] 2020-10-04

See: [Kpow v56 Full Release Notes & Artifacts](https://kpow.io/releases/56/)

* Improved Data Inspect JQ Filter Performance

### [55] 2020-09-30

See: [Kpow v55 Full Release Notes & Artifacts](https://kpow.io/releases/55/)

* Improved RBAC Configuration Options

### [54] 2020-09-29

See: [Kpow v54 Full Release Notes & Artifacts](https://kpow.io/releases/54/)

* Improved Kafka Connect Task Metrics
* Custom Serdes Support for JQ Filters
* Improved SAML + Reverse Proxy Support

### [53] 2020-09-28

See: [Kpow v53 Full Release Notes & Artifacts](https://kpow.io/releases/53/)

* Improved Websocket Concurrency

### [52] 2020-09-25

See: [Kpow v52 Full Release Notes & Artifacts](https://kpow.io/releases/52/)

* Improved Error Reporting in Data Inspect

### [51] 2020-09-23

See: [Kpow v51 Full Release Notes & Artifacts](https://kpow.io/releases/51/)

* Data Inspect with kJQ

### [50] 2020-09-09

See: [Kpow v50 Full Release Notes & Artifacts](https://kpow.io/releases/50/)

* Data Masking Policies
* Audit Log Slack Integration

### [49] 2020-08-31

See: [Kpow v49 Full Release Notes & Artifacts](https://kpow.io/releases/49/)

* Date picker JS Optimization bugfix

### [48] 2020-08-27

See: [Kpow v48 Full Release Notes & Artifacts](https://kpow.io/releases/48/)

* Live Mode (Real Time Kafka Cluster monitoring)
* Overall UI and Visualisation improvements
* Improved Consumer Group Lag visualisations

### [47] 2020-08-12

See: [Kpow v47 Full Release Notes & Artifacts](https://kpow.io/releases/47/)

* Role Based Access Control (RBAC)
* SAML SSO, including Azure AD and AWS SSO
* HTTPS termination out-of-the-box
* Bulk export Data Inspect results in JSON

### [46] 2020-07-21

See: [Kpow v46 Full Release Notes & Artifacts](https://kpow.io/releases/46/)

* Fix column width issues in Kafka Connect UI
* Fixes issues with snapshotting with consumer expiration edge cases
* Improve snapshotting latency, CPU, and memory performance

### [45] 2020-07-16

See: [Kpow v45 Full Release Notes & Artifacts](https://kpow.io/releases/45/)

* Kafka Connect Integration
* Create, control, and manage Kafka Connectors
* Monitor Kafka Connector task state and stacktraces
* Gain insights into underlying consumer groups
* Gain insights into connect topic production
* Embedded Kafka Connect documentation and export options (Curl, JSON)

### [44] 2020-07-16

See: [Kpow v44 Full Release Notes & Artifacts](https://kpow.io/releases/44/)

* Group Explore: add group state heatmaps
* Topic Explore: support topic deletion
* Schema Registry: change subject compatibility
* Schema Registry: create new subjects
* Prometheus: include optional env label derived from ENVIRONMENT_NAME
* UI: improved table rendering with infinite scroll
* UI: cross-browser fixes to number formatting
* Data Inspect: Copy-to-Clipboard and Search-by-Key bugfixes

### [43] 2020-06-18

See: [Kpow v43 Full Release Notes & Artifacts](https://kpow.io/releases/43/)

* Multi-cluster UI performance improvements

### [42] 2020-06-18

See: [Kpow v42 Full Release Notes & Artifacts](https://kpow.io/releases/42/)

* Multi-cluster support
* Prometheus for metrics and offsets egress
* Enhanced search by time, search continuation
* Produce to new topic
* Overview / Insights

### [41] 2020-05-06

See: [Kpow v41 Full Release Notes & Artifacts](https://kpow.io/releases/41/)

* Create topics
* Edit topic configuration
* Edit broker configuration
* Inline documentation for topic and broker configuration
* Delete consumer groups and group offsets
* Bulk delete Schema Registry subjejcts
* Metrics UI/UX improvements

### [40] 2020-04-22

See: [Kpow v40 Full Release Notes & Artifacts](https://kpow.io/releases/40/)

* New user interface. Fix up, look sharp!
* Identify orphaned schema subjects
* Support deletion of subjects
* Set custom instance name, displayed in navigation menu
* Set default serdes for data inspection
* Restrict serdes available for data inspection

### [39] 2020-04-10

See: [Kpow v39 Full Release Notes & Artifacts](https://kpow.io/releases/39/)
* Support Github SSO for user authorization
* Fix 'nil key' data inspection error

### [38] 2020-04-09

See: [Kpow v38 Full Release Notes & Artifacts](https://kpow.io/releases/38/)
* Provide new Schema Registry explorer UI
* Schema subject version diff UI

### [37] 2020-04-08

* Link 'Produce to Topic' output to 'Search by Key'

### [36] 2020-03-31

* Improve UI/UX concerns
* Integrate Sentry.io for error reporting

### [35] 2020-03-24

* Log OKTA token expiration

### [34] 2020-03-23

* Support OKTA Authentication for Single Sign-On

### [33] 2020-03-20

* Provide easy linking from tabular data

### [32] 2020-03-19

* Fix member client/consumer truncation issue

### [31] 2020-03-16

* Configurable custom SERDES

### [30] 2020-03-11

* Data UI: Search-By-Key message inspection
* Data UI: Support (optional) message production
* Provide option to turn off splash screen
* UI network failure detection
* Fixed menu double-click + chart display error

### [29] 2020-02-15

* Support provisioning of Professional and Team licenses

### [28] 2020-02-05

* Fix memory issue related to

### [27] 2020-02-04

* Support in-memory metrics (env/IN_MEMORY_METRICS=true)
* Close all resources used in periodic telemetry snapshots

### [26] 2020-02-03

* Support 30-Day trial licenses.

### [25] 2020-02-03

* Limit off-heap memory consumption.

### [24] 2020-01-31

* Reduced disk consumption through deprecating compute.snapshots changelog.
* Resolved memory leak that could cause Operatr to cycle after several days.

### [23] 2020-01-31

* Reduced compute memory consumption.

### [22] 2020-01-28

* License provisioning and application.

### [21] 2020-01-22

* Performance improvements through configurable snapshot parallelism.

### [20] 2019-12-13

* UI Framework dependency bump.

### [19] 2019-12-03

* Update base Dockerfile to Corretto 11.0.5

### [18] 2019-11-27

* Include support for Long, Integer, Short, Float, and Double when inspecting topics.

### [17] 2019-11-12

* Improved experience for Confluent Cloud users.

### [16] 2019-11-11

* Data inspection supports copy-to-clipboard on results

### [15] 2019-11-11

* Data inspection supports EDN format results

### [14] 2019-11-09

* Snappier UI through reduced browser memory consumption.

### [13] 2019-11-06

* Use ZSTD compression on Operatr topics where possible (30% disk reduction).
* Leaderless topic identification.

### [12] 2019-11-04

* Internal data-format modifications.

### [11] 2019-11-04

* Visualise self-telemtry on Admin->About.

### [10] 2019-11-04

* Improved startup experience on configuration errors.
* ASCII flair in the console.

### [9] 2019-11-01

* Configurable replication factor on internal topics.

### [8] 2019-10-30

* Improved system logging and diagnostics.

### [7] 2019-10-30

* System logging and diagnostics on startup.

### [6] 2019-10-30

* Support all Kafka client connection options.

### [5] 2019-10-30

* Support for unauthenticated clusters.

### [4] 2019-10-28

* Integrate with Schema Registry for AVRO topic inspection.
* Support single topic partition inspection.

### [3] 2019-10-22

* Support Riemann integration for analytics egress.

### [2] 2019-10-18

* Simplified environment variable configuration.

### [1] 2019-10-16

* MVP suitable for general consumption.
