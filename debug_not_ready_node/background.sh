#!/bin/bash
echo "Initializing environment..."
while ! ssh node01 "systemctl status kubelet" &>/dev/null; do 
    echo "Waiting for kubelet service to be available..."
    sleep 2
done

ssh node01 sudo systemctl stop kubelet
ssh node01 sudo systemctl disable kubelet
echo "Node01 kubelet has been disabled"