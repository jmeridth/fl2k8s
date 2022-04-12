#!/bin/bash

# build docker image
docker ps -a | awk '{ print $1,$2 }' | grep fl2k8s:latest | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi fl2k8s
docker build -t fl2k8s:latest .
docker tag fl2k8s:latest meridth/fl2k8s
docker push meridth/fl2k8s
