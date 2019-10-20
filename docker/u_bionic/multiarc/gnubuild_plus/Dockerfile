FROM genekh/containers:docker.u_bionic.base

ARG DEBIAN_FRONTEND=noninteractive

ARG CLEAR_CACHE='rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*'

#LABEL container.base genekh/containers:docker.u_bionic.base
#LABEL container.tag  docker.u_bionic.multiarc.gnubuild_plus
#LABEL container.shell /bin/bash
#LABEL container.tweaks clear-cache

RUN dpkg --add-aarchitecture i386              && \
    apt-get  -y clean all                      && \
                ${CLEAR_CACHE}                 && \
    apt-get  -y update                         && \
    apt-get  -y install                           \
                        --fix-broken              \
                        --no-install-recommends   \
                abootimg                          \
                adb                               \
                android-libsparse-d               \
                android-sdk-libsparse-utils       \
                apt-utils                         \
                audacity                          \
                autoconf                          \
                autoconf-archive                  \
                automake                          \
                autopoint                         \
                autotools-dev                     \
                binutils-multiarch-dev            \
                bleachbit                         \
                build-essential                   \
                bzip2                             \
                cifs-utils                        \
                console-cyrillic                  \
                fastboot                          \
                ffmpeg                            \
                git                               \
                git-buildpackage-rpm              \
                grub2                             \
                gzip                              \
                handbrake                         \
                handbrake-cli                     \
                holes                             \
                koji-client                       \
                libarchive-dev                    \
                libboost-dev                      \
                libiconv-hook-dev                 \
                libkmod-dev                       \
                liblz4-dev                        \
                liblzma-dev                       \
                libmediainfo-dev                  \
                libperl-dev                       \
                libreadline-dev                   \
                librpm-dev                        \
                libsoxr-dev                       \
                libtool                           \
                libudev-dev                       \
                libusb-dev                        \
                libvirt-dev                       \
                libwinpr-dev                      \
                libwinpr2-dev                     \
                libxml2-dev                       \
                libzstd-dev                       \
                livecd-rootfs                     \
                mc                                \
                meson                             \
                mkbootimg                         \
                mkvtoolnix                        \
                mkvtoolnix-gui                    \
                multipath-tools                   \
                multipath-tools-boot              \
                nano                              \
                ncdu                              \
                net-tools                         \
                network-manager                   \
                ninja-build                       \
                ntfs-3g-dev                       \
                openssh-server                    \
                pkg-config                        \
                pv                                \
                python-dev                        \
                python-serial                     \
                qemu-utils                        \
                qt5-default                       \
                qt5-qmake                         \
                sbuild                            \
                shtool                            \
                skales                            \ 
                sshfs                             \
                sox                               \
                subversion                        \
                tar                               \
                tar-split                         \
                unzip                             \
                winpr-utils                       \
                xauth                             \
                xfonts-cyrillic                   \
                yasm                              \
                zip                               \
                zlib1g-dev                     && \
                ${CLEAR_CACHE}
