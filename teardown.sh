#!/bin/bash

# delete allthethings
kubectl delete deployment fl2k8s
kubectl delete service rpi-fl2k8s

# display all the things
kubectl get all
