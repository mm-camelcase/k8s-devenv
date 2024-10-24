#!/bin/bash

# Check if the user is logged in to Docker Hub
docker_logged_in=$(docker info 2>&1 | grep -i 'Username:')

if [[ -n "$docker_logged_in" ]]; then
	echo "You are already logged in to Docker Hub as $(echo $docker_logged_in | awk '{print $2}')"
else
	echo "You are not logged in to Docker Hub. Attempting to login..."
	docker login
	if [[ $? -eq 0 ]]; then
		echo "Login successful."
	else
		echo "Login failed. Please try again."
		exit 1
	fi
fi
