#!/bin/bash

set -e

sed 's/COMMIT_ID_TAG/'$CI_COMMIT_ID'/g' kube-deployment-template.yml > kube-deployment.yml

kubectl apply -f deploy/kube-deployment.yml
