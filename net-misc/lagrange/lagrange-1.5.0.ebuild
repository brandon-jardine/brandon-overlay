# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake optfeature xdg-utils

DESCRIPTION="Desktop GUI client for browsing Geminispace."
HOMEPAGE="https://gmi.skylake.fi/labrange/"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/skyjake/lagrange.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/skyjake/$PN/releases/download/v$PV/$P.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="BSD-2"
SLOT="0"
IUSE="mp3"

DEPEND="
	dev-libs/libpcre
	dev-libs/libunistring
	dev-libs/openssl
	media-libs/libsdl2
	mp3? ( media-sound/mpg123 )
	sys-libs/zlib
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DENABLE_MPG123=$(usex mp3)
		-DENABLE_IDLE_SLEEP=OFF # Improves performance
		-DENABLE_KERNING=ON
	)

	cmake_src_configure
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
