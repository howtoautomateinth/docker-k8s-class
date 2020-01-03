# Docker & K8S class
Workshop and examples for docker and k8s class

## Prepare working environment
- Docker (Required)
  - Mac
    - Download and install [Docker for mac](https://docs.docker.com/docker-for-mac/install/)
  - Window
    - Window 10 Pro and above
      - [Docker for window](https://docs.docker.com/docker-for-windows/install/)
    - Window 10 Home and below
      - [Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/)
- K8S (Required)
  - Mac
    - Enable on settings
  - Window
    - Enable on settings
    - [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) (Optional)
- Useful Tools
  - Window
    - [Chocolatey](https://chocolatey.org/install#individual)
      - [jq](https://chocolatey.org/packages/jq)
  - Mac
    - [Brew](https://brew.sh/)
      - [jq](https://stedolan.github.io/jq/download/)
- [Travis](https://travis-ci.org/) Account (Optional)
- [AWS Free Account](https://aws.amazon.com/) (Optional)
  
## Verify your machine with following command
- Docker
  - docker run hello-world
- K8S
  - kubectl cluster-info
- Package Manager
  - Window
    - choco -?
  - Mac
    - brew --version
