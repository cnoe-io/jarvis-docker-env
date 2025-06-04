#!/usr/bin/env bash
REPO_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
NAME="jarvis-docker-env"

if [ ! "$(docker ps -aq -f status=running -f name=$NAME)" ]; then
    sh $REPO_DIR/run.sh
else
    docker exec -it $NAME sudo -i -u $USER
fi
