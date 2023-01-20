#!/bin/sh
kubectl apply -n tempo -f grafana-agent-traces-configmap.yaml
kubectl apply -n tempo -f grafana-agent-traces-deployment.yaml
