FILESEXTRAPATHS:prepend:rpi := "${THISDIR}/files:"

do_install:append() {
    install -d ${D}/mnt/data
}