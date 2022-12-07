#!/bin/sh

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update grafana
helm install --upgrade \
  --namespace loki \
  --values loki-helm-values.yaml \
  loki grafana/loki
