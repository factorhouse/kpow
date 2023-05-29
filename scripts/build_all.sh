#!/usr/bin/env bash

set -Eeuxo pipefail

VERSION=$1
IMAGE_ID=$2
IMAGE_TAG=$3
DOCKERFILE=$4
RELEASE=`date +%s`

docker buildx build --pull \
  --build-arg RELEASE=$RELEASE \
  --build-arg VERSION=$VERSION \
  --platform=linux/amd64,linux/arm64 \
  -f $DOCKERFILE \
  -t $IMAGE_ID:$IMAGE_TAG \
  --push .