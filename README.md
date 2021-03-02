# DevOps-with-Docker
A repository for the MOOC course Project https://devopswithdocker.com/

## Docker Commands - To Analyze Container Logs
To check log

```
docker log <container_id>
```

To Inspect docker container

```
docker inspect --form={{.LogPath}} 134597759fid58fbdd
```

