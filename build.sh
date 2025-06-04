#!/usr/bin/env bash
REPO_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
TOP_DIR="$(dirname "$REPO_DIR")"
cd $REPO_DIR
docker build --platform linux/arm64/v8 --force-rm -t cnoe-io/jarvis-docker-env:arm64-latest .
docker build --platform linux/amd64 --force-rm -t cnoe-io/jarvis-docker-env:amd64-latest .
