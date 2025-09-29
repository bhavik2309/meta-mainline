FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://wpa_supplicant-wlan0.conf \
            "


do_install:append() {
    oe_runmake -C wpa_supplicant DESTDIR="${D}" install
    
    install -d ${D}${docdir}/wpa_supplicant
    install -m 644 wpa_supplicant/README ${WORKDIR}/wpa_supplicant.conf ${D}${docdir}/wpa_supplicant
    
    install -d ${D}${sysconfdir}
    install -D -m 600 ${WORKDIR}/wpa_supplicant-wlan0.conf ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
}
