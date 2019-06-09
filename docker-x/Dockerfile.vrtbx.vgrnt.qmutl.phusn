FROM phusion/baseimage

LABEL container.base 'phusion/baseimage'
LABEL container.tag net.genekh.contrainers.docker.cross.vrtbx-vgrnt-qmutl-phusn-base
LABEL container.shell /bin/bash
LABEL container.tweaks proc-subst

ENV SHELL='/bin/bash'

RUN ${SHELL} -c '                ' \
' if [[ ! -d /dev/fd ]]; then \n ' \
'    ln -s /proc/self/fd         ' \
'                /dev/fd      \n ' \
' fi;                         \n ' \
' apt clean all          -yqq && ' \ 
' apt update             -yqq && ' \
' apt upgrade            -yqq && ' \
' apt autoremove --purge -yqq && ' \
' apt autoclean          -yqq && ' \
' apt update             -yqq && ' \
' apt install            -yqq && ' \ 
'   --install-recommends         ' \
'                vagrant         ' \
'             virtualbox         ' \
'             qemu-utils      && ' \
' apt autoremove --purge -yqq && ' \
' rm -rf                         ' \
'   /var/cache/apt/archives/* && ' \ 
'        /var/lib/apt/lists/*    ' \
' apt clean all          -yqq && ' \
' apt update             -yqq    ' \
' apt list --installled >        ' \
'            /root/pkglist       ' 

CMD ${SHELL}
