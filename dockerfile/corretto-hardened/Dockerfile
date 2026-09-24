FROM dhi.io/amazoncorretto:25-alpine3.23

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
COPY --chown=factorhouse:factorhouse target/kpow-java25-standalone.jar /opt/factorhouse/lib/kpow.jar
COPY --chown=factorhouse:factorhouse resources/tmp/ /opt/factorhouse/tmp/

ENV JVM_OPTS="-server -Dorg.xerial.snappy.tempdir=/opt/factorhouse/tmp -XX:MaxInlineLevel=15 -Djava.awt.headless=true -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70 --sun-misc-unsafe-memory-access=allow -XX:+UseCompactObjectHeaders -XX:+UseStringDeduplication"

EXPOSE 3000

ENTRYPOINT ["java"]

CMD ["-server", \
     "-Dorg.xerial.snappy.tempdir=/opt/factorhouse/tmp", \
     "-XX:MaxInlineLevel=15", \
     "-Djava.awt.headless=true", \
     "-XX:InitialRAMPercentage=70", \
     "-XX:MaxRAMPercentage=70", \
     "--sun-misc-unsafe-memory-access=allow", \
     "-XX:+UseCompactObjectHeaders", \
     "-XX:+UseStringDeduplication", \
     "-jar", \
     "/opt/factorhouse/lib/kpow.jar"]
