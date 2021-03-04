FROM amazoncorretto:11.0.10

ARG JAR_FILE

RUN mkdir -p /opt/operatr/lib
ADD ${JAR_FILE} /opt/operatr/lib/operatr.jar

CMD java -XX:InitialRAMPercentage=70 -XX:MaxRAMPercentage=70 -jar /opt/operatr/lib/operatr.jar
