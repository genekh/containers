FROM ubuntu
ARG SRCBUILD=/usr/src/oocd
RUN apt -y update && \
    apt -y install \
        --no-install-recommends \
        nano \
        curl \
        wget \
        gzip \
        tar \
        ca-certificates \
        git \
        make \
        pkg-config \
        libtool \
        shtool \
        autoconf \
        automake \
        gcc-6 \
        gcc \
        libudev-dev \
        libftdi-dev \
        libusb-1.0-0-dev && \
    mkdir -p "$SRCBUILD"

ARG GITR='https://github.com/daniel-k/openocd.git'
ARG GITL='openocd-armv8'
RUN cd "$SRCBUILD" && \
    git clone "$GITR" "$GITL" && \
    cd "$GITL" && \
    git checkout origin/armv8 && \
    ./bootstrap && \
    CC=gcc-6 ./configure --enable-ftdi && \
    make -j8 && \
    make install
    
ARG GITR='git://git.code.sf.net/p/openocd/code' 
ARG GITL='openocd-git'
RUN cd "$SRCBUILD" && \
    git clone --recursive "$GITR" "$GITL" && \
    cd "$GITL" && \
    ./bootstrap && \
    ./configure \
        --enable-sysfsgpio \
        --enable-maintainer-mode \
        --disable-werror \
        --enable-ftdi \
        --enable-ep93xx \
        --enable-at91rm9200 \
        --enable-usbprog \
        --enable-presto_libftdi \
        --enable-jlink \
        --enable-vsllink \
        --enable-rlink \
        --enable-arm-jtag-ew \
        --enable-dummy \
        --enable-buspirate \
        --enable-ulink \
        --enable-usb_blaster_libftdi \
        --prefix=/usr && \
        make && \
        make install

ARG PASC='/usr/bin/archproj'
RUN echo cd "$SRCBUILD" >"$PASC" && \
    echo 'for p in *; do tar cvzf "/root/$p.tgz" "$p"; done' >>"$PASC" && \
    chmod +x "$PASC" && \
    echo 'ALL DONE NOW'

