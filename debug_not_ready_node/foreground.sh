while ! kubectl get nodes | grep node01 | grep NotReady &>/dev/null; do 
    clear
    sleep 2
done
clear

echo "Environment is ready!"