ENABLE_UART = "1"
DISABLE_SPLASH = "1"
ENABLE_I2C = "1"

do_deploy:append() {
        echo 'dtoverlay=uart0' >> $CONFIG
        echo 'dtoverlay=disable-dt' >> $CONFIG
}
