#FROM openjdk:8-alpine
FROM maven:3.3-jdk-8-alpine
RUN apk update
RUN apk info
COPY . /tmp
WORKDIR /tmp
RUN mvn install
COPY target/deploy-1.0-SNAPSHOT.jar .
