# For Task 2.03
In this task the backend depends on the local `logs.txt` file which is mounted on the backend container.

The program simply works by running the following:
```
docker-compose up
```

To rebuild the image due to some reason/issues, you must use `docker-compose build` or `docker-compose up --build`.

## After built
The output shows this:
```
backend     | > backend-example-docker@1.0.0 start /backend-example-docker
backend     | > cross-env NODE_ENV=production node index.js
frontend    | > frontend-example-docker@1.0.0 start /frontend-example-docker
frontend    | > webpack --mode production && serve -s -l 5000 dist
```
### Ports
```
backend     | Started on port 8000
frontend    | INFO: Accepting connections at http://localhost:5000
```




