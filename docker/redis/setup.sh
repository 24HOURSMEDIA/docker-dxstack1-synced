#!/usr/bin/env sh
cat ./redis/etc/redis.conf | ./parse_env.sh > /etc/redis.conf