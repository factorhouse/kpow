#!/usr/bin/env bash

set -Eeuxo pipefail

VERSION=$1

if [[ "$VERSION" == *"-rc"* ]]; then
  echo "Error: Release version cannot contain '-rc'. Use the release_rc workflow for RC releases."
  exit 1
else
  exit 0
fi