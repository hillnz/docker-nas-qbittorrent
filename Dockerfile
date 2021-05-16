# renovate: datasource=docker depName=linuxserver/transmission versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+).+-ls(?<patch>\d+)$
ARG LS_VERSION=14.3.5.99202105022253-7365-063844ed4ubuntu20.04.1-ls133
FROM linuxserver/qbittorrent:${LS_VERSION}

RUN apt-get update && apt-get install -y python3 && \
    ln -s /usr/bin/python3 /usr/bin/python

# renovate: datasource=github-releases depName=ytdl-org/youtube-dl versioning=regex:^(?<major>\d+)\.0?(?<minor>\d+)\.0?(?<patch>\d+)$
ARG YOUTUBEDL_VERSION=2021.05.16
RUN curl -L -o /usr/local/bin/youtube-dl https://github.com/ytdl-org/youtube-dl/releases/download/${YOUTUBEDL_VERSION}/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

ENV DELETE_DAYS=30
ENV DELETE_TIME=02:30

COPY root/ /