#!/usr/bin/env sh

# test if /var/lib/mysql is empty..
if [ "$(ls -A /var/lib/mysql/)" ]; then
     echo "/var/lib/mysql not empty, skip initializing"
else
     echo "/var/lib/mysql empty, initialize"
     mysql_install_db --user=mysql --datadir=/tmp/mysql
     cp -R /tmp/mysql/* /var/lib/mysql/
     chmod -R 777 /var/lib/mysql
     rm -R /tmp/mysql
fi

/etc/init.d/mysql start
mysql -uroot < /tmp/create_user.sql
unlink /tmp/create_user.sql;