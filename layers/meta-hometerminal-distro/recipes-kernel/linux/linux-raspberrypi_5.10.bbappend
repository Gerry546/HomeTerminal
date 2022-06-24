FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://0001-modify-makefile-for-reterminal.patch \
        file://0001-ASoC-hdmi-codec-Fix-return-value-in-hdmi_codec_set_j.patch \
        file://reTerminal-overlay.dts \
        file://rauc.cfg \
"

CMDLINE:remove:rauc-integration = "root=/dev/mmcblk0p2"

do_configure:append(){
        cp ${WORKDIR}/reTerminal-overlay.dts ${S}/arch/arm/boot/dts/overlays/
}
