# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit fcaps meson

DESCRIPTION="Screen locker for Wayland with added effects"
HOMEPAGE="https://github.com/mortie/swaylock-effects"

SRC_URI="https://github.com/mortie/swaylock-effects/archive/v1.6-2.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/swaylock-effects-1.6-2"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"

LICENSE="MIT"
SLOT="0"
IUSE="fish-completion +gdk-pixbuf +man +pam zsh-completion"

DEPEND="
	dev-libs/wayland
	x11-libs/cairo
	x11-libs/libxkbcommon
	gdk-pixbuf? ( x11-libs/gdk-pixbuf:2 )
	pam? ( sys-libs/pam )
	!gui-apps/swaylock
"
RDEPEND="${DEPEND}"
BDEPEND="
	>=dev-libs/wayland-protocols-1.14
	virtual/pkgconfig
	man? ( app-text/scdoc )
"

src_configure() {
	local emesonargs=(
		-Dman-pages=$(usex man enabled disabled)
		-Dpam=$(usex pam enabled disabled)
		-Dgdk-pixbuf=$(usex gdk-pixbuf enabled disabled)
		$(meson_use fish-completion fish-completions)
		$(meson_use zsh-completion zsh-completions)
		"-Dbash-completions=true"
		"-Dwerror=false"
	)

	emesonargs+=("-Dswaylock-version=1.6-2")

	meson_src_configure
}

pkg_postinst() {
	if ! use pam; then
		fcaps cap_sys_admin usr/bin/swaylock
	fi
}
