# Base this image on core-image-base
include recipes-core/images/core-image-base.bb

SPLASH = "psplash-raspberrypi"

COMPATIBLE_MACHINE = "^rpi$"

IMAGE_FEATURES += "\
   splash \
"

IMAGE_INSTALL += "\
    kernel-modules \ 
    seeed-linux-dtoverlays \
    util-linux \
"    