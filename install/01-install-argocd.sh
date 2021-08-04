#!/bin/bash

ARGOCD_NS='argocd'
VALUES_FILE='values-override.yaml'

kubectl create ns $ARGOCD_NS

helm upgrade --install argocd ./argo-cd \
  --namespace=$ARGOCD_NS \
  --create-namespace \
  -f $VALUES_FILE