#!/usr/bin/env bash

set -Eeuxo pipefail

VERSION=$1
IMAGE_ID=$2
IMAGE_TAG=$3
DOCKERFILE=$4
RELEASE=`date +%s`

DOCKER_BUILDKIT=1 docker build --pull --build-arg RELEASE=$RELEASE --build-arg VERSION=$VERSION -f $DOCKERFILE -t $IMAGE_ID:$IMAGE_TAG .
