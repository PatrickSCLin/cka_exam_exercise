#!/bin/bash
ssh -i node01 "systemctl stop kubelet"
ssh -i node01 "systemctl disable kubelet" 