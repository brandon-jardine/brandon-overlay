# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9,10} )
inherit distutils-r1

DESCRIPTION="An improved Python library to control i3wm and sway."
HOMEPAGE="https://github.com/altdesktop/i3ipc-python"
SRC_URI="https://github.com/altdesktop/i3ipc-python/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"

RDEPEND="|| ( x11-wm/i3 x11-wm/i3-gaps gui-wm/sway )
	X? ( dev-python/python-xlib[${PYTHON_USEDEP}] )
"
BDEPEND=""

S="${WORKDIR}/i3ipc-python-${PV}"


src_prepare() {
	if ! use X
	then
		PATCHES=("${FILESDIR}"/no-xlib.patch)
	fi

	distutils-r1_src_prepare
}
