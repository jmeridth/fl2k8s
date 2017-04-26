#!/bin/bash

# start minikube
minikube start

# expose minikube (kubernetes host) docker images and containers to local commands
eval $(minikube docker-env)

# build docker image
docker ps -a | awk '{ print $1,$2 }' | grep flask-sample-one:latest | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi flask-sample-one
docker build -t flask-sample-one:latest .

# create local docker registry and push new image to it
docker rm -f registry
docker rmi registry
docker run -d -p 5000:5000 --restart=always --name registry registry:2
docker tag flask-sample-one localhost:5000/flask-sample-one
docker push localhost:5000/flask-sample-one

# start fresh
kubectl delete deployment flask-sample-one
kubectl delete service flask-sample-one

# create kubernetes deployment and service
kubectl create -f flask.yml

# display all the things
kubectl get all

# display service endpoint url
minikube service flask-sample-one --url

# open minikube dashboard
minikube dashboard
