# renovate: datasource=docker depName=linuxserver/qbittorrent versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+).+-ls(?<patch>\d+)$
ARG LS_VERSION=14.3.6.99202107121017-7389-3ac8c97e6ubuntu20.04.1-ls146
FROM linuxserver/qbittorrent:${LS_VERSION}

RUN apt-get update && apt-get install -y python3 && \
    ln -s /usr/bin/python3 /usr/bin/python

# renovate: datasource=github-releases depName=ytdl-org/youtube-dl versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+)\.0?(?<patch>\d+)$
ARG YOUTUBEDL_VERSION=2021.06.06
RUN curl -L -o /usr/local/bin/youtube-dl https://github.com/ytdl-org/youtube-dl/releases/download/${YOUTUBEDL_VERSION}/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

ENV DELETE_DAYS=30
ENV DELETE_TIME=02:30

COPY root/ /
