#!/usr/bin/env bash

# This is based off build_all.sh, with the difference that
# this will produce images that target the Docker V2 Manifest
# mediatypes, instead of the standard OCI mediatypes that modern
# docker (and containerization in general) prefer.
#
# This is specifically a requirement for releasing on AWS Marketplace,
# where OCI images are not recognised. TBH I'm just grateful we don't
# need to produce AMIs.

set -Eeuxo pipefail

VERSION=$1
IMAGE_ID=$2
IMAGE_TAG=$3
DOCKERFILE=$4
RELEASE=`date +%s`

# remove sbom & provenance as it's not required for closed
# releases, i.e. marketplace. If enabled, could cause issues
# with the manifest and media type.

docker buildx build --pull \
  --build-arg RELEASE=$RELEASE \
  --build-arg VERSION=$VERSION \
  --platform=linux/amd64,linux/arm64 \
  --output type=image,oci-mediatypes=false \
  -f $DOCKERFILE \
  -t $IMAGE_ID:$IMAGE_TAG \
  --push .
