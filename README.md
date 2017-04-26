# Requirements

Minikube requires that VT-x/AMD-v virtualization is enabled in BIOS. To check that this is enabled on OSX / macOS run:

    sysctl -a | grep machdep.cpu.features | grep VMX

If there's output, you're good!

# Prerequisites

- kubectl
- docker (for Mac)
- minikube
- virtualbox

```
brew update && brew install kubectl && brew cask install docker minikube virtualbox
```

# Start

  ./run.sh
