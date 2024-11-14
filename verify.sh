#!/bin/bash

if ! kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    exit 1
fi

if ! kubectl auth can-i get daemonset --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    exit 1
fi

if ! kubectl auth can-i get statefulset --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    exit 1
fi

if kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token -n default &>/dev/null; then
    exit 1
fi

if ! kubectl get sa cicd-token -n cicd &>/dev/null; then
    exit 1
fi

if ! kubectl get rolebinding -n cicd | grep cicd-token | grep cicd-cluster-role &>/dev/null; then
    exit 1
fi

exit 0 
