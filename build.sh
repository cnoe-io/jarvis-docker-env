#!/usr/bin/env bash
REPO_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
TOP_DIR="$(dirname "$REPO_DIR")"
cd $REPO_DIR

docker buildx build \
  --platform linux/amd64,linux/arm64/v8 \
  --force-rm \
  -t ghcr.io/cnoe-io/jarvis-docker-env:latest \
  .
