#!/usr/bin/env bash

set -Eeuxo pipefail

VERSION=$1
DOCKERFILE=$2
TAG=kpow:$VERSION
RELEASE=`date +%s`

docker build --pull --build-arg RELEASE=$RELEASE --build-arg VERSION=$VERSION -f $DOCKERFILE -t $TAG .
