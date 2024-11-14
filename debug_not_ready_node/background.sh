#!/bin/bash
ssh node01 -i "systemctl stop kubelet"
ssh node01 -i "systemctl disable kubelet" 