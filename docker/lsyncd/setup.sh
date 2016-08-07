#!/usr/bin/env sh

mkdir -p /usr/local/etc/lsyncd
cat ./lsyncd/etc/sync.conf | ./parse_env.sh > /usr/local/etc/sync.conf