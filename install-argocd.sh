#!/bin/bash

ARGOCD_NS='argocd'
VALUES_FILE='values-override.yaml'
DIR='dev_cluster/01-argocd-infra-helm'

echo "Installing argocd helm chart..."
helm upgrade --install argocd $DIR/argocd-helm-chart  \
  --namespace=$ARGOCD_NS \
  --create-namespace -f $DIR/$VALUES_FILE

