# renovate: datasource=docker depName=linuxserver/qbittorrent versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+).+-ls(?<patch>\d+)$
ARG LS_VERSION=14.3.7.99202108032349-7395-0415c0c6fubuntu20.04.1-ls149
FROM linuxserver/qbittorrent:${LS_VERSION}

ENV DELETE_DAYS=30
ENV DELETE_TIME=02:30

COPY root/ /
