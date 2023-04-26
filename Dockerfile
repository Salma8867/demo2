FROM ubuntu:20.04
MAINTAINER salma
LABEL "Customimage"="demo2"

RUN mkdir /opt/demo2project

WORKDIR /opt/demo2project
RUN apt-get update && apt-get -y install openjdk-8-jdk &&  apt-get -y install maven
RUN apt-get install -y git
RUN git clone https://github.com/Salma8867/demo2.git
WORKDIR /opt/demo2project/demo2
RUN mvn clean install -DskipTests=true
EXPOSE 8080
CMD java -jar target/demo2-0.0.1-SNAPSHOT.jar
