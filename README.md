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
The secret message after starting image `devopsdockeruh/exec_bash_exercise` is:
