# Base this image on core-image-base
include recipes-core/images/core-image-base.bb

SPLASH = "psplash-raspberrypi"

COMPATIBLE_MACHINE = "^rpi$"

IMAGE_FEATURES += "\
   splash \
   weston \
"

WKS_FILE = "hometerminal-image.wks.in"

IMAGE_INSTALL += "\
    kernel-modules \ 
    seeed-linux-dtoverlays \
    util-linux \
    weston-init \
    systemd \
    rauc \
    openssh-sshd \
    openssh-scp \
    nano \
    e2fsprogs-resize2fs \
    chromium-ozone-wayland \
    hometerminal-browser \
"    