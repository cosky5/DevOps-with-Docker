# Task 2.2
The next directory is the `docker-compose` file that starts a web service in `port 80`.

The following are commands and logs:
```
->docker-compose up
Pulling whoami (devopsdockeruh/ports_exercise:)...
latest: Pulling from devopsdockeruh/ports_exercise
cd784148e348: Pull complete
9abca35fefbf: Pull complete
7fc670963d22: Pull complete
893040f9bc16: Pull complete
b0ae6401e570: Pull complete
Digest: sha256:2ff93dd0c744aee7a8f00bc9558d09fd6279493da0d01769fe600f78fb4593f2
Status: Downloaded newer image for devopsdockeruh/ports_exercise:latest
Creating task02_whoami_1 ... done
Attaching to task02_whoami_1
whoami_1  | 
whoami_1  | > ports_exercise@1.0.0 start /usr/app
whoami_1  | > node index.js
whoami_1  | 
whoami_1  | Listening on port 80, this means inside of the container. Use -p to map the port to a port of your local machine.
```


