#!/usr/bin/env bash

set -Eeuxo pipefail

if [ $1 == 'true' ]
then
  exit 0
else
  exit 1
fi

