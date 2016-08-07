#!/usr/bin/env sh

adduser $DX_PHPFPM_USER
chown $DX_PHPFPM_USER /var/log/php-fpm
cat ./php-fpm/etc/php-fpm.d/www.conf | ./parse_env.sh > /etc/php-fpm.d/www.conf

