#!/usr/bin/env sh
echo "setting up mariadb"
mkdir -p /var/log/mysql
chown mysql /var/log/mysql

# /var/lib/mysql must be owned by mysql user
#chown -R mysql /var/lib/mysql
#chmod -R 777 /var/lib/mysql



cat ./mariadb/etc/my.cnf.d/z-4gb.cnf | ./parse_env.sh > /etc/my.cnf.d/z-4gb.cnf
cat ./mariadb/etc/my.cnf.d/zz-last.cnf | ./parse_env.sh > /etc/my.cnf.d/zz-last.cnf
cat ./mariadb/create_user.sql | ./parse_env.sh > /tmp/create_user.sql