# Kpow for Apache Kafka Changelog 

Development on Kpow began in 2018, with public release [1] on 2019-10-16.

See [https://kpow.io/category/releases/](https://kpow.io/category/releases/) for full notes on each release.

Docker containers for each release can be found on:

 * Dockerhub as [operatr/kpow](https://hub.docker.com/repository/docker/operatr/kpow)
 * The [AWS Marketplace](https://aws.amazon.com/marketplace/seller-profile?id=ab356f1d-3394-4523-b5d4-b339e3cca9e0)
 * The [Red Hat Marketplace](https://marketplace.redhat.com/en-us/products/kpow-for-apache-kafka)

JAR artefacts are available to download via [https://kpow.io/category/releases/](https://kpow.io/category/releases/)

## [64] 2020-02-26

See: [Kpow v64 Full Release Notes & Artifacts](https://kpow.io/releases/64/)

* Dependency improvements and automated CVE scanning with NVD

## [63] 2020-11-27

See: [Kpow v63 Full Release Notes & Artifacts](https://kpow.io/releases/63/)

* Data Inspect support for message header decoding and kJQ filtering
* UI resposivity improvements

## [62] 2020-11-20

See: [Kpow v62 Full Release Notes & Artifacts](https://kpow.io/releases/62/)

* Compute Label Correction

## [61] 2020-11-19

See: [Kpow v61 Full Release Notes & Artifacts](https://kpow.io/releases/61/)

* Configurable Kafka Connect permissive SSL

## [60] 2020-11-17

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

## [59] 2020-10-19

See: [Kpow v59 Full Release Notes & Artifacts](https://kpow.io/releases/59/)

* Configurable SAML session duration with SAML_SESSION_S

## [58] 2020-10-15

See: [Kpow v58 Full Release Notes & Artifacts](https://kpow.io/releases/58/)

* Respect Reverse Proxy Scheme w/ SAML

## [57] 2020-10-12

See: [Kpow v57 Full Release Notes & Artifacts](https://kpow.io/releases/57/)

* Improved Kafka Connect Resilience

## [56] 2020-10-04

See: [Kpow v56 Full Release Notes & Artifacts](https://kpow.io/releases/56/)

* Improved Data Inspect JQ Filter Performance

## [55] 2020-09-30

See: [Kpow v55 Full Release Notes & Artifacts](https://kpow.io/releases/55/)

* Improved RBAC Configuration Options

## [54] 2020-09-29

See: [Kpow v54 Full Release Notes & Artifacts](https://kpow.io/releases/54/)

* Improved Kafka Connect Task Metrics
* Custom Serdes Support for JQ Filters
* Improved SAML + Reverse Proxy Support

## [53] 2020-09-28

See: [Kpow v53 Full Release Notes & Artifacts](https://kpow.io/releases/53/)

* Improved Websocket Concurrency

## [52] 2020-09-25

See: [Kpow v52 Full Release Notes & Artifacts](https://kpow.io/releases/52/)

* Improved Error Reporting in Data Inspect

## [51] 2020-09-23

See: [Kpow v51 Full Release Notes & Artifacts](https://kpow.io/releases/51/)

* Data Inspect with kJQ

## [50] 2020-09-09

See: [Kpow v50 Full Release Notes & Artifacts](https://kpow.io/releases/50/)

* Data Masking Policies
* Audit Log Slack Integration

## [49] 2020-08-31

See: [Kpow v49 Full Release Notes & Artifacts](https://kpow.io/releases/49/)

* Date picker JS Optimization bugfix

## [48] 2020-08-27

See: [Kpow v48 Full Release Notes & Artifacts](https://kpow.io/releases/48/)

* Live Mode (Real Time Kafka Cluster monitoring)
* Overall UI and Visualisation improvements
* Improved Consumer Group Lag visualisations

## [47] 2020-08-12

See: [Kpow v47 Full Release Notes & Artifacts](https://kpow.io/releases/47/)

* Role Based Access Control (RBAC)
* SAML SSO, including Azure AD and AWS SSO
* HTTPS termination out-of-the-box
* Bulk export Data Inspect results in JSON

## [46] 2020-07-21

See: [Kpow v46 Full Release Notes & Artifacts](https://kpow.io/releases/46/)

* Fix column width issues in Kafka Connect UI
* Fixes issues with snapshotting with consumer expiration edge cases
* Improve snapshotting latency, CPU, and memory performance

## [45] 2020-07-16

See: [Kpow v45 Full Release Notes & Artifacts](https://kpow.io/releases/45/)

* Kafka Connect Integration
* Create, control, and manage Kafka Connectors
* Monitor Kafka Connector task state and stacktraces
* Gain insights into underlying consumer groups
* Gain insights into connect topic production
* Embedded Kafka Connect documentation and export options (Curl, JSON)

## [44] 2020-07-16

See: [Kpow v44 Full Release Notes & Artifacts](https://kpow.io/releases/44/)

* Group Explore: add group state heatmaps
* Topic Explore: support topic deletion
* Schema Registry: change subject compatibility
* Schema Registry: create new subjects
* Prometheus: include optional env label derived from ENVIRONMENT_NAME
* UI: improved table rendering with infinite scroll
* UI: cross-browser fixes to number formatting
* Data Inspect: Copy-to-Clipboard and Search-by-Key bugfixes

## [43] 2020-06-18

See: [Kpow v43 Full Release Notes & Artifacts](https://kpow.io/releases/43/)

* Multi-cluster UI performance improvements

## [42] 2020-06-18

See: [Kpow v42 Full Release Notes & Artifacts](https://kpow.io/releases/42/)

* Multi-cluster support
* Prometheus for metrics and offsets egress
* Enhanced search by time, search continuation
* Produce to new topic
* Overview / Insights

## [41] 2020-05-06

See: [Kpow v41 Full Release Notes & Artifacts](https://kpow.io/releases/41/)

* Create topics
* Edit topic configuration
* Edit broker configuration
* Inline documentation for topic and broker configuration
* Delete consumer groups and group offsets
* Bulk delete Schema Registry subjejcts
* Metrics UI/UX improvements

## [40] 2020-04-22

See: [Kpow v40 Full Release Notes & Artifacts](https://kpow.io/releases/40/)

* New user interface. Fix up, look sharp!
* Identify orphaned schema subjects
* Support deletion of subjects
* Set custom instance name, displayed in navigation menu
* Set default serdes for data inspection
* Restrict serdes available for data inspection

## [39] 2020-04-10

See: [Kpow v39 Full Release Notes & Artifacts](https://kpow.io/releases/39/)
* Support Github SSO for user authorization
* Fix 'nil key' data inspection error

## [38] 2020-04-09

See: [Kpow v38 Full Release Notes & Artifacts](https://kpow.io/releases/38/)
* Provide new Schema Registry explorer UI
* Schema subject version diff UI

## [37] 2020-04-08

* Link 'Produce to Topic' output to 'Search by Key'

## [36] 2020-03-31

* Improve UI/UX concerns
* Integrate Sentry.io for error reporting

## [35] 2020-03-24

* Log OKTA token expiration

## [34] 2020-03-23

* Support OKTA Authentication for Single Sign-On

## [33] 2020-03-20

* Provide easy linking from tabular data

## [32] 2020-03-19

* Fix member client/consumer truncation issue

## [31] 2020-03-16

* Configurable custom SERDES

## [30] 2020-03-11

* Data UI: Search-By-Key message inspection
* Data UI: Support (optional) message production
* Provide option to turn off splash screen
* UI network failure detection
* Fixed menu double-click + chart display error

## [29] 2020-02-15

* Support provisioning of Professional and Team licenses

## [28] 2020-02-05

* Fix memory issue related to

## [27] 2020-02-04

* Support in-memory metrics (env/IN_MEMORY_METRICS=true)
* Close all resources used in periodic telemetry snapshots

## [26] 2020-02-03

* Support 30-Day trial licenses.

## [25] 2020-02-03

* Limit off-heap memory consumption.

## [24] 2020-01-31

* Reduced disk consumption through deprecating compute.snapshots changelog.
* Resolved memory leak that could cause Operatr to cycle after several days.

## [23] 2020-01-31

* Reduced compute memory consumption.

## [22] 2020-01-28

* License provisioning and application.

## [21] 2020-01-22

* Performance improvements through configurable snapshot parallelism.

## [20] 2019-12-13

* UI Framework dependency bump.

## [19] 2019-12-03

* Update base Dockerfile to Corretto 11.0.5

## [18] 2019-11-27

* Include support for Long, Integer, Short, Float, and Double when inspecting topics.

## [17] 2019-11-12

* Improved experience for Confluent Cloud users.

## [16] 2019-11-11

* Data inspection supports copy-to-clipboard on results

## [15] 2019-11-11

* Data inspection supports EDN format results

## [14] 2019-11-09

* Snappier UI through reduced browser memory consumption.

## [13] 2019-11-06

* Use ZSTD compression on Operatr topics where possible (30% disk reduction).
* Leaderless topic identification.

## [12] 2019-11-04

* Internal data-format modifications.

## [11] 2019-11-04

* Visualise self-telemtry on Admin->About.

## [10] 2019-11-04

* Improved startup experience on configuration errors.
* ASCII flair in the console.

## [9] 2019-11-01

* Configurable replication factor on internal topics.

## [8] 2019-10-30

* Improved system logging and diagnostics.

## [7] 2019-10-30

* System logging and diagnostics on startup.

## [6] 2019-10-30

* Support all Kafka client connection options.

## [5] 2019-10-30

* Support for unauthenticated clusters.

## [4] 2019-10-28

* Integrate with Schema Registry for AVRO topic inspection.
* Support single topic partition inspection.

## [3] 2019-10-22

* Support Riemann integration for analytics egress.

## [2] 2019-10-18

* Simplified environment variable configuration.

## [1] 2019-10-16

* MVP suitable for general consumption.