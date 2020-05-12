# Exercise Part 2 is done using docker-compose
It stated in the exercise to make is work simply by running `docker-compose up` from
an images `devopsdockeruh/first_volume_exercise` which in the end will save logs into the file system.

The commands use to create the `/usr/app/logs.txt` is the following:
```
bash -c "touch helper/logs.txt && rm logs.txt && ln -s helper/logs.txt logs.txt && node index"
```
## node index
The `node index` inspect from a container. Now when the container is started with current working directory bind mounted to 
`/usr/app/helper`.


