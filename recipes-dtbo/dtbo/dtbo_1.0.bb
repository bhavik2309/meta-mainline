SUMMARY = "DTBO"
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

SRC_URI = "file://overlays/ \
	  "
           
DEPENDS = "rpi-bootfiles"

S = "${WORKDIR}/overlays"


do_compile() {
    echo "compiling dtbo"
}

do_install() {
    install -d ${D}${nonarch_base_libdir}/firmware/overlays
    install -m 0644 ${WORKDIR}/overlays/* ${D}${nonarch_base_libdir}/firmware/overlays/
  
}

do_deploy[depends] += "rpi-bootfiles:do_deploy"

do_deploy() {
    
    install -d ${DEPLOYDIR}/${BOOTFILES_DIR_NAME}/overlays
    cp -r ${S}/* ${DEPLOYDIR}/${BOOTFILES_DIR_NAME}/overlays
}

FILES:${PN} += "${nonarch_base_libdir}/firmware/overlays"

