#!/usr/bin/env bash

set -Eeuxo pipefail

JAR=$1
CHECKSUM=$2

curl -o kpow.jar -L -O $JAR
echo "$CHECKSUM kpow.jar" | sha256sum --check --status
