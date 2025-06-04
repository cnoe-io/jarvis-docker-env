#!/usr/bin/env bash

# Set the working directory (default: $HOME/workspace)
WORKDIR=${1:-$HOME/workspace}

# Docker container name
NAME="jarvis-docker-env"

# Get current user and group IDs
USERID=$(id -u)
GROUPID=$(id -g)

# Stop and remove any existing container with the same name
docker stop "$NAME" 2>/dev/null || true
docker rm -f "$NAME" 2>/dev/null || true

# Run the Docker container with the specified settings
docker run -it \
  --name "$NAME" \
  -e USERID="$USERID" \
  -e GROUPID="$GROUPID" \
  -e USERNAME="$USER" \
  -v "$WORKDIR:/workspace" \
  --entrypoint /files/user_run.sh \
  ghcr.io/cnoe-io/jarvis-docker-env:latest
