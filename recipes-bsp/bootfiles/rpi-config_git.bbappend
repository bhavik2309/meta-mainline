do_deploy:append() {
        echo 'dtoverlay=uart0' >> $CONFIG
        echo 'dtoverlay=disable-dt' >> $CONFIG
}
