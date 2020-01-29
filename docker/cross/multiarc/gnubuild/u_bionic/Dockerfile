FROM ubuntu:bionic

ARG CLEAR_CACHE='rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*'
ARG DEBIAN_FRONTEND=noninteractive

LABEL container.base ubuntu:bionic
LABEL container.tag net.genekh.containers.docker.cross.multiarc.gnubuild.u_bionic
LABEL container.shell /bin/bash
LABEL container.tweaks clear-cache

RUN apt-get -y update &&                       \
    apt-get -y install                         \
                       --fix-broken            \
                       --reinstall             \
                       --no-install-recommends \
               apt-transport-https             \
               apt-utils                       \
               software-properties-common      \
               python3-software-properties     \
               nano curl wget p7zip-full zstd

RUN apt-get  -y autoremove --purge && \
    apt-get  -y autoclean          && \
    apt-get  -y update             && \
    apt-get  -y upgrade		   && \
    apt-get  -y autoclean          && \
    ${CLEAR_CACHE}
    
RUN apt -y update                  && \
    apt -y install                    \
              --fix-broken            \
              --reinstall             \
              --no-install-recommends \
	abootimg \
	adb \
	android-libsparse-dev \
	apt-utils \
	autoconf \
	autoconf-archive \
	automake \
	autopoint \
	autotools-dev \
	bc \
	binutils-multiarch-dev \
	bison \
	build-essential \
	console-cyrillic \
	cpio \
	curl \
	fastboot \
	flex \
	git \
	git-buildpackage-rpm \
	libguestfs-tools \
	koji-client \
	libarchive-dev \
	libboost-dev \
	libiconv-hook-dev \
	libkmod-dev \
	liblz4-dev \
	libperl-dev \
	libreadline-dev \
	librpm-dev \
	libtool \
	libudev-dev \
	libusb-dev \
	libwinpr-dev \
	libwinpr2-dev \
	libxml2-dev \
	meson \
	mkbootimg \
	multipath-tools \
	multipath-tools-boot \
	nano \
  	ncdu \
	net-tools \
	network-manager \
	ninja-build \
	ntfs-3g-dev \
	openssh-server \
	p7zip-full \
	parprouted \
	pkg-config \
  	pv \
	python-dev \
	python-serial \
	python3-software-properties \
	qt5-default \
	qt5-qmake \
	shtool \
	software-properties-common \
	sshfs \
	tar \
	wget \
	winpr-utils \
	xauth \
	xfonts-cyrillic \
	yasm \
	zlib1g-dev \
	zstd && \
	${CLEAR_CACHE}
	
