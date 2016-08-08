#!/bin/sh

# builds the image, and runs a test container named dxstack1_base_test (removes it first if it exists)

docker rm dxstack1_synced_test || echo ''
docker build .  -t 24hoursmedia/dxstack1-synced:development && docker run --name=dxstack1_synced_test -ti 24hoursmedia/dxstack1-synced:development -p 11080:80