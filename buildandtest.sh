#!/bin/sh

# builds the image, and runs a test container named dxstack1_base_test (removes it first if it exists)
source version.sh
# build file



docker rm dxstack1_synced_test || echo ''
#
docker build .  -t 24hoursmedia/dxstack1-synced:$DXSTACK_VERSION && docker run --name=dxstack1_synced_dev -p 11999:80 -v /Volumes/DATA24/docker-volumes/test/mysql:/var/lib/mysql -v /Volumes/DATA24/docker-volumes/test/data:/data -v /Volumes/DATA24/docker-volumes/test/src:/opt/data-source -v /Volumes/DATA24/docker-volumes/test/etc:/opt/etc -ti 24hoursmedia/dxstack1-synced:$DXSTACK_VERSION

