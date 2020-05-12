### Exercise 1.13

The following `Dockerfile` are in this directory.

After building the image with a `tag spring-example-project`.
```
$ docker build -t spring-example-project .
```
 
Then map the project to port `8080`.
```
$ sudo docker run -p 8080:8080 spring-example-project
```

