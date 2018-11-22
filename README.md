# Prerequisites


## For OSX

- docker (for Mac)
- kubernetes (for Mac)

```
brew update && brew cask install docker
```

## For Ubuntu/Linux

- minikube
- virtualbox

[Installation instructions for minikube here](https://kubernetes.io/docs/tasks/tools/install-minikube/)


# Start

  ./run.sh

# View

  kubectl get all

# Look for the target port on the Nodeport (source:target/TCP)

Example:

NAME                 TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE

service/fl8          NodePort    10.102.88.231   <none>        8080:31659/TCP   16m

## For OSX

go to http://127.0.0.1:31659 to view the app

## For Ubunutu/Linux

get the node IP from minikube first:

  $ minikube ip

  192.168.99.101

go to http://192.168.99.101:31659 to view the app
