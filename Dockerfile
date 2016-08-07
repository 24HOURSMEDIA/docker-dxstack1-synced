FROM 24hoursmedia/dxstack1:base
MAINTAINER info@24hoursmedia.com
COPY /docker /docker
WORKDIR /docker

ENV DX_VOLUME_ETC="/opt/etc" DX_VOLUME_DATASOURCE="/opt/data-source" DX_DIR_DATASYNCED="/opt/data-synced"


RUN sh setup.sh

VOLUME ["${DX_VOLUME_ETC}", "${DX_VOLUME_DATASOURCE}"]
EXPOSE 80 443 8080 3306

ADD /docker/start-dxstack1-synced /usr/local/bin/start-dxstack1-synced
RUN chmod +x /usr/local/bin/start-dxstack1-synced
ENTRYPOINT ["start-dxstack1-synced"]

