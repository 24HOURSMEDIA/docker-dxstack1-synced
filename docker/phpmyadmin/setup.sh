#!/usr/bin/env sh


cp -Rp ./phpmyadmin/htdocs /opt/phpMyAdmin
chown -R $DX_PHPFPM_USER /opt/phpMyAdmin