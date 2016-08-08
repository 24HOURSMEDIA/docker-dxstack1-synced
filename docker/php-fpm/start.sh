#!/usr/bin/env sh
export DX_PHPFPM_EXTRA_CONF_DIR=$DX_VOLUME_ETC/php-fpm.d
mkdir -p $DX_PHPFPM_EXTRA_CONF_DIR
php-fpm
