# Ingress Nginx

## How to install

Mandatory Command 
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.26.2/deploy/static/mandatory.yaml

Create Services
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.26.2/deploy/static/provider/cloud-generic.yaml

Enable Minikube
> minikube addons enable ingress

After installation, it should have namespace ingress-nginx that contains pods ingress-nginx-controller and svc ingress-nginx

Verify by 
> kubectl get svc -n ingress-nginx

> kubectl get pod -n ingress-nginx

## Verify Ingress Nginx

With following command it should show pods and running state
> kubectl get pods --all-namespaces -l app.kubernetes.io/name=ingress-nginx --watch