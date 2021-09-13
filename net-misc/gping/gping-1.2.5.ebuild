# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.4.0

EAPI=8

CRATES="
	aho-corasick-0.7.18
	ansi_term-0.11.0
	anyhow-1.0.43
	atty-0.2.14
	autocfg-1.0.1
	bitflags-1.3.2
	cassowary-0.3.0
	cfg-if-1.0.0
	chrono-0.4.19
	clap-2.33.3
	crossterm-0.20.0
	crossterm-0.21.0
	crossterm_winapi-0.8.0
	dns-lookup-1.0.8
	either-1.6.1
	heck-0.3.3
	hermit-abi-0.1.19
	instant-0.1.10
	itertools-0.10.1
	lazy_static-1.4.0
	libc-0.2.101
	lock_api-0.4.5
	log-0.4.14
	memchr-2.4.1
	mio-0.7.13
	miow-0.3.7
	ntapi-0.3.6
	num-integer-0.1.44
	num-traits-0.2.14
	os_info-3.0.7
	parking_lot-0.11.2
	parking_lot_core-0.8.5
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.29
	quote-1.0.9
	redox_syscall-0.2.10
	regex-1.5.4
	regex-syntax-0.6.25
	scopeguard-1.1.0
	signal-hook-0.3.10
	signal-hook-mio-0.2.1
	signal-hook-registry-1.4.0
	smallvec-1.6.1
	socket2-0.4.1
	static_assertions-1.1.0
	strsim-0.8.0
	structopt-0.3.23
	structopt-derive-0.4.16
	syn-1.0.76
	textwrap-0.11.0
	thiserror-1.0.29
	thiserror-impl-1.0.29
	time-0.1.44
	tui-0.16.0
	unicode-segmentation-1.8.0
	unicode-width-0.1.8
	unicode-xid-0.2.2
	vec_map-0.8.2
	version_check-0.9.3
	wasi-0.10.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
	winapi_forked_icmpapi-0.3.7
	winping-0.10.1
	${P}
"

inherit cargo

DESCRIPTION="Ping, but with a graph."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/orf/gping"
SRC_URI="$(cargo_crate_uris)"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64"

PATCHES="${FILESDIR}/${PN}-remove_relative_path.patch"

src_prepare() {
	for p in $PATCHES; do
		eapply -p1 $p
	done

	eapply_user
}
