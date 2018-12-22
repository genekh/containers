FROM ubuntu:bionic

RUN sed -i 's|deb http://archive.ubuntu.com/ubuntu/|deb mirror://mirrors.ubuntu.com/mirrors.txt|g' \
           /etc/apt/sources.list \
 && dpkg --add-architecture i386 \
 && apt-get -q update \
 && apt-get purge -q -y snapd lxcfs lxd ubuntu-core-launcher snap-confine \
 && apt-get -q -y install apt-utils wget build-essential libncurses5-dev mc \
                          git bzr cvs mercurial subversion libc6:i386 unzip bc \
 && apt-get -q -y autoremove \
 && apt-get -q -y clean

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
