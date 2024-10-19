#!/bin/bash

PROCS_TO_KILL=$(ps -ef | grep 'kubectl port-forward' | grep -v grep)

if [ -z "${PROCS_TO_KILL}" ]
then
   exit 0;
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${RED}"
echo "Killing the following port forward processes"
echo "______________________________________________"
printf "| %-30s | %-10s | \n" "SERVICE" "PORTS"
echo "-----------------------------------------------"
echo "$PROCS_TO_KILL" | awk '{printf "| %-30s | %-10s |\n", $10, $11 }'
echo "-----------------------------------------------"
echo -e "${NC}"

echo "$PROCS_TO_KILL" | awk '{print $2}' | xargs kill



