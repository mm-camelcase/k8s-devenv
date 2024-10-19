#!/bin/bash

DIR=$(dirname "$0")

# setup common env vars

## Windows/WSL only - Update to reflect your settings
export MINIKUBE_MEM='8192'
export MINIKUBE_CPU='4'
export MINIKUBE_CTX='minikube'
export POSTGRESSQL_CHART_VERSION='16.0.3'

export RESOURCES_DIR="$DIR/resources"

# minikube
bash "$DIR/scripts/start-minikube.sh"

# check context(cluster) is minikube
bash "$DIR/scripts/check-context.sh" "$MINIKUBE_CTX"
retVal=$?
if [ $retVal -ne 0 ]; then
    exit 1;
fi

# dev namespace
kubectl apply -f "$DIR/resources/namespace-devenv.json"

# login to docker (prevent images for minikube from getting trottled)
bash "$DIR/scripts/docker-login.sh"

# add Helm repos
bash "$DIR/scripts/add-helm-repos.sh"

# set up db
bash "$DIR/scripts/configure-db.sh"

# create secrets
kubectl -n devenv apply -f "$DIR/resources/secrets.yaml"

# install services
bash "$DIR/scripts/install-services.sh"


# port forward (as opposed to NodePort, LoadBalancer or ingress in devenv - does not require changes in your Kubernetes manifest files)
bash "$DIR/scripts/port-forwards.sh"
