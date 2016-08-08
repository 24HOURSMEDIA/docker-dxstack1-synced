#!/usr/bin/env sh

# recreate /var/lib/php/session for some reason
rm -R /var/lib/php
mkdir -p /var/lib/php/session
mkdir -p /var/lib/php/wsdlcache
chown -R $DX_PHPFPM_USER /var/log/php-fpm
chown -R $DX_PHPFPM_USER /var/lib/php


# extra configuration directory on share
export DX_PHPFPM_EXTRA_CONF_DIR=$DX_VOLUME_ETC/php-fpm.d
mkdir -p $DX_PHPFPM_EXTRA_CONF_DIR


cat ./php-fpm/etc/php-fpm.conf | ./parse_env.sh > /etc/php-fpm.conf
cat ./php-fpm/etc/php-fpm.d/www-default.conf | ./parse_env.sh > /etc/php-fpm.d/www.conf
cat ./php-fpm/etc/php.d/zz-custom.ini | ./parse_env.sh > /etc/php.d/zz-custom.ini

