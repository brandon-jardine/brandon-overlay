# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit qmake-utils

DESCRIPTION="desktop application for updating Flipper Zero firmware"
HOMEPAGE="https://update.flipperzero.one/"
LICENSE="GPL-3+"
SLOT="0"

if [ "${PV}" = "9999" ]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/flipperdevices/qFlipper.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/flipperdevices/qFlipper/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/qFlipper-${PV}"
	KEYWORDS="~x86 ~amd64"
fi

DEPEND="
	>=dev-libs/libusb-1.0.16:=
	sys-libs/zlib:=
	dev-qt/qtquickcontrols2:5=
	dev-qt/qtdeclarative:5=
	dev-qt/qtwidgets:5=
	dev-qt/qtgui:5=
	dev-qt/qtdeclarative:5=
	dev-qt/qtnetwork:5=
	dev-qt/qtserialport:5=
	>=dev-qt/qtcore-5.15.0:5=
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	eqmake5 qFlipper.pro PREFIX="${D}/usr" -spec linux-g++ CONFIG+=qtquickcompiler DEFINES+=DISABLE_APPLICATION_UPDATES
}

src_install() {
	emake PREFIX="${ED}/usr" install
}

pkg_postint() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
