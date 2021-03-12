#!/usr/bin/env bash

set -Eeuxo pipefail

MANIFEST=$1
mkdir target
curl -o manifest -L -O $MANIFEST

IFS=$'\n'
for item in $(cat ./manifest) 
do
    IFS=$' '
    itemarray=( $item )
    FILENAME="${itemarray[0]}"
    S3_URL="${itemarray[1]}"
    curl -o $FILENAME -L -O $S3_URL
done