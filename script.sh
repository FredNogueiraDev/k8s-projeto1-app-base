#!/bin/bash

echo "building"

docker build -t frednogueira/kube-backend:1.0 backend/.
docker build -t frednogueira/kube-bd:1.0 database/.

echo "Push"

docker push frednogueira/kube-backend:1.0
docker push frednogueira/kube-bd:1.0

echo "Criando servicos no cluster kubernets..."

kubectl apply -f ./services.yml

echo "Realizando os deployments..."

kubectl apply -f ./deployment.yml
