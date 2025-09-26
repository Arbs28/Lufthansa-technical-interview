#!/usr/bin/env bash
set -euo pipefail
set -x

# Derive the subscription from the logged-in service connection
SUB_ID="$(az account show --query id -o tsv)"
az account set -s "$SUB_ID"

# OIDC env (no client secret)
export ARM_USE_OIDC=true
export ARM_CLIENT_ID="$servicePrincipalId"
export ARM_TENANT_ID="$tenantId"
export ARM_SUBSCRIPTION_ID="$SUB_ID"

cd infrastructure
rm -rf .terraform
terraform init -input=false
