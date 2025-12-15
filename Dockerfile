FROM eclipse-temurin:17-jre-alpine

# 创建非 root 用户（安全）
RUN addgroup -S app && adduser -S app -G app
USER app

WORKDIR /app

# Spring Boot 容器友好配置
ENV JAVA_OPTS="-XX:+UseContainerSupport \
 -XX:MaxRAMPercentage=75.0 \
 -Djava.security.egd=file:/dev/./urandom"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
