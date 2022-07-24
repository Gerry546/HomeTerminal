SUMMARY = "HomeTerminal Provisioning"
DESCRIPTION = "Scripts and services to provision a HomeTerminal"
LICENSE = "CLOSED"

SRC_URI += " \
    file://hometerminal-partitioning.sh \
    file://hometerminal-partitioning.service \
"

inherit systemd

RDEPENDS:${PN} += "bash"

SYSTEMD_SERVICE:${PN} += " \
    hometerminal-partitioning.service \
"

do_install() {
    # add the shell script to the bin dir
    install -d ${D}${bindir}
    install -m 0644 ${WORKDIR}/hometerminal-partioning.sh ${D}${bindir}
    # add the service file
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/hometerminal-partitioning.service ${D}${systemd_system_unitdir}
}