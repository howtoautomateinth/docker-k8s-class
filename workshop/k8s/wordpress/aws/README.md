# Wordpress on EKS tutorial

Example how to deploy wordpress on AWS EKS

## Prerequsite

- [AWS CLI](https://pypi.org/project/awscli/)
  - pip install awscli --upgrade --user
  - aws configure (for using awscli, with eks credential)
- [eksctl](https://github.com/weaveworks/eksctl)
  - brew tap weaveworks/tap
  - brew install weaveworks/tap/eksctl

## Steps

- eksctl create cluster
    - for testing purpose (it need to show cluster endpoint instead of minikube)
      - kubectl get svc
      - kubectl config get-contexts

```
eksctl create cluster \
--name hta-cluster \
--version 1.14 \
--region us-east-1 \
--zones=us-east-1a,us-east-1b \--nodegroup-name standard-workers \
--node-type t3.medium \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--ssh-access=true \
--ssh-public-key hta-cluster-key \
--managed
```

- use helm to install wordpress via *install.sh*
- kubectl get all
  - in this step, you should see a list of pod and service that running on eks

*change name argument and ssh-public-key to the desired name*
*ssh-public-key default will trying to find in local first then will find in EC2 keypair*

## Recommendation

- Create Cluster with specific user
  - If console, please use user that generated for cluster not root user
  - If CLI, please user eksctl
    - user for cluster need **IAM policy** (If don't sure please select full access for all services)
      - ec2 key
      - cloudformation create
      - eks full access
      - iam create
- In case you want switch back to minikube
  - eksctl delete cluster -n hta-cluster
  - kubectl config get-contexts (should be minikube)

## Troblueshooting commandline

- aws sts get-caller-identity
- kubectl get svc --v=10
  