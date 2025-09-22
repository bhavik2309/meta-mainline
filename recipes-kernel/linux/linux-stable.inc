DESCRIPTION = "Stable Linux Kernel"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM= "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"


inherit kernel

S = "${WORKDIR}/git"
SRC_URI += "file://defconfig"
PROVIDS = "virtual/kernel"
