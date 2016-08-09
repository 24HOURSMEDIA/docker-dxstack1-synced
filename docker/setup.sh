#!/usr/bin/env sh

# shell script that parses environment variables in text files
chmod +x parse_env.sh

# test environment variables
# cat test-environment | ./parse_env.sh > /tmp/test_environment

# create a symlink /source to point to the synced data (default)
# users can change this to point to /opt/data-source alternatively
# the purpose is to let vhost configuration just point to source, regardless wether
# this concerns the synced data or the source data
ln -s /opt/data-synced /source

# create mountpoints
mkdir -p $DX_VOLUME_ETC
mkdir -p $DX_VOLUME_DATASOURCE
mkdir -p $DX_DIR_DATASYNCED
mkdir -p $DX_VOLUME_DATA

adduser $DX_PHPFPM_USER

sh webapp/setup.sh
sh lsyncd/setup.sh
sh php-fpm/setup.sh
sh symfony/setup.sh
sh phpmyadmin/setup.sh
sh nginx/setup.sh
sh redis/setup.sh
sh memcached/setup.sh
sh mariadb/setup.sh




