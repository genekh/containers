FROM ubuntu

ARG DEPS="make gcc-6 automake git libtool pkg-config ca-certificates gcc"
RUN apt -y update && \
    apt -y install \
        --no-install-recommends ${DEPS} \
                                libtool \
                                libudev-dev \
                                libusb-1.0-0-dev && \
    mkdir -p /usr/src/oocd && \
    cd /usr/src/oocd && \
    git clone https://github.com/daniel-k/openocd.git openocd-armv8 && \
    cd openocd-armv8 && \
    git checkout origin/armv8 && \
    ./bootstrap && \
    CC=gcc-6 ./configure --enable-ftdi && \
    make -j8 && \
    make install && \
    apt -y purge --autoremove  && \
    apt -y autoremove --purge
    
