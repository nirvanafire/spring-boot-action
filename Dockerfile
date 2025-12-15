FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

ENV JAVA_OPTS="-XX:+UseContainerSupport \
 -XX:MaxRAMPercentage=75.0 \
 -Djava.security.egd=file:/dev/./urandom"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
