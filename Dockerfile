FROM 24hoursmedia/dxstack1-base:v1.0
MAINTAINER info@24hoursmedia.com
COPY /docker /docker/dxstack1-synced
WORKDIR /docker/dxstack1-synced

ENV DX_VOLUME_MYSQL="/var/lib/mysql" DX_VOLUME_DATA="/data" DX_VOLUME_ETC="/opt/etc" DX_VOLUME_DATASOURCE="/opt/data-source" DX_DIR_DATASYNCED="/opt/data-synced" DX_PHPFPM_USER="www-data" DX_MYSQL_USER="developer" DX_MYSQL_PASSWORD="" DX_SYNC_USER="www-data" DX_SYNC_GROUP="www-data" DX_SYNC_PERMISSIONS="Fu=rw,Fg=r,Fo=,Du=rwx,Dg=rx,Do=rx"

RUN sh setup.sh

VOLUME ["${DX_VOLUME_ETC}", "${DX_VOLUME_DATASOURCE}", "${DX_VOLUME_MYSQL}", "${DX_VOLUME_DATA}"]
EXPOSE 80 443 8080 3306

ADD /docker/start-dxstack1-synced /usr/local/bin/start-dxstack1-synced
RUN chmod +x /usr/local/bin/start-dxstack1-synced
ENTRYPOINT ["start-dxstack1-synced"]

