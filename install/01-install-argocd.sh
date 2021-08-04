#!/bin/bash

ARGOCD_NS='argocd'
VALUES_FILE='values-override.yaml'

kubectl create ns $ARGOCD_NS

helm delete --install argocd ./argo-cd \
  --namespace=$ARGOCD_NS \
  --create-namespace \
  -f $VALUES_FILE

helm uninstall argocd