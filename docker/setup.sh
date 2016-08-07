#!/usr/bin/env sh

chmod +x parse_env.sh

# test environment variables
cat test-environment | ./parse_env.sh > /tmp/test_environment

# create mountpoints
mkdir -p $DX_VOLUME_ETC
mkdir -p DX_VOLUME_DATASOURCE
mkdir -p $DX_DIR_DATASYNCED

sh lsyncd/setup.sh
sh phpmyadmin/setup.sh
sh php-fpm/setup.sh
sh nginx/setup.sh
sh redis/setup.sh
sh memcached/setup.sh
sh mariadb/setup.sh



