# renovate: datasource=docker depName=linuxserver/qbittorrent versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+).+-ls(?<patch>\d+)$
ARG LS_VERSION=14.3.7.99202108230857-7410-fefce0337ubuntu20.04.1-ls151
FROM linuxserver/qbittorrent:${LS_VERSION}

RUN apt-get update && apt-get install -y \
        jq \
        openvpn \
    && rm -rf /var/lib/apt/lists/*

ENV MIN_FREE=5368709120 \
    DELETE_TIME=03:49

COPY root/ /
