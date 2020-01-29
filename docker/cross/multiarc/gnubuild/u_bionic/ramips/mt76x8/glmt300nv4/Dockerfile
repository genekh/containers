FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt -y update && \
    apt -y install dialog && \
    apt -y upgrade && \
    apt -y autoremove --purge && \
    apt -y clean all && \
    apt -y install git \
                   nano \
                   curl \
                   wget \
                   libarchive-dev \
                   build-essential \
                   libtool \
                   shtool \
                   pkg-config \
                   zlib1g-dev \
                   ca-certificates \
                   apt-transport-https \
                   apt-utils \
                   software-properties-common \
                   python3-software-properties \
                   autoconf \
                   automake \
                   cmake \
                   libxml2-dev \
                   libboost-dev \
                   libreadline-dev \
                   libusb-dev \
                   libudev-dev \
                   qt5-default \
                   qt5-qmake \
                   ntfs-3g-dev \
                   cpio \
                   zstd \
                   bc \
                   bison \
                   flex && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*
ARG BASE_URL='http://downloads.openwrt.org/snapshots/targets/ramips/mt76x8'
ARG GLMT300NV4_GIT='https://github.com/ougang/mt300nv4-target.git'
RUN mkdir /tmp/root && cd /tmp/root && \
    wget -q "$BASE_URL/config.buildinfo" && \
    wget -q "$BASE_URL/feeds.buildinfo" && \
    wget -q "$BASE_URL/kernel-debug.tar.bz2" && \
    wget -q "$BASE_URL/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz" && \
    wget -q "$BASE_URL/openwrt-ramips-mt76x8.manifest" && \
    wget -q "$BASE_URL/openwrt-sdk-ramips-mt76x8_gcc-8.3.0_musl.Linux-x86_64.tar.xz" && \
    wget -q "$BASE_URL/sha256sums" && \
    wget -q "$BASE_URL/sha256sums.asc" && \
    wget -q "$BASE_URL/sha256sums.sig" && \
    wget -q "$BASE_URL/version.buildinfo" && \
    { for a in *.tar.xz; do tar xJf "$a" && rm "$a"; done; } && \
    { for a in *.tar.bz2; do tar xjf "$a" && rm "$a"; done; } && \
    git clone "{$GLMT300NV4_GIT}" && \
    echo '[[ -d /tmp/root ]] && cd /tmp/root && find . | cpio -o -H newc > /tmp/r && cd /root && cpio -id </tmp/r && rm -rf /tmp/root /tmp/r' > /usr/bin/mvtmprt && chmod +x /usr/bin/mvtmprt
