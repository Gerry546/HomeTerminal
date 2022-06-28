FILESEXTRAPATHS:prepend:rpi := "${THISDIR}/files:"

SRC_URI += " \
    file://chromium \
"

FILES:${PN} += " \
    ${sysconfdir}/default/chromium \
"

do_install:append() {
    install -d ${D}/mnt/data
    install -d ${D}${sysconfdir}/default
    install -m 0644 ${WORKDIR}/chromium ${D}${sysconfdir}/default/chromium
}