FILESEXTRAPATHS:prepend:rpi := "${THISDIR}/files:"

# SRC_URI += " \
#     file://chromium_env \
#     file://load_chromium_env.sh \
# "

# FILES:${PN} += " \
#     ${sysconfdir}/default/chromium_env \
#     ${sysconfdir}/profile.d/load_chromium_env.sh \
# "

do_install:append() {
    install -d ${D}/mnt/data
    # install -d ${D}${sysconfdir}/default
    # install -m 0644 ${WORKDIR}/chromium_env ${D}${sysconfdir}/default/chromium_env
    # install -D -m 0644 ${WORKDIR}/load_chromium_env.sh ${D}${sysconfdir}/profile.d/load_chromium_env.sh
}