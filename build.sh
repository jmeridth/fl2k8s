#!/bin/bash

# build docker image
docker ps -a | awk '{ print $1,$2 }' | grep fl8:latest | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi fl8
docker build -t fl8:latest .
docker tag fl8:latest meridth/fl8
docker push meridth/fl8
