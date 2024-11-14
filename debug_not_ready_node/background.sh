#!/bin/bash
ssh node01 sudo systemctl stop kubelet
ssh node01 sudo systemctl disable kubelet