#!/bin/bash
ssh node01 "sudo -i systemctl stop kubelet"
ssh node01 "sudo -i systemctl disable kubelet" 
