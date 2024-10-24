#!/bin/bash

if ! minikube status; then
	echo "Starting local cluster..."

	if [ "$(uname)" == "Darwin" ]; then
		# macOS uses max mem / cpu allocated to the docker engine
		# explicitly exposes the port needed for localstack
		minikube start --wait=true --cpus='max' --memory='max'

	else
		minikube start --wait=true --cpus="$MINIKUBE_CPU" --memory="$MINIKUBE_MEM"

		# configure mtu within minikube docker (https://workhuman.atlassian.net/wiki/spaces/~369003331/pages/9408843914/Docker+Network+packet+issue+in+local+docker+development+environment+team-env)
		# otherwise calls to outside may hang (e.g. call to workday api)
		# this hasn't been an issue on mac so far
		#docker exec "minikube" bash -c "echo '{\"mtu\": 1350}' >> /etc/docker/daemon.json"
		#minikube stop
		#minikube start
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
