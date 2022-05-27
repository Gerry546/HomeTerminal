DESCRIPTION = "Image for the hometerminal"
LICENSE = "CLOSED"

# Base this image on core-image-base
include recipes-core/images/core-image-base.bb

SPLASH = "psplash-raspberrypi"

COMPATIBLE_MACHINE = "^rpi$"

IMAGE_FEATURES += "\
   debug-tweaks \
   splash \
"

IMAGE_INSTALL += "\
    kernel-modules \ 
    iperf3 \
    i2c-tools \
    util-linux \
    seeed-linux-dtoverlays \
    evtest \
"