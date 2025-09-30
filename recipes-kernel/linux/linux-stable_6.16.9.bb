require linux-stable.inc


SRC_URI += "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git;branch=linux-6.16.y;protocol=https \
	file://android-drivers.cfg \
	file://powersave.cfg \
	file://usb.cfg \
	file://linux-stable-overlays.patch \
"
SRCREV = "b0d8acc711981d712a59ee20b073cbc52a4109c5"

