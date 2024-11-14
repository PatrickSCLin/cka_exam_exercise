#!/bin/bash

while ! ssh node01 "systemctl status kubelet" &>/dev/null; do 
    sleep 2
done

ssh node01 sudo systemctl stop kubelet
ssh node01 sudo systemctl disable kubelet