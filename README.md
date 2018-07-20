# Prerequisites

- docker (for Mac)
- kubernetes (for Mac)

```
brew update && brew cask install docker
```

# Start

  ./run.sh

# View

  kubectl get all

# Look for the target port on the Nodeport (source:target/TCP)

Example:
NAME                 TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
service/fl8          NodePort    10.102.88.231   <none>        8080:31659/TCP   16m


go to http://127.0.0.1:31659 to view the app
