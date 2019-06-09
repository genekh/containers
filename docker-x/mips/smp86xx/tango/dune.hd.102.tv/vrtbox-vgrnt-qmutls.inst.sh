[[ -d /dev/fd ]] || ln -s /proc/self/fd /dev/fd
apt clean all -yqq
apt update -yqq
apt upgrade -yqq
apt autoremove --purge -yqq
apt autoclean -yqq
apt update -yqq
apt install -yqq --install-recommends \
    vagrant
    virtualbox
    qemu-utils
apt autoremove --purge -yqq
rm -rf /var/cache/apt/archives/* \ 
       /var/lib/apt/lists/*
apt clean all -yqq
apt update -yqq
