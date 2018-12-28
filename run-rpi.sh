#!/bin/bash

# start fresh
kubectl delete deployment rpi-fl8
kubectl delete service rpi-fl8

# create kubernetes deployment and service
kubectl create -f fl8-rpi-deployment.yml
kubectl create -f fl8-rpi-service.yml

# display all the things
kubectl get all
