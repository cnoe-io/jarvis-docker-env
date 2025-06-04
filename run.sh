#!/usr/bin/env bash
WORKDIR=${1:-$HOME/workspace}
NAME="jarvis-docker-env"
USERID=`id -u`
GROUPID=`id -g`

ARCH=$(uname -m)
if [[ "$ARCH" == "x86_64" ]]; then
    TAG="amd64"
elif [[ "$ARCH" == "arm64" || "$ARCH" == "aarch64" ]]; then
    TAG="arm64"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

docker stop $NAME
docker rm -f $NAME
docker run -it \
--name $NAME \
-e USERID=$USERID \
-e GROUPID=$GROUPID \
-e USERNAME=$USER \
-v $WORKDIR:/workspace \
--entrypoint /files/user_run.sh \
cnoe-io/jarvis-docker-env:$TAG-latest
