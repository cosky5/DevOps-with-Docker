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
