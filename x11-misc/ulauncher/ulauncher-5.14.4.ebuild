# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit desktop distutils-r1 python-r1 xdg-utils

DESCRIPTION="Application launcher for Linux"
HOMEPAGE="https://ulauncher.io"

if [[ ${PV} == 9999 ]];then
	inherit git-r3
	SRC_URI=""
	KEYWORDS=""
	EGIT_REPO_URI="https://github.com/Ulauncher/${PN^}.git"
else
	SRC_URI="https://github.com/Ulauncher/${PN^}/releases/download/${PV}/${PN}_${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/${PN}"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE="appindicator"

PYTHON_REQ_USE="sqlite"

DEPEND="
	dev-python/python-distutils-extra[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}
	dev-python/dbus-python[${PYTHON_USEDEP}]
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	dev-python/pyinotify[${PYTHON_USEDEP}]
	dev-python/python-levenshtein[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
	dev-libs/gobject-introspection:=
	appindicator? ( dev-libs/libappindicator:3 )
	dev-libs/keybinder:3
	net-libs/webkit-gtk:4/37
"

BDEPEND="${PYTHON_DEPS}"

src_install() {
	distutils-r1_src_install
	domenu build/share/applications/${PN}.desktop
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
