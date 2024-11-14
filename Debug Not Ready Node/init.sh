#!/bin/bash
ssh node02 "systemctl stop kubelet"
ssh node02 "systemctl disable kubelet" 