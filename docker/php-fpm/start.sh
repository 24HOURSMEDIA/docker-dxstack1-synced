#!/usr/bin/env sh
export DX_PHPFPM_EXTRA_CONF_DIR=$DX_VOLUME_ETC/php-fpm.d
mkdir -p $DX_PHPFPM_EXTRA_CONF_DIR

# copy example file to extra conf dir if not exist
if [ -f "$DX_PHPFPM_EXTRA_CONF_DIR/www.conf.example" ]; then
 echo ""
else
    cat ./php-fpm/etc/php-fpm.d/www.conf.example | ./parse_env.sh > $DX_PHPFPM_EXTRA_CONF_DIR/www.conf.example
fi

php-fpm
