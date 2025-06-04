#!/usr/bin/env bash
docker image tag cnoe-io/jarvis-docker-env-arm64:latest haskalpa/jarvis-docker-env:arm64-latest
docker push haskalpa/jarvis-docker-env:arm64-latest
docker image tag cnoe-io/jarvis-docker-env:amd64-latest haskalpa/jarvis-docker-env:amd64-latest
docker push haskalpa/jarvis-docker-env:amd64-latest
