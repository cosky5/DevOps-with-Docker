FROM openjdk:8

COPY / .

RUN apt-get update && apt-get install -y curl git
RUN git clone https://github.com/docker-hy/spring-example-project.git
WORKDIR spring-example-project

RUN ./mvnw package

EXPOSE 8080

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

