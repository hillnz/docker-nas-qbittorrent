# renovate: datasource=docker depName=linuxserver/qbittorrent versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+).+-ls(?<patch>\d+)$
ARG LS_VERSION=14.3.7.99202108032349-7395-0415c0c6fubuntu20.04.1-ls149
FROM linuxserver/qbittorrent:${LS_VERSION}

RUN apt-get update && apt-get install -y \
        jq \
    && rm -rf /var/lib/apt/lists/*

ENV MIN_FREE=5368709120 \
    DELETE_TIME=03:49

COPY root/ /
