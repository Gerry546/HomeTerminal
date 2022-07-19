SUMMARY = "HomeTerminal Provisioning"
DESCRIPTION = "Scripts and services to provision a HomeTerminal"
LICENSE = "CLOSED"

SRC_URI += " \
    file://hometerminal-partioning.sh \
"

do_install() {
    # add the shell script to the bin dir
    install -d ${D}${bindir}
    install -m 0644 ${WORKDIR}/hometerminal-partioning.sh ${D}${bindir}
}