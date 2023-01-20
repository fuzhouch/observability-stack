#!/bin/sh

kubectl delete -n tns-cloud deployment/loadgen
kubectl delete -n tns-cloud service/loadgen
kubectl delete -n tns-cloud deployment/db
kubectl delete -n tns-cloud service/db
kubectl delete -n tns-cloud deployment/app
kubectl delete -n tns-cloud service/app
kubectl delete -n tns-cloud namespace/tns-cloud 
