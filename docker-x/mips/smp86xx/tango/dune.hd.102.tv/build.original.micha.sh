#!/bin/sh

case "$1" in
    8642)
        ROOTFS_PKG=cs_rootfs_1.2.6
        KERNEL_PKG=smp86xx_kernel_source_R2.6.22-27.gpl
        KERNEL_VERSION=2.6.22.19
        KERNEL_CONFIG=dune_linux_kernel_config.sigma8642.2.6.22.19-27.2011_10_19
        ;;
    8652)
        ROOTFS_PKG=cs_rootfs_1.2.6
        KERNEL_PKG=smp86xx_kernel_source_R2.6.22-27.gpl
        KERNEL_VERSION=2.6.22.19
        KERNEL_CONFIG=dune_linux_kernel_config.sigma8652.2.6.22.19-27.2011_10_19
        ;;
    8670)
        ROOTFS_PKG=cs_rootfs_1.2.19
        KERNEL_PKG=smp86xx_kernel_source_R2.6.29-18.gpl
        KERNEL_VERSION=2.6.29
        KERNEL_CONFIG=dune_linux_kernel_config.sigma8670.2.6.29-18.2012_07_13
        ;;
    8672)
        ROOTFS_PKG=cs_rootfs_1.2.31
        KERNEL_PKG=smp86xx_kernel_source_R2.6.32-27.gpl
        KERNEL_VERSION=2.6.32
        KERNEL_CONFIG=dune_linux_kernel_config.sigma8672.2.6.32-27.2012_12_28
        ;;
    8674)
        ROOTFS_PKG=cs_rootfs_1.2.31
        KERNEL_PKG=smp86xx_kernel_source_R2.6.32-27.gpl
        KERNEL_VERSION=2.6.32
        KERNEL_CONFIG=dune_linux_kernel_config.sigma8674.2.6.32-27.2012_12_28
        ;;
    *)
        echo "Usage: $0 8642|8652|8670|8672|8674"
        exit 1
        ;;
esac

Do()
{
    echo "$*"
    "$@" || exit 1
}

Fetch()
{
    file=`basename "$1"`
    [ -f "$file" ] || Do wget "$1"
}

Fetch http://www.codesourcery.com/sgpp/lite/mips/portal/package4432/public/mips-linux-gnu/mips-4.3-154-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2
Fetch http://files.dune-hd.com/partners/sdk/kernel_sdk/"$ROOTFS_PKG".tar.bz2
Fetch http://files.dune-hd.com/partners/sdk/kernel_sdk/"$KERNEL_PKG".tgz
Fetch http://files.dune-hd.com/partners/sdk/kernel_sdk/"$KERNEL_CONFIG"

[ -d mips-4.3 ] || Do tar xjvf mips-4.3-154-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2
Do export SMP86XX_TOOLCHAIN_PATH=`pwd`/mips-4.3
Do export PATH=$SMP86XX_TOOLCHAIN_PATH/bin:$PATH

[ -d "$ROOTFS_PKG" ] || Do tar xjvf "$ROOTFS_PKG".tar.bz2
Do make -C "$ROOTFS_PKG" menuconfig
#Do . "$ROOTFS_PKG"/rootfs-path.env

[ -d "$KERNEL_PKG" ] || Do tar xzvf "$KERNEL_PKG".tgz
[ -d "$KERNEL_PKG/linux-$KERNEL_VERSION" ] || Do make -C "$KERNEL_PKG" kernel-source-"$KERNEL_VERSION"
Do cp "$KERNEL_CONFIG" "$KERNEL_PKG/linux-$KERNEL_VERSION"/.config
Do make -C "$KERNEL_PKG/linux-$KERNEL_VERSION" menuconfig
Do make -C "$KERNEL_PKG/linux-$KERNEL_VERSION" clean
Do make -C "$KERNEL_PKG/linux-$KERNEL_VERSION" modules
