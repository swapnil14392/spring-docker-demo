
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/spring-docker-app.jar app/spring-docker-app.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","app/spring-docker-app.jar"]