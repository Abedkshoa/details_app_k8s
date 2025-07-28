#!/bin/bash

echo "Getting pod name..."
POD=$(kubectl get pods -l app=details-app -o jsonpath="{.items[0].metadata.name}")
echo "Deleting pod: $POD"
kubectl delete pod $POD

echo "Watching pod status..."
kubectl get pods -l app=details-app -w
