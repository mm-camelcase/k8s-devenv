#!/bin/bash

USER_SERVICE_PORT=8080
DB_PORT=5432

DIR="$(cd "$(dirname "$0")" && pwd)"
bash "$DIR/kill-port-forwards.sh"
bash "$DIR/kill-sk-port-forwards.sh"

kubectl port-forward svc/user-service $USER_SERVICE_PORT:8080 -n devenv 2>&1 >/dev/null &
kubectl port-forward svc/db-devenv-postgresql $DB_PORT:5432 -n devenv 2>&1 >/dev/null &

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}"
echo "Starting the following background port forward processes"
echo "_____________________________________________________________________________________________"
printf "| %-30s | %-4s | %-50s | \n" "SERVICE" "PORT" "URL"
echo "---------------------------------------------------------------------------------------------"
printf "| %-30s | %-4s | %-50s | \n" "svc/user-service" "8080" "http://127.0.0.1:8080"
printf "| %-30s | %-4s | %-50s | \n" "svc/db-devenv-postgresql" "5432" ""
echo "---------------------------------------------------------------------------------------------"
echo -e "${NC}"

printf "Port forwards are running as background processes\n"
printf "Run ${YELLOW}"$DIR/kill-port-forwards.sh"${NC} to kill them\n\n"

