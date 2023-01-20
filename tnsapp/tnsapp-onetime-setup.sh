#!/bin/sh

CURRENT_CTX=`kubectl config get-contexts|grep "\*" | awk '{ print $2 }'`
echo Current Kubernetes context: ${CURRENT_CTX}

git clone http://github.com/grafana/tns
cd tns
rm -rf ./tanka/   # Tanka env must be cleaned for second run
echo Please open another window and update JAEGER_AGENT_HOST at file:
echo     tns/production/sample/tns-cloud/main.jsonnet
echo When you are done, press any key to continue...
read -n 1

echo Start running ./install
./install "${CURRENT_CTX}" app-only
