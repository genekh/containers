FROM genekh/containers:docker.u_bionic.multiarc.gnubuild_plus

ARG DEBIAN_FRONTEND=noninteractive

ARG CLEAR_CACHE='rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*'
#LABEL container.base genekh/containers:docker.u_bionic.multiarc.gnubuild_plus
#LABEL container.tag  genekh/containers:docker.u_bionic.multiarc.gnubuild_plus.androndk
#LABEL container.shell /bin/bash
#LABEL container.tweaks clear-cache


RUN apt-get  -y clean all                      && \
                ${CLEAR_CACHE}                 && \
    apt-get  -y update                         && \
    apt-get  -y install                           \
                        --fix-broken              \
                        --no-install-recommends   \
               'google-android-ndk-installer'  && \
    apt-get  -y autoremove --purge             && \
    apt-get  -y autoclean                      && \
    apt-get  -y update                         && \
    apt-get  -y upgrade                        && \
    apt-get  -y autoclean                      && \
                ${CLEAR_CACHE}
