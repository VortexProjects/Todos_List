FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y openjdk-17-jdk

RUN apt-get install -y maven

COPY . /home

WORKDIR /home

EXPOSE 8090

CMD ["mvn","spring-boot:run"]
