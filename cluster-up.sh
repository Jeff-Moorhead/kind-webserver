#!/usr/bin/bash

docker build -t kind-webserver:jtm-local .
kind create cluster --config cluster.yml
kind load docker-image kind-webserver:jtm-local
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

sleep 30  # Let stuff settle down a bit
kubectl apply -f deployment.yml
