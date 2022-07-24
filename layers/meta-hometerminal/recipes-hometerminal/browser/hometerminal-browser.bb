SUMMARY = "HomeTerminal Kiosk Browser"
DESCRIPTION = "The Kiosk browser used to open the HomeAssistant tab"
LICENSE = "CLOSED"

SRC_URI += " \
    file://chromium.service \
"
inherit systemd

SYSTEMD_SERVICE:${PN} += " \
    chromium.service \
"

do_install() {
    # add init script scripts to systemd
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/chromium.service ${D}${systemd_system_unitdir}
}