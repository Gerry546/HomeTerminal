DESCRIPTION = "Boot Image for the hometerminal"
LICENSE = "CLOSED"

require hometerminal-common.inc

IMAGE_FEATURES += "\
   debug-tweaks \
"

IMAGE_FSTYPES = " \
    wic.xz \
    wic \
"
IMAGE_INSTALL += "\
    iperf3 \
    i2c-tools \
    evtest \
    e2fsprogs-resize2fs \
    hometerminal-provisioning \
"