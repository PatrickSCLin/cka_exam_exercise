#!/bin/bash 2>/dev/null
tput civis 2>/dev/null; while ! kubectl get nodes | grep node01 | grep NotReady &>/dev/null; do sleep 2; done; clear; tput cnorm; echo "Environment is ready!"