#!/bin/bash

#helm repo update workhumandev
# helm upgrade --install -n dev partner-auth-devenv workhumandev/partner-auth-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev email-api-devenv workhumandev/email-api-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev gateway-devenv workhumandev/spring-boot-partner-gateway --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev partner-app-devenv workhumandev/partner-app --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev workday-config-devenv workhumandev/workday-config-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev job-history-devenv  workhumandev/job-history-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# helm upgrade --install -n dev scheduler-devenv workhumandev/scheduler-service --devel -f "$RESOURCES_DIR/devenv-values.yaml" # --set serviceAccount.create=false
# helm upgrade --install -n dev sftplistener-devenv workhumandev/workday-payroll-sftplistener --devel -f "$RESOURCES_DIR/devenv-values.yaml"

# public repo
helm upgrade --install -n devenv user-service oci://ghcr.io/mm-camelcase/helm-charts/user-service --devel -f "$RESOURCES_DIR/devenv-values.yaml"
# private repo
helm upgrade --install -n devenv nginx-hello oci://ghcr.io/mm-camelcase/helm-charts/nginx-hello --devel

# Validate all charts
kubectl -n devenv rollout status deployment/user-service
kubectl -n devenv rollout status deployment/nginx-hello

# kubectl -n dev rollout status deployment/email-api-service
# kubectl -n dev rollout status deployment/job-history-service
# kubectl -n dev rollout status deployment/localstack
# kubectl -n dev rollout status deployment/sftp-devenv
# kubectl -n dev rollout status deployment/partner-app
# kubectl -n dev rollout status deployment/partner-auth-service
# kubectl -n dev rollout status deployment/scheduler-service
# kubectl -n dev rollout status deployment/spring-boot-partner-gateway
# kubectl -n dev rollout status deployment/workday-config-service
# kubectl -n dev rollout status deployment/workday-payroll-sftplistener
