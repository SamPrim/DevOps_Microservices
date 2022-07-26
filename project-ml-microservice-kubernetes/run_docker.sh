#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=primendo/api-flask .

# Step 2: 
docker image ls

# Step 3: 
docker run -p 8000:80 --name api-flask primendo/api-flask
