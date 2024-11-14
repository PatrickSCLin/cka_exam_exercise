if ! kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token &>/dev/null; then
    exit 1
fi

if ! kubectl auth can-i get daemonset --as=system:serviceaccount:cicd:cicd-token &>/dev/null; then
    exit 1
fi

if ! kubectl auth can-i get statefulset --as=system:serviceaccount:cicd:cicd-token &>/dev/null; then
    exit 1
fi

if kubectl auth can-i get pods --as=system:serviceaccount:cicd:cicd-token -n default &>/dev/null; then
    exit 1
fi
