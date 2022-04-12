#!/bin/bash

# start fresh
kubectl delete deployment rpi-fl2k8s
kubectl delete service rpi-fl2k8s

# create kubernetes deployment and service
kubectl create -f fl2k8s-rpi-deployment.yml
kubectl create -f fl2k8s-rpi-service.yml

# display all the things
kubectl get all
