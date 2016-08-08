#!/bin/sh

# builds the image, and runs a test container named dxstack1_base_test (removes it first if it exists)
source version.sh
# build file



docker rm dxstack1_synced_test || echo ''
docker build .  -t 24hoursmedia/dxstack1-synced:$DXSTACK_VERSION && docker run --name=dxstack1_synced_test -ti 24hoursmedia/dxstack1-synced:$DXSTACK_VERSION -p 11080:80