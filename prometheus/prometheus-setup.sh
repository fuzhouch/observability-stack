#!/bin/sh

kubectl apply -f prometheus-namespace.yaml
kubectl apply -f prometheus-pvc.yaml
kubectl apply -f ../storage/prometheus-pv.yaml
kubectl apply -f prometheus-configmap.yaml
kubectl apply -f prometheus-rbac.yaml
kubectl apply -f prometheus-deployment.yaml
