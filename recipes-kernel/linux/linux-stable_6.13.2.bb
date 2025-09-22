require linux-stable.inc

SRC_URI += "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git;branch=linux-6.13.y;protocol=https \
	file://usb.cfg \
	file://android-drivers.cfg \
	file://powersave.cfg \
"
SRCREV = "055ac5ba52df091fc6fc45445fdc75481bccad49"

