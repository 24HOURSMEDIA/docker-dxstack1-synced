#!/bin/sh

source version.sh
# build file
docker build .  -t 24hoursmedia/dxstack1-synced:$DXSTACK_VERSION