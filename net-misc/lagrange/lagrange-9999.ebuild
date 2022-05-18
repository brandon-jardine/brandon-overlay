# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake optfeature xdg-utils

DESCRIPTION="Desktop GUI client for browsing Geminispace."
HOMEPAGE="https://gmi.skylake.fi/lagrange/"

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
IUSE="mp3 system-harfbuzz webp"

DEPEND="
	dev-libs/libpcre
	dev-libs/libunistring
	dev-libs/openssl
	media-libs/libsdl2
	webp? ( media-libs/libwebp )
	mp3? ( media-sound/mpg123 )
	sys-libs/zlib
	system-harfbuzz? ( media-libs/harfbuzz dev-libs/fribidi )
"
RDEPEND="${DEPEND}"
BDEPEND="
	app-arch/zip
"

src_configure() {
	local mycmakeargs=(
		-DENABLE_MPG123=$(usex mp3)
		-DENABLE_WEBP=$(usex webp)
		-DENABLE_IDLE_SLEEP=OFF # Improves performance
		-DENABLE_KERNING=ON
		-DENABLE_DOWNLOAD_EDIT=ON
		-DENABLE_FRIBIDI=ON
		-DENABLE_HARFBUZZ=ON
		-DENABLE_HARFBUZZ_MINIMAL=$(usex system-harfbuzz OFF ON)
		-DENABLE_FRIBIDI_BUILD=$(usex system-harfbuzz OFF ON)
		-DENABLE_POPUP_MENUS=OFF # workaround bug 352 https://github.com/skyjake/lagrange/issues/352
	)

	cmake_src_configure
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
