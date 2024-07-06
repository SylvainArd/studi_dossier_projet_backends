#!/bin/bash
# deploy.sh

ECR_REGISTRY=$1
ECR_REPOSITORY=$2
IMAGE_TAG=$3

# Connecter à ECR
aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin $ECR_REGISTRY

# Tirer l'image Docker
sudo docker pull $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG

# Démarrer le conteneur
sudo docker run -d -p 80:8080 $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG