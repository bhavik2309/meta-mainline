
do_install:append() {
        echo "" >> ${D}${sysconfdir}/inittab
        echo "AMA0:12345:respawn:${sbindir}/ttyrun ttyAMA0 ${base_bindir}/start_getty $speed ttyAMA0 vt102" >> ${D}${sysconfdir}/inittab

}
