# Steps to build the the app
```
$ docker-compose up
```

Now creating network "task10_default" with the default driver
```
Creating task10_frontend_1 ... done
Creating backend_db        ... done
Creating task10_redis_1    ... done
Creating task10_backend_1  ... done
Attaching to task10_frontend_1, backend_db, task10_redis_1, task10_backend_1
frontend_1  | 
frontend_1  | > frontend-example-docker@1.0.0 start /frontend-example-docker
frontend_1  | > webpack --mode production && serve -s -l 5000 dist
```
## Port
```
frontend_1  | INFO: Accepting connections at http://localhost:5000
backend_1   | Started on port 8000
```




