#!/bin/bash

# image in public repo
helm upgrade --install -n devenv user-service oci://ghcr.io/mm-camelcase/helm-charts/user-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# image in private repo
helm upgrade --install -n devenv nginx-hello oci://ghcr.io/mm-camelcase/helm-charts/nginx-hello --devel

# Validate all charts
kubectl -n devenv rollout status deployment/user-service
kubectl -n devenv rollout status deployment/nginx-hello


