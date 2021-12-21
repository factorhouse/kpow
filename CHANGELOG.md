# Kpow for Apache Kafka Changelog 

Development on Kpow began in 2018, with public release [1] on 2019-10-16.

See [https://kpow.io/category/releases/](https://kpow.io/category/releases/) for full notes on each release.

Docker containers for each release can be found on:

 * Dockerhub as [operatr/kpow](https://hub.docker.com/repository/docker/operatr/kpow)
 * The [AWS Marketplace](https://aws.amazon.com/marketplace/seller-profile?id=ab356f1d-3394-4523-b5d4-b339e3cca9e0)
 * The [Red Hat Marketplace](https://marketplace.redhat.com/en-us/products/kpow-for-apache-kafka)

JAR artefacts are available to download via [https://kpow.io/category/releases/](https://kpow.io/category/releases/)

## [59] 2020-10-19

See: [Kpow v59 Full Release Notes & Artifacts](https://kpow.io/releases/59/)

* Improvement: Configurable SAML session duration with SAML_SESSION_S

## [58] 2020-10-15

See: [Kpow v58 Full Release Notes & Artifacts](https://kpow.io/releases/58/)

* Bug: Respect Reverse Proxy Scheme w/ SAML

## [57] 2020-10-12

See: [Kpow v57 Full Release Notes & Artifacts](https://kpow.io/releases/57/)

* Feature: Improved Kafka Connect Resilience

## [56] 2020-10-04

See: [Kpow v56 Full Release Notes & Artifacts](https://kpow.io/releases/56/)

* Feature: Improved Data Inspect JQ Filter Performance

## [55] 2020-09-30

See: [Kpow v55 Full Release Notes & Artifacts](https://kpow.io/releases/55/)

* Feature: Improved RBAC Configuration Options

## [54] 2020-09-29

See: [Kpow v54 Full Release Notes & Artifacts](https://kpow.io/releases/54/)

* Feature: Improved Kafka Connect Task Metrics
* Feature: Custom Serdes Support for JQ Filters
* Feature: Improved SAML + Reverse Proxy Support

## [53] 2020-09-28

See: [Kpow v53 Full Release Notes & Artifacts](https://kpow.io/releases/53/)

* Feature: Improved Websocket Concurrency

## [52] 2020-09-25

See: [Kpow v52 Full Release Notes & Artifacts](https://kpow.io/releases/52/)

* Feature: Improved Error Reporting in Data Inspect

## [51] 2020-09-23

See: [Kpow v51 Full Release Notes & Artifacts](https://kpow.io/releases/51/)

* Feature: Data Inspect with kJQ

## [50] 2020-09-09

See: [Kpow v50 Full Release Notes & Artifacts](https://kpow.io/releases/50/)

* Feature: Data Masking Policies
* Feature: Audit Log Slack Integration

## [49] 2020-08-31

See: [Kpow v49 Full Release Notes & Artifacts](https://kpow.io/releases/49/)

* Bug: Date picker JS Optimization bugfix

## [48] 2020-08-27

See: [Kpow v48 Full Release Notes & Artifacts](https://kpow.io/releases/48/)

* Feature: Live Mode (Real Time Kafka Cluster monitoring)
* Improvement: Overall UI and Visualisation improvements
* Improvement: Improved Consumer Group Lag visualisations

## [47] 2020-08-12

See: [Kpow v47 Full Release Notes & Artifacts](https://kpow.io/releases/47/)

* Feature: Role Based Access Control (RBAC)
* Feature: SAML SSO, including Azure AD and AWS SSO
* Feature: HTTPS termination out-of-the-box
* Improvement: Bulk export Data Inspect results in JSON

## [46] 2020-07-21

See: [Kpow v46 Full Release Notes & Artifacts](https://kpow.io/releases/46/)

* Bug: Fix column width issues in Kafka Connect UI
* Bug: Fixes issues with snapshotting with consumer expiration edge cases
* Improvement: Improve snapshotting latency, CPU, and memory performance

## [45] 2020-07-16

See: [Kpow v45 Full Release Notes & Artifacts](https://kpow.io/releases/45/)

* Feature: Kafka Connect Integration
* Feature: Create, control, and manage Kafka Connectors
* Feature: Monitor Kafka Connector task state and stacktraces
* Feature: Gain insights into underlying consumer groups
* Feature: Gain insights into connect topic production
* Feature: Embedded Kafka Connect documentation and export options (Curl, JSON)

## [44] 2020-07-16

See: [Kpow v44 Full Release Notes & Artifacts](https://kpow.io/releases/44/)

* Feature: Group Explore: add group state heatmaps
* Feature: Topic Explore: support topic deletion
* Feature: Schema Registry: change subject compatibility
* Feature: Schema Registry: create new subjects
* Feature: Prometheus: include optional env label derived from ENVIRONMENT_NAME
* Feature: UI: improved table rendering with infinite scroll
* Bug: UI: cross-browser fixes to number formatting
* Bug: Data Inspect: Copy-to-Clipboard and Search-by-Key bugfixes

## [43] 2020-06-18

See: [Kpow v43 Full Release Notes & Artifacts](https://kpow.io/releases/43/)

* Feature: Multi-cluster UI performance improvements

## [42] 2020-06-18

See: [Kpow v42 Full Release Notes & Artifacts](https://kpow.io/releases/42/)

* Feature: Multi-cluster support
* Feature: Prometheus integration for metrics and offsets egress
* Feature: Enhanced search by time, search continuation
* Feature: Produce to new topic
* Feature: Overview / Insights

## [41] 2020-05-06

See: [Kpow v41 Full Release Notes & Artifacts](https://kpow.io/releases/41/)

* Feature: Create topics
* Feature: Edit topic configuration
* Feature: Edit broker configuration
* Feature: Inline documentation for topic and broker configuration
* Feature: Delete consumer groups and group offsets
* Feature: Bulk delete Schema Registry subjejcts
* Improvement: Metrics UI/UX improvements

## [40] 2020-04-22

See: [Kpow v40 Full Release Notes & Artifacts](https://kpow.io/releases/40/)

* Feature: New user interface. Fix up, look sharp!
* Feature: Identify orphaned schema subjects
* Improvement: Support deletion of subjects
* Improvement: Set custom instance name, displayed in navigation menu
* Improvement: Set default serdes for data inspection
* Improvement: Restrict serdes available for data inspection

## [39] 2020-04-10

See: [Kpow v39 Full Release Notes & Artifacts](https://kpow.io/releases/39/)
* Feature: Support Github SSO for user authorization
* Bug: Fix 'nil key' data inspection error

## [38] 2020-04-09

See: [Kpow v38 Full Release Notes & Artifacts](https://kpow.io/releases/38/)
* Feature: Provide new Schema Registry explorer UI
* Feature: Schema subject version diff UI

## [37] 2020-04-08

* Improvement: Link 'Produce to Topic' output to 'Search by Key'

## [36] 2020-03-31

* Improvement: Improve UI/UX concerns
* Improvement: Integrate Sentry.io for error reporting

## [35] 2020-03-24

* Improvement: Log OKTA token expiration

## [34] 2020-03-23

* Feature: Support OKTA Authentication for Single Sign-On

## [33] 2020-03-20

* Feature: Provide easy linking from tabular data

## [32] 2020-03-19

* Bug: Fix member client/consumer truncation issue

## [31] 2020-03-16

* Feature: Configurable custom SERDES

## [30] 2020-03-11

* Feature: Data UI: Search-By-Key message inspection
* Feature: Data UI: Support (optional) message production
* Feature: Provide option to turn off splash screen
* Bug: UI network failure detection
* Bug: Fixed menu double-click + chart display error

## [29] 2020-02-15

* Feature: Support provisioning of Professional and Team licenses

## [28] 2020-02-05

* Bug: Fix memory issue related to

## [27] 2020-02-04

* Improvement: Support in-memory metrics (env/IN_MEMORY_METRICS=true)
* Bug: Close all resources used in periodic telemetry snapshots

## [26] 2020-02-03

* Feature: Support 30-Day trial licenses.

## [25] 2020-02-03

* Improvement: Limit off-heap memory consumption.

## [24] 2020-01-31

* Improvement: Reduced disk consumption through deprecating compute.snapshots changelog.
* Bug: Resolved memory leak that could cause Operatr to cycle after several days.

## [23] 2020-01-31

* Improvement: Reduced compute memory consumption.

## [22] 2020-01-28

* Feature: License provisioning and application.

## [21] 2020-01-22

* Improvement: Performance improvements through configurable snapshot parallelism.

## [20] 2019-12-13

* Improvement: UI Framework dependency bump.

## [19] 2019-12-03

* Improvement: Update base Dockerfile to Corretto 11.0.5

## [18] 2019-11-27

* Feature: Include support for Long, Integer, Short, Float, and Double when inspecting topics.

## [17] 2019-11-12

* Improvement: Improved experience for Confluent Cloud users.

## [16] 2019-11-11

* Feature: Data inspection supports copy-to-clipboard on results

## [15] 2019-11-11

* Feature: Data inspection supports EDN format results

## [14] 2019-11-09

* Improvement: Snappier UI through reduced browser memory consumption.

## [13] 2019-11-06

* Improvement: Use ZSTD compression on Operatr topics where possible (30% disk reduction).
* Improvement: Leaderless topic identification.

## [12] 2019-11-04

* Improvement: Internal data-format modifications.

## [11] 2019-11-04

* Improvement: Visualise self-telemtry on Admin->About.

## [10] 2019-11-04

* Improvement: Improved startup experience on configuration errors.
* Feature: ASCII flair in the console.

## [9] 2019-11-01

* Improvement: Configurable replication factor on internal topics.

## [8] 2019-10-30

* Improvement: Improved system logging and diagnostics.

## [7] 2019-10-30

* Improvement: System logging and diagnostics on startup.

## [6] 2019-10-30

* Improvement: Support all Kafka client connection options.

## [5] 2019-10-30

* Improvement: Support for unauthenticated clusters.

## [4] 2019-10-28

* Feature: Integrate with Schema Registry for AVRO topic inspection.
* Feature: Support single topic partition inspection.

## [3] 2019-10-22

* Feature: Support Riemann integration for analytics egress.

## [2] 2019-10-18

* Feature: Simplified environment variable configuration.

## [1] 2019-10-16

* Feature: MVP suitable for general consumption.