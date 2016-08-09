#!/usr/bin/env sh

export DX_NGINX_EXTRA_VHOSTS_DIR=$DX_VOLUME_ETC/nginx/vservers
mkdir -p $DX_NGINX_EXTRA_VHOSTS_DIR


/etc/init.d/nginx start