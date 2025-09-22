
EXTRA_IMAGE_FEATURES += "ssh-server-openssh"

CONNECTIVITY_CHECK_URIS = "https://www.google.com/"
SERIAL_CONSOLE = "115200;ttyAMA0"
CMDLINE_SERIAL = "console=ttyAMA0,115200"

RPI_KERNEL_DEVICETREE_OVERLAYS = ""
#LICENSE_FLAGS_ACCEPTED += "synaptics-killswitch"
RPI_KERNEL_DEVICETREE = " \
    broadcom/bcm2711-rpi-4-b.dtb \
    broadcom/bcm2711-rpi-400.dtb \
    broadcom/bcm2711-rpi-cm4-io.dtb \
"

#INITRAMFS_IMAGE_BUNDLE = "0"
#INITRAMFS_IMAGE = ""

ENABLE_UART = "1"
DISABLE_SPLASH = "1"
ENABLE_I2C = "1"

CMDLINE:append = " loglevel=7 rw"
