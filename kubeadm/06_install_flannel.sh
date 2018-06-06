#!/bin/bash

wget https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml

# Wait a while to let network takes effect
sleep 10
kubectl get pods --all-namespaces
