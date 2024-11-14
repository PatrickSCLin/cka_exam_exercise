if ! kubectl get nodes | grep node01 | grep NotReady &>/dev/null; then
    exit 1
fi