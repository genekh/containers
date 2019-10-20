FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive

ARG CLEAR_CACHE='rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*'

LABEL container.base ubuntu:bionic
LABEL container.tag net.genekh.containers.docker.u_bionic.base
LABEL container.shell /bin/bash
LABEL container.tweaks clear-cache


RUN apt-get  -y clean all                      && \
                ${CLEAR_CACHE}                 && \
    apt-get  -y update                         && \
    apt-get  -y install                           \
                        --fix-broken              \
                        --no-install-recommends   \
                apt-transport-https               \
                apt-utils                         \
                software-properties-common        \
                python3-software-properties       \
                nano curl wget p7zip-full zstd && \
    apt-get  -y autoremove --purge             && \
    apt-get  -y autoclean                      && \
    apt-get  -y update                         && \
    apt-get  -y upgrade                        && \
    apt-get  -y autoclean                      && \
                ${CLEAR_CACHE}
