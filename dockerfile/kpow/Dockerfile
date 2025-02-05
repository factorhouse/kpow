FROM amazoncorretto:17.0.13

ARG VERSION
ARG RELEASE

LABEL name="Kpow for Apache Kafka" \
      maintainer="support@factorhouse.io" \
      vendor="Factor House" \
      version=$VERSION \
      release=$RELEASE \
      summary="Kpow is a toolkit for engineers who build, manage, and maintain systems powered by Apache Kafka." \
      description="Kpow features a rich data-oriented UI, specialized dashboards that deliver instant visibility into Kafka Clusters, Schema Registries, and Connect Installations, and developer tools that allow engineers to get to the heart of their systems quickly."

ADD --chmod=044 resources/eula.txt /licenses/eula.txt
ADD --chmod=044 target/kpow-java17-standalone.jar /opt/factorhouse/lib/kpow.jar

ENV CORE_ASYNC_POOL_SIZE=8
ENV JVM_OPTS="-server -Dclojure.core.async.pool-size=$CORE_ASYNC_POOL_SIZE -XX:MaxInlineLevel=15 -Djava.awt.headless=true -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70 --add-opens=java.xml/com.sun.org.apache.xerces.internal.dom=ALL-UNNAMED --add-opens=java.xml/com.sun.org.apache.xerces.internal.jaxp=ALL-UNNAMED --add-opens=java.xml/com.sun.org.apache.xerces.internal.util=ALL-UNNAMED"

EXPOSE 3000

CMD java $JVM_OPTS -jar /opt/factorhouse/lib/kpow.jar