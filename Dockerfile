FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y openjdk-17-jdk

RUN apt-get install -y maven

COPY . /home

WORKDIR /home

ENV DB_URL=jdbc:mysql://localhost:3306/db_example

ENV DB_USERNAME=springuser

ENV DB_PASSWORD=ThePassword

EXPOSE 8090

CMD ["mvn","spring-boot:run"]
