# Task 07
## Configuring a [machine learning](https://en.wikipedia.org/wiki/Machine_learning) project
The project is created in three parts: [frontend](https://github.com/docker-hy/ml-kurkkumopo-frontend)
[backend](https://github.com/docker-hy/ml-kurkkumopo-backend) and [training app](https://github.com/docker-hy/ml-kurkkumopo-training).

## Note
The traiing requires 2 volumes and backend should share volume `/src/model`

## Ports
Flask backend running in port `5000`. Requires a model created by `ml-kurkkumopo-training` at `src/model`
