#!/bin/bash

MINIKUBE_CTX=$1

current_context="$(kubectl config current-context)"

if [[ $current_context != $MINIKUBE_CTX ]]; then
	echo "Your context is set to '$current_context'. Set it manually to '$MINIKUBE_CTX' and try again "
	exit 1
fi
