#!/bin/bash

# build docker image
docker ps -a | awk '{ print $1,$2 }' | grep fl8:latest | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi fl8
docker build -t fl8:latest .
docker tag fl8:latest meridth/fl8
docker push meridth/fl8

# start fresh
kubectl delete deployment fl8
kubectl delete service fl8

# create kubernetes deployment and service
kubectl create -f fl8-deployment.yml
kubectl create -f fl8-service.yml

# display all the things
kubectl get all
