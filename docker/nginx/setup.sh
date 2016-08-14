#!/usr/bin/env bash

echo "setting up and configuring nginx"

export DX_NGINX_VHOSTS_DIR=/etc/nginx/vservers
export DX_NGINX_EXTRA_VHOSTS_DIR=$DX_VOLUME_ETC/nginx/vservers

mkdir -p $DX_NGINX_VHOSTS_DIR
mkdir -p $DX_NGINX_EXTRA_VHOSTS_DIR
cat ./nginx/etc/vservers/default.vserver | ./parse_env.sh > $DX_NGINX_VHOSTS_DIR/default.vserver

mkdir -p /var/cache/nginx
chown -R nginx /var/cache/nginx


# replace nginx file
cat ./nginx/etc/nginx.conf | ./parse_env.sh > /etc/nginx/nginx.conf

