# DaemonSet Exmaple

Since our minikube limitation only one node on local machine so we will use AWS for testing DaemonSet instead

## Steps to test DaemonSet

- Create cluster by following command

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

*change name,ssh-public-key*

- Deploy daemonset
  - kubectl apply -f ./ch6-logging/daemonset.yaml
- After finish please delete custer
  - eksctl delete cluster -n hta-cluster
    - depend on cluster name that you're using
