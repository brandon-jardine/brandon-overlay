# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="An advanced version of the venerable hexdump."
HOMEPAGE="https://github.com/lptstr/hxd"
LICENSE="GPL-3"
SLOT="0"

BDEPEND=">=app-text/scdoc-1.11.0"

EGIT_REPO_URI="https://github.com/lptstr/${PN}.git"

src_install() {
	dobin hxd
	doman hxd.1
	dodoc README.md
}
