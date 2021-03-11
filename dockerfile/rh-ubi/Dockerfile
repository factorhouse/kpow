FROM registry.access.redhat.com/ubi8/openjdk-11:1.3-9

LABEL "name"="kPow.IO for Apache Kafka"
LABEL "vendor"="Operatr IO, Inc."
LABEL "version"="66"
LABEL "release"="1614742627897"
LABEL "summary"="kPow.IO is a toolkit for engineers who build, manage, and maintain systems powered by Apache Kafka."
LABEL "description"="kPow.IO features a rich data-oriented UI, specialized dashboards that deliver instant visibility into Kafka Clusters, Schema Registries, and Connect Installations, and developer tools that allow engineers to get to the heart of their systems quickly."

USER 0

RUN mkdir -p /licenses
ADD resources/eula.txt /licenses/eula.txt
RUN chmod -R 444 /licenses/eula.txt

RUN mkdir -p /opt/operatr/lib
ADD kpow.jar /opt/operatr/lib/kpow.jar
RUN chmod -R 444 /opt/operatr/lib/kpow.jar

EXPOSE 3000
USER 1001
CMD java -XX:InitialRAMPercentage=80 -XX:MaxRAMPercentage=80 -jar /opt/operatr/lib/kpow.jar
