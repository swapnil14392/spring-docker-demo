FROM openjdk:17-jdk-slim as builder
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
COPY src ./src
RUN ./mvnw clean install

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder app/target/spring-docker-app.jar app/spring-docker-app.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","app/spring-docker-app.jar"]

