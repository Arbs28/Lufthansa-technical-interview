#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/log_in.sh"

terraform apply -input=false -auto-approve tfplan
