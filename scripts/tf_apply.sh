#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/log_in.sh"

PLAN_PATH="$PIPELINE_WORKSPACE/tfplan/tfplan"
echo "Using plan: $PLAN_PATH"
ls -l "$PIPELINE_WORKSPACE/tfplan"

terraform apply -input=false -auto-approve "$PLAN_PATH"
