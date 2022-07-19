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
    chromium-ozone-wayland \
    hometerminal-browser \
"

ROOTFS_POSTPROCESS_COMMAND += "do_fixup;"

do_fixup() {
    # Make mount directory for the data directory
    mkdir -p ${IMAGE_ROOTFS}/data
}