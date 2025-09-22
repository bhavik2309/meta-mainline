require linux-stable.inc


SRC_URI += "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-6.16.y;protocol=https \
	file://android-drivers.cfg \
	file://powersave.cfg \
	file://usb.cfg \
	file://rpi-final.patch \
"
SRCREV = "00e1e428cb80629fa4fa82a6319c3d4e8fa99581"


