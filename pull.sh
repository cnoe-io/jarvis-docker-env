#!/usr/bin/env bash

ARCH=$(uname -m)
if [[ "$ARCH" == "x86_64" ]]; then
    TAG="amd64"
elif [[ "$ARCH" == "arm64" || "$ARCH" == "aarch64" ]]; then
    TAG="arm64"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

docker pull haskalpa/jarvis-docker-env:$TAG-latest
docker image tag haskalpa/jarvis-docker-env:$TAG-latest cnoe-io/jarvis-docker-env-$TAG:latest
