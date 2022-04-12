# fl2k8s

fl2k8s = Flaskubernetes = Flask on Kubernetes

# Prerequisites


## For OSX

- minikube
- hyperkit

```
brew update && brew cask install minikube hyperkit
```

## For Ubuntu/Linux

- minikube
- virtualbox

[Installation instructions for minikube here](https://kubernetes.io/docs/tasks/tools/install-minikube/)

# For ARM (raspberry pi) deployment

Reference post [here](http://www.hotblackrobotics.com/en/blog/2018/01/22/docker-images-arm/)

To add QEMU in the build agent there is a specific Docker Image performing what we need, so just run in your command line:

  docker run --rm --privileged multiarch/qemu-user-static:register --reset

# For non-ARM deployment

  ./run.sh

# For ARM (raspberry pi) deployment

  ./run-rpi.sh

# View

  alias k="kubectl"
  k get all

# Look for the target port on the Nodeport (source:target/TCP)

Example:

NAME                 TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE

service/fl2k8s       NodePort    10.102.88.231   <none>        8080:31659/TCP   16m

## For OSX with Docker for Mac w/ Kubernetes

go to http://127.0.0.1:31659 to view the app

## For Ubunutu/Linux with minikube

get the node IP from minikube first:

  $ minikube ip

  192.168.99.101

go to http://192.168.99.101:31659 to view the app

## For regular Kubernetes cluster

  Coming soon
