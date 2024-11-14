#!/bin/bash
echo "Waiting for Kubernetes to be ready..."
while ! kubectl get nodes &>/dev/null; do sleep 1; done
clear
echo "Environment is ready!"