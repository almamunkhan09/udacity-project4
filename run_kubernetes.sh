#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

dockerpath=khanalmamun/ml-micro

# Step 2
# Run the Docker Hub container with kubernetes

kubectl run ml-micro --image=${dockerpath}
sudo sleep 120s

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-micro 8000:80
