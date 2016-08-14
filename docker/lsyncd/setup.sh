#!/usr/bin/env sh

mkdir -p /usr/local/etc/lsyncd

cat ./lsyncd/etc/dxstack1-synced.conf | ./parse_env.sh > /usr/local/etc/lsyncd/dxstack1-synced.conf