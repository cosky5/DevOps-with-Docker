#!/bin/bash

docker build -t backend-example-docker .
docker run -v $(PWD)/:/backend-example-docker/logs.txt \
	-p 8000:8000 \
	backend-example-docker
