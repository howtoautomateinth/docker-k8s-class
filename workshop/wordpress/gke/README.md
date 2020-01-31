
# Wordpress on EKS tutorial

Example how to deploy wordpress on Google Cloud Platform

## Prerequsite

- install [gcloud cli](https://cloud.google.com/sdk/docs/downloads-interactive) based on your OS
- gcloud init
  - for config project that going to use
- gcloud container clusters get-credentials *wp-cluster* --region=*us-west1-a*
  - change cluster name and region based on your configuration
  - this step will modify your local kubeconfig to generate context for your local machine
- gcloud auth application-default login
  - authenticated with the Google Cloud SDK
  - for enable using Google client libraries

## Steps

- Create cluster with gcloud gke
  - gcloud container clusters create wp-cluster --enable-cloud-logging --enable-cloud-monitoring --subnetwork=default --zone=us-west1-a
    - change cluster name and region based on your desired
  - *Verify by*
    - kubectl config get-contexts
    - kubectl get services
- install.sh to install wordpress with helm
- use web dashboard to view object in gke
- uninstall.sh to uninstall wordpress with helm
- gcloud container clusters delete wp-cluster --region=us-west1-a
  - change cluster name and region based on your desired