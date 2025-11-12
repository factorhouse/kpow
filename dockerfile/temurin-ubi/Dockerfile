FROM eclipse-temurin:17.0.17_10-jre-ubi9-minimal

ARG VERSION
ARG RELEASE

LABEL name="Kpow for Apache Kafka" \
      maintainer="support@factorhouse.io" \
      vendor="Factor House" \
      version=$VERSION \
      release=$RELEASE \
      summary="Kpow is a toolkit for engineers who build, manage, and maintain systems powered by Apache Kafka." \
      description="Kpow features a rich data-oriented UI, specialized dashboards that deliver instant visibility into Kafka Clusters, Schema Registries, and Connect Installations, and developer tools that allow engineers to get to the heart of their systems quickly."

COPY resources/eula.txt /licenses/eula.txt
COPY target/kpow-java17-standalone.jar /opt/factorhouse/lib/kpow.jar
COPY resources/entrypoint.sh /usr/local/bin/kpow.sh

RUN groupadd -g 1001 factorhouse && \
    useradd -r -u 1001 -g factorhouse factorhouse

RUN mkdir -p /opt/factorhouse/tmp
RUN chown -R factorhouse:factorhouse /opt/factorhouse

EXPOSE 3000
USER factorhouse

ENV JVM_OPTS="-server -Dorg.xerial.snappy.tempdir=/opt/factorhouse/tmp -XX:MaxInlineLevel=15 -Djava.awt.headless=true -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70"
CMD ["/usr/local/bin/kpow.sh"]
