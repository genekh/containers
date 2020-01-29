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
                   flex \
                   gcc-aarch64-linux-gnu
ENV CROSS_COMPILE=aarch64-linux-gnu-
