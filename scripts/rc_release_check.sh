#!/usr/bin/env bash

set -Eeuxo pipefail

# Check if a string contains the substring "-rc"

input_string="$1"

if [[ "$input_string" == *"-rc"* ]]; then
  exit 0
else
  echo "The string does not contain '-rc'."
  exit 1
fi

