DESCRIPTION = "RAUC HomeTerminal Debug Bundle"

inherit bundle

RAUC_BUNDLE_COMPATIBLE = "RaspberryPi4"
RAUC_BUNDLE_VERSION = "0.0.1"
RAUC_BUNDLE_DESCRIPTION = "HomeTerminal Debug Bundle"
RAUC_BUNDLE_SLOTS = "rootfs" 
RAUC_SLOT_rootfs = "hometerminal-debug-image"
RAUC_SLOT_rootfs[fstype] = "rootfs.ext4"

RAUC_KEY_FILE = "${THISDIR}/certificates/development-1.key.pem"
RAUC_CERT_FILE = "${THISDIR}/certificates/development-1.cert.pem"

BUNDLE_NAME = "${BUNDLE_BASENAME}"