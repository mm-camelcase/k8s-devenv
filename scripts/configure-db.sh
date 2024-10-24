#!/bin/bash

# needs some idempotency work for the passwords and the pv

# password required for upgrade
export POSTGRESQL_PASSWORD=$(kubectl get secret --namespace devenv db-devenv-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode)

helm upgrade --install db-devenv bitnami/postgresql -n devenv --version "$POSTGRESSQL_CHART_VERSION" -f "$RESOURCES_DIR/db-values.yaml" --set postgresqlPassword=$POSTGRESQL_PASSWORD
kubectl -n devenv rollout status statefulset/db-devenv-postgresql
