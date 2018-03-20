FROM alpine:edge
RUN [[ -z $(grep -F 'nl.alpine' '/etc/apk/repositories') ]] && \
    echo 'http://nl.alpinelinux.org/alpine/edge/main' >> '/etc/apk/repositories' && \
    echo 'http://nl.alpinelinux.org/alpine/edge/community' >> '/etc/apk/repositories' && \
    apk update  && \
    apk add --upgrade --no-cache --virtual .build-dep \
    automake \
    bash \
    bash-completion \
    binutils \
    build-base \
    bzip2-dev \
    ca-certificates \
    ccache \
    cgdb \
    cmake \
    coreutils \
    cpio \
    curl \
    dpkg \
    dpkg-dev \
    findutils \
    g++ \
    gcc \
    gdbm-dev \
    gfortran \
    git \
    gnupg \
    grep \
    lddtree \
    libc-dev \
    libffi-dev \
    libressl \
    libressl-dev \
    linux-headers \
    make \
    mercurial \
    musl-dev \
    ncurses-dev \
    pax-utils \
    pciutils \
    readline-dev \
    rpm \
    shadow \
    sqlite-dev \
    tcl-dev \
    tk \
    tk-dev \
    udisks2 \
    usbutils \
    util-linux \
    wget \
    zlib-dev \
    && curl https://raw.githubusercontent.com/OpenRC/openrc/master/etc/rc.conf \
    -o /etc/rc.conf && sed -i s/'#unicode="NO"'/'unicode="YES"'/g /etc/rc.conf \
    && add-shell /bin/bash \
    && remove-shell /bin/ash \
    && unlink /bin/sh \
    && ln -s /bin/bash /bin/sh 
    # WORKDIR /tmp/source
    # ENTRYPOINT ["/bin/bash"]
    # CMD tail -f /dev/null


