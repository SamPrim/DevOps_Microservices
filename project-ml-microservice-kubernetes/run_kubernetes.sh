#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=primendo/api-flask

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api-flask --image=primendo/api-flask --port=8080 app=api-flask

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward pod/api-flask --address 0.0.0.0 8080:80

