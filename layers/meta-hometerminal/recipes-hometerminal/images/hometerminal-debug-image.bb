DESCRIPTION = "Debug Image for the hometerminal"
LICENSE = "CLOSED"

require hometerminal-common.inc

IMAGE_FEATURES += "\
   debug-tweaks \
"

IMAGE_FSTYPES = " \
    ext4 \
"
IMAGE_INSTALL += "\
    iperf3 \
    i2c-tools \
    evtest \
"