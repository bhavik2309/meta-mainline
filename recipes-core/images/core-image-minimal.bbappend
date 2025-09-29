DISTRO_FEATURES += " bluez5 bluetooth wifi systemd pulseaudio"
EXTRA_IMAGE_FEATURES += "ssh-server-openssh"
MACHINE_EXTRA_RRECOMMENDS += "\
    linux-firmware-rpidistro-bcm43455 \
    bluez-firmware-rpidistro-bcm4345c0-hcd \
    linux-firmware-rpidistro-bcm43456 \
    bluez-firmware-rpidistro-bcm4345c5-hcd \
    dhcp-server \
"
IMAGE_INSTALL += " kernel-modules \
		  bridge-utils \
		  hostapd \
		  bluez5 \
		  iptables \
		  connman \
		  iw \
		  linux-firmware \
		  i2c-tools \
		  hostapd \
		  iptables \
		  wpa-supplicant \
		  rpio \
		  rpi-gpio \
		  pulseaudio \
		  packagegroup-rpi-test \
		  wget \
		  python3 \
		  python3-pip \ 
		  i2c-tools \
		  dtbo "
						  
CONNECTIVITY_CHECK_URIS = "https://www.google.com/"
VIRTUAL-RUNTIME_init_manager = "systemd"
