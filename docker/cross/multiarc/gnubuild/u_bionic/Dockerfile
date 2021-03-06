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
	android-sdk-libsparse-utils \
	apt-utils \
	audacity \
	autoconf \
	autoconf-archive \
	automake \
	autopoint \
	autotools-dev \
	binutils-multiarch-dev \
	bleachbit \
	build-essential \
	bzip2 \
	cifs-utils \
	console-cyrillic \
	curl \
	fastboot \
	ffmpeg \
	git \
	git-buildpackage-rpm \
	grub2 \
	gzip \
	handbrake \
	handbrake-cli \
	holes \
	img2simg \
	koji-client \
	libarchive-dev \
	libboost-dev \
	libiconv-hook-dev \
	libkmod-dev \
	liblz4-dev \
	liblzma-dev \
	libmediainfo-dev \
	libperl-dev \
	libreadline-dev \
	librpm-dev \
	libsoxr-dev \
	libtool \
	libudev-dev \
	libusb-dev \
	libvirt-dev \
	libwinpr-dev \
	libwinpr2-dev \
	libxml2-dev \
	libzstd-dev \
	livecd-rootfs \
	mc \
	meson \
	mkbootimg \
	mkvtoolnix \
	mkvtoolnix-gui \
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
	pkg-config \
  pv \
	python-dev \
	python-serial \
	python3-software-properties \
	qemu-utils \
	qt5-default \
	qt5-qmake \
	sbuild \
	shtool \
	simg2img \
	skales \
	software-properties-common \
	sox \
	sshfs \
	subversion \
	tar \
	tar-split \
	unzip \
	wget \
	winpr-utils \
	xauth \
	xfonts-cyrillic \
	yasm \
	zip \
	zlib1g-dev \
	zstd && \
	${CLEAR_CACHE}
	
