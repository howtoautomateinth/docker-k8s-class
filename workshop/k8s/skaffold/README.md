# Skaffold Tutorial

Skaffold handles the workflow for building, pushing and deploying your application, allowing you to focus on what matters most: writing code.

## Skaffold Feature

- Fast local Kubernetes Development
- Remote development
- Tag management
- Rebuild only what's changed

## Skaffold Overview

![Skaffold Pipeline Stages](https://skaffold.dev/images/workflow.png)

Inside *skaffold.yaml* it depend on above stages which we can interact with

## Skaffold modes

- skaffold dev (local)
    - build
    - deploy
    - watch files
    - stream logs
- skaffold run (continuous deployment)
    - build
    - deploy
- skaffold build
    - build

## Prerequsite

- [Skaffold](https://skaffold.dev/docs/install/)
- [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
    - for local development

## Steps
- minikube start
- skaffold dev (for local testing)
    - change code in *python/**/*.py* will immediately effect on local cluster
    - changed will watching by skaffold and deploy to local cluster via kubectl with *k8s/k8s-* pattern 

## References
- [Skaffold YAML references](https://skaffold.dev/docs/references/yaml/)