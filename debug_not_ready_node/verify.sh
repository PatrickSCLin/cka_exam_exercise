if ! kubectl get nodes | grep node02 | grep NotReady &>/dev/null; then
    exit 1
fi