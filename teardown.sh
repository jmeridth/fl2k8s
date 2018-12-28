#!/bin/bash

# delete allthethings
kubectl delete deployment fl8
kubectl delete service rpi-fl8

# display all the things
kubectl get all
