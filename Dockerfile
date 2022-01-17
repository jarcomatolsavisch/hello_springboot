FROM openjdk:8-jdk-alpine
COPY ./target/*.jar /Documents/mydocker/hello_world.jar
WORKDIR /Documents/mydocker
RUN sh -c 'touch hello_world.jar'
ENTRYPOINT ["java","-jar","hello_world.jar"]
