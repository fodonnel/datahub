#!/bin/bash
set -exo pipefail

aws cloudformation deploy \
    --template-file ./templates/registry.yaml \
    --stack-name "datahub-registry" \
    --parameter-overrides Prefix=fodonnel \
    --no-fail-on-empty-changeset \
    --tags project=datahub

