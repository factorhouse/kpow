FROM registry.access.redhat.com/ubi8/openjdk-17:1.21-1.1751400628

ARG VERSION
ARG RELEASE

LABEL name="Kpow for Apache Kafka" \
      maintainer="support@factorhouse.io" \
      vendor="Factor House" \
      version=$VERSION \
      release=$RELEASE \
      summary="Kpow is a toolkit for engineers who build, manage, and maintain systems powered by Apache Kafka." \
      description="Kpow features a rich data-oriented UI, specialized dashboards that deliver instant visibility into Kafka Clusters, Schema Registries, and Connect Installations, and developer tools that allow engineers to get to the heart of their systems quickly."

USER 0

ADD --chmod=044 resources/eula.txt /licenses/eula.txt
ADD --chmod=044 target/kpow-java17-standalone.jar /opt/factorhouse/lib/kpow.jar
ADD --chmod=044 resources/entrypoint.sh /usr/local/bin/kpow.sh

RUN groupadd -g 1001 factorhouse && \
    useradd -r -u 1001 -g factorhouse factorhouse

RUN mkdir -p /opt/factorhouse/tmp
RUN chown -R factorhouse:factorhouse /opt/factorhouse

EXPOSE 3000
USER factorhouse

ENV CORE_ASYNC_POOL_SIZE=8
ENV JVM_OPTS="-server -Dorg.xerial.snappy.tempdir=/opt/factorhouse/tmp -Dclojure.core.async.pool-size=$CORE_ASYNC_POOL_SIZE -XX:MaxInlineLevel=15 -Djava.awt.headless=true -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70"
CMD ["/usr/local/bin/kpow.sh"]
