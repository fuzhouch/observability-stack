#!/bin/sh
# This setup installs Fluent Bit as DaemonSet for log collection. It
# follows official Grafana doc below. Unfortunately, the documentation
# is not up-to-date. Commands below are fixed following Github
# Fluent-bit Github repo: https://github.com/fluent/helm-charts 
#
# Reference: https://grafana.com/docs/loki/latest/clients/fluentbit/
#
# Fluent-bit is selected because it can be used in multiple
# scenarios, while promtail specifically designed for Loki. 

helm repo add fluent https://fluent.github.io/helm-charts
helm repo update
helm upgrade --install fluent-bit fluent/fluent-bit \
    --values fluentbit-helm-values.yaml
