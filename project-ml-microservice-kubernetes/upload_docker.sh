#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=primendo/api-flask

# Step 2:  
# Authenticate & tag
docker login --username primendo
docker tag api-flask primendo/api-flask
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath
