FROM amazoncorretto:11.0.13

ARG VERSION 
ARG RELEASE

LABEL name="kPow for Apache Kafka" \
      maintainer="support@operatr.io" \
      vendor="Operatr IO, Inc." \
      version=$VERSION \
      release=$RELEAE \
      summary="kPow is a toolkit for engineers who build, manage, and maintain systems powered by Apache Kafka." \
      description="kPow features a rich data-oriented UI, specialized dashboards that deliver instant visibility into Kafka Clusters, Schema Registries, and Connect Installations, and developer tools that allow engineers to get to the heart of their systems quickly."

ADD --chmod=044 resources/eula.txt /licenses/eula.txt
ADD --chmod=044 target/kpow-aws-mkt-corp-standalone.jar /opt/operatr/lib/kpow.jar

ENV CORE_ASYNC_POOL_SIZE=8
ENV JVM_OPTS="-server -Dclojure.core.async.pool-size=$CORE_ASYNC_POOL_SIZE -XX:MaxInlineLevel=15 -Djava.awt.headless=true -XX:InitialRAMPercentage=80 -XX:MaxRAMPercentage=80"

EXPOSE 3000

CMD java $JVM_OPTS -jar /opt/operatr/lib/kpow.jar