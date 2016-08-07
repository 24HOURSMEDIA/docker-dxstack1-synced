#!/usr/bin/env sh
/etc/init.d/mysql start
mysql -uroot < /tmp/create_user.sql
unlink /tmp/create_user.sql;