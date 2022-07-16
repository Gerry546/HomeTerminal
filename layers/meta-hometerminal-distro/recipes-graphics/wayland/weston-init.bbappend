FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://weston.ini \
"

SYSTEMD_AUTO_ENABLE_${PN} = "enable"