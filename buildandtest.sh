#!/bin/sh

# builds the image, and runs a test container named dxstack1_base_test (removes it first if it exists)

docker rm dxstack1_synced_test || echo ''
docker build .  -t 24hoursmedia/dxstack1:synced && docker run --name=dxstack1_synced_test -ti 24hoursmedia/dxstack1:synced -p 10080:80 -p 10443:443 -p 18080:8080 -p 13306:3306