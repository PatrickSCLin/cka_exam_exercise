#!/bin/bash

while ! kubectl get nodes | grep node01 | grep NotReady &>/dev/null; do 
    sleep 2
done

echo "Environment is ready!"