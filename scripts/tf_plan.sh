#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/log_in.sh"

terraform plan -input=false -out=tfplan -var="environment=${environment:-dev}"
