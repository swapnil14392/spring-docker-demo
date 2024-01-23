
FROM openjdk:17-jdk-slim

COPY target/spring-docker-app.jar spring-docker-app.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/spring-docker-app.jar"]