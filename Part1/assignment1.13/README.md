# Exercise 1.13 Simple button

## How to start

Make sure you have java 8 installed

Build the project with `./mvnw package`

Run with `java -jar ./target/docker-example-1.1.3.jar`

### Buiding process
The following Dockerfile are in this directory.

After building the image with a `tag spring-example-project`.
```
$ docker build -t spring-example-project .
```
Then map the project to port `8080`.

```
$ sudo docker run -p 8080:8080 spring-example-project
```
