#!/bin/bash

# start fresh
kubectl delete deployment fl8
kubectl delete service fl8

# create kubernetes deployment and service
kubectl create -f fl8-deployment.yml
kubectl create -f fl8-service.yml

# display all the things
kubectl get all
