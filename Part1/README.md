# Exercises Part 1
These are exercises that does not required a separate folder.

## 1.1 Getting started
```
--> docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS                 NAMES
85a868984e8b        jenkins             "/bin/tini -- /usr/l…"   2 hours ago         Up 2 hours                  8080/tcp, 50000/tcp   mystifying_bouman
803af9a6faa2        nginx               "nginx -g 'daemon of…"   2 hours ago         Exited (0) 29 seconds ago                         agitated_lovelace
f6ae7ee8b93a        nginx               "nginx -g 'daemon of…"   2 hours ago         Exited (0) 10 seconds ago                         crazy_chandrasekhar
```
## 1.2 Cleanup
Result after cleaning the docker daemon from all images and containers.
```
docker ps -a ; docker images
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE

```

## 1.3 Hello Docker Hub
Reading the `Dockerfile` in docker hub, the password defined in the documentation of `devopsdockeruh/pull_exercise` is `basics`. Entered it to the running 
container yelds the secret message `This is the secret message`.
```
$ docker run -it devopsdockeruh/pull_exercise
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
8e402f1a9c57: Pull complete 
5e2195587d10: Pull complete 
6f595b2fc66d: Pull complete 
165f32bf4e94: Pull complete 
67c4f504c224: Pull complete 
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

## 1.4 Secret message
The secret message after starting image `devopsdockeruh/exec_bash_exercise` is: `Docker is easy`
```
--> docker run -d devopsdockeruh/exec_bash_exercise
Digest: sha256:c463832132d1fb0b8b3b60348a6fc36fda7512a4ef2d1050e8bea7b6a6d7a2f3

--> docker exec -it 0a6e bash
root@0a6ec02b9644:/usr/app# cat logs.txt 
	Secret message is:
	"Docker is easy"
```		

## 1.5 Searching $website
The container needs curl to installed before requesting the $website
```
--> docker run -dit ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
efb8e95a9f20937871d282b2356249b2512bd89ad2d9a532ff38c829ac2ff70a
--> docker exec -it efb8 bash
--> root@efb8e95a9f20:/# apt-get install curl
--> root@efb8e95a9f20:/# exit
--> docker attach efb8
--> helsinki.fi

Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
```

## 1.8 Log.txt
```
touch container.logs && docker run -v $(pwd)/container.logs:/usr/app/logs.txt devopsdockeruh/first_volume_exercise
(node:1) ExperimentalWarning: The fs.promises API is experimental
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
```

## 1.9 Ports
In this assignment the local port is not given, however, lets use port 80.
```
--> docker run -p 80:80 devopsdockeruh/ports_exercise
Unable to find image 'devopsdockeruh/ports_exercise:latest' locally
latest: Pulling from devopsdockeruh/ports_exercise
cd784148e348: Pull complete 
9abca35fefbf: Pull complete 
7fc670963d22: Pull complete 
893040f9bc16: Pull complete 
b0ae6401e570: Pull complete 
Digest: sha256:2ff93dd0c744aee7a8f00bc9558d09fd6279493da0d01769fe600f78fb4593f2
Status: Downloaded newer image for devopsdockeruh/ports_exercise:latest

> ports_exercise@1.0.0 start /usr/app
> node index.js

Listening on port 80, this means inside of the container. Use -p to map the port to a port of your local machine.

--> curl -X GET localhost:80
Ports configured correctly!!
```


































