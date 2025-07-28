# details_app Kubernetes Deployment

This project deploys the `details_app` Flask application into Kubernetes.

## Files
- `deployment.yaml`: Creates a Deployment with 2 replicas
- `service.yaml`: Exposes the app using a NodePort service
- `test.sh`: Deletes one pod to test self-healing via ReplicaSet
- `details_app/`: Source code and Dockerfile for building the app

## Steps

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
