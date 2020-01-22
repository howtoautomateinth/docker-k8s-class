# Web UI (Dashboard)

## How to install

- Manual
  
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml

- helm

> helm install my-dashboard stable/kubernetes-dashboard

## How to create user

Create service account and role binding

> k apply -f ./dashboard

### Get Token

bash
> kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')

Powershell
> kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | sls admin-user | ForEach-Object { $_ -Split '\s+' } | Select -First 1)

## How to use

Open proxy 
> k proxy
  
then access via url

> http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/


## How to uninstall
  
- Manual

> k delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml

- Helm

> helm uninstall my-dashboard