#!/bin/bash
echo "Waiting for Kubernetes to be ready..."
while ! kubectl get nodes &>/dev/null; do 
    echo "Waiting for cluster..."
    sleep 2
done

echo "Waiting for node to become NotReady..."
sleep 30  # Give more time for node to transition to NotReady state
clear
echo "Environment is ready!"
kubectl get nodes