#!/bin/bash

# start minikube
minikube start

# expose minikube (kubernetes host) docker images and containers to local commands
eval $(minikube docker-env)

# build docker image
docker ps -a | awk '{ print $1,$2 }' | grep fl8:latest | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi fl8
docker build -t fl8:latest .

# start fresh
kubectl delete deployment fl8
kubectl delete service fl8

# create kubernetes deployment and service
kubectl create -f flask.yml

# display all the things
kubectl get all

# display service endpoint url
minikube service fl8 --url

# open minikube dashboard
minikube dashboard
