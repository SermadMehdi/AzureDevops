#!/bin/bash

# Define your Azure Container Registry and image details
ACR_NAME="sermadregistry" # Replace with your ACR name
IMAGE_NAME="$ACR_NAME.azurecr.io/sermadtestimage:$(Build.BuildId)" # Replace with your image details

# Define your Azure Container Instance details
CONTAINER_GROUP_NAME="sermadaci" # Replace with a unique name
REGION="eastasia" # Replace with your desired Azure region
CPU=0.75 # Adjust the CPU and memory settings as needed
MEMORY=1.5Gi

# Create Azure Container Instance
az container create \
    --resource-group harpoon \
    --name $CONTAINER_GROUP_NAME \
    --image $IMAGE_NAME \
    --cpu $CPU \
    --memory $MEMORY \
    --os-type Linux \
    --region $REGION \
    --dns-name-label sermad-aci-instance # Replace with your DNS label

# Check the status of the ACI deployment (optional)
az container show --resource-group harpoon> --name $CONTAINER_GROUP_NAME --query 'instanceView.state'
