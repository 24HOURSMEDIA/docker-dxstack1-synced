#!/usr/bin/env sh

mkdir -p /usr/local/etc/lsyncd


# download rsync 3.1 for advanced options
rpm -Uvh http://mirror.symnds.com/distributions/gf/el/7/plus/x86_64/rsync-3.1.1-6.gf.el7.x86_64.rpm

yum -y install lsyncd



cat ./lsyncd/etc/dxstack1-synced.conf | ./parse_env.sh > /usr/local/etc/lsyncd/dxstack1-synced.conf