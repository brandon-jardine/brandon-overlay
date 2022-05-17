# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.1

EAPI=8

CRATES="
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.56
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	cassowary-0.3.0
	cc-1.0.73
	cfg-if-1.0.0
	chrono-0.4.19
	clap-2.34.0
	const_format-0.2.22
	const_format_proc_macros-0.2.22
	crossterm-0.22.1
	crossterm-0.23.1
	crossterm_winapi-0.9.0
	dns-lookup-1.0.8
	either-1.6.1
	form_urlencoded-1.0.1
	git2-0.14.2
	heck-0.3.3
	hermit-abi-0.1.19
	idna-0.2.3
	instant-0.1.12
	is_debug-1.0.1
	itertools-0.10.3
	jobserver-0.1.24
	lazy_static-1.4.0
	libc-0.2.121
	libgit2-sys-0.13.2+1.4.2
	libz-sys-1.1.5
	lock_api-0.4.6
	log-0.4.16
	matches-0.1.9
	memchr-2.4.1
	mio-0.7.14
	miow-0.3.7
	ntapi-0.3.7
	num-integer-0.1.44
	num-traits-0.2.14
	os_info-3.2.0
	parking_lot-0.11.2
	parking_lot-0.12.0
	parking_lot_core-0.8.5
	parking_lot_core-0.9.1
	percent-encoding-2.1.0
	pkg-config-0.3.24
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.36
	quote-1.0.16
	read_color-1.0.0
	redox_syscall-0.2.12
	regex-1.5.5
	regex-syntax-0.6.25
	scopeguard-1.1.0
	shadow-rs-0.11.0
	signal-hook-0.3.13
	signal-hook-mio-0.2.1
	signal-hook-registry-1.4.0
	smallvec-1.8.0
	socket2-0.4.4
	static_assertions-1.1.0
	strsim-0.8.0
	structopt-0.3.26
	structopt-derive-0.4.18
	syn-1.0.89
	textwrap-0.11.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	time-0.1.44
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tui-0.17.0
	unicode-bidi-0.3.7
	unicode-normalization-0.1.19
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unicode-xid-0.2.2
	url-2.2.2
	vcpkg-0.2.15
	vec_map-0.8.2
	version_check-0.9.4
	wasi-0.10.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
	winapi_forked_icmpapi-0.3.7
	windows-sys-0.32.0
	windows_aarch64_msvc-0.32.0
	windows_i686_gnu-0.32.0
	windows_i686_msvc-0.32.0
	windows_x86_64_gnu-0.32.0
	windows_x86_64_msvc-0.32.0
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
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"
