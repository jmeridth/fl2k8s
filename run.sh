#!/bin/bash

# start fresh
kubectl delete deployment fl2k8s
kubectl delete service fl2k8s

# create kubernetes deployment and service
kubectl create -f fl2k8s-deployment.yml
kubectl create -f fl2k8s-service.yml

# display all the things
kubectl get all
