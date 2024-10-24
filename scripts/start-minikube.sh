#!/bin/bash

if ! minikube status; then
	echo "Starting local cluster..."

	if [ "$(uname)" == "Darwin" ]; then
		# macOS uses max mem / cpu allocated to the docker engine
		# explicitly exposes the port needed for localstack
		minikube start --wait=true --cpus='max' --memory='max'

	else
		minikube start --wait=true --cpus="$MINIKUBE_CPU" --memory="$MINIKUBE_MEM"
	fi
else
	echo "Local cluster already running..."
fi

# # Wait
# while ! minikube status | grep -q "host: Running"; do
#   echo "Waiting for Minikube..."
#   sleep 5
# done

# echo "Minikube is up and running!"
