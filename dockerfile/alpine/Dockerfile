FROM amazoncorretto:11.0.10

RUN mkdir -p /opt/operatr/lib
ADD kpow.jar /opt/operatr/lib/kpow.jar

CMD java -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70 -jar /opt/operatr/lib/kpow.jar
