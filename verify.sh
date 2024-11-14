#!/bin/bash

PASS=true

# Check permissions in cicd namespace
if ! kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    PASS=false
fi

if ! kubectl auth can-i get daemonset --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    PASS=false
fi

if ! kubectl auth can-i get statefulset --as=system:serviceaccount:cicd:cicd-token -n cicd &>/dev/null; then
    PASS=false
fi

# Check that access is denied in default namespace
if kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token -n default &>/dev/null; then
    PASS=false
fi

# Check service account exists
if ! kubectl get sa cicd-token -n cicd &>/dev/null; then
    PASS=false
fi

# Check rolebinding exists and is correctly configured
if ! kubectl get rolebinding -n cicd | grep cicd-token | grep cicd-cluster-role &>/dev/null; then
    PASS=false
fi

# Exit based on results
if [ "$PASS" = true ]; then
    exit 0
else
    exit 1
fi
