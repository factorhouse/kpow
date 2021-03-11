#!/usr/bin/env bash

set -Eeuxo pipefail

RELEASE=$1
DOCKERFILE=$2
TAG=kpow:$RELEASE

docker build -f $DOCKERFILE -t $TAG .
