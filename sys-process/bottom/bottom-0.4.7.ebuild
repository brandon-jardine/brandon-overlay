# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
bottom-0.4.7
addr2line-0.12.1
aho-corasick-0.7.10
ansi_term-0.11.0
arc-swap-0.4.6
arrayref-0.3.6
arrayvec-0.5.1
assert_cmd-1.0.1
atty-0.2.14
autocfg-1.0.0
backtrace-0.3.48
base64-0.11.0
battery-0.7.5
bitflags-1.2.1
blake2b_simd-0.5.10
cargo-husky-1.5.0
cassowary-0.3.0
cc-1.0.54
cfg-if-0.1.10
chrono-0.4.15
clap-2.33.2
cloudabi-0.0.3
constant_time_eq-0.1.5
core-foundation-0.6.4
core-foundation-0.7.0
core-foundation-sys-0.6.2
core-foundation-sys-0.7.0
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.1
crossbeam-utils-0.7.2
crossterm-0.17.4
crossterm_winapi-0.6.1
ctrlc-3.1.6
darwin-libproc-0.1.2
darwin-libproc-sys-0.1.2
difference-2.0.0
dirs-3.0.1
dirs-sys-0.3.5
doc-comment-0.3.3
either-1.5.3
fern-0.6.0
float-cmp-0.6.0
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.3.5
futures-channel-0.3.5
futures-core-0.3.5
futures-executor-0.3.5
futures-io-0.3.5
futures-macro-0.3.5
futures-sink-0.3.5
futures-task-0.3.5
futures-util-0.3.5
getrandom-0.1.14
gimli-0.21.0
heim-0.0.10
heim-common-0.0.10
heim-cpu-0.0.10
heim-disk-0.0.10
heim-host-0.0.10
heim-memory-0.0.10
heim-net-0.0.10
heim-process-0.0.10
heim-runtime-0.0.6
heim-sensors-0.0.5
heim-virt-0.0.10
hermit-abi-0.1.13
hex-0.4.0
iovec-0.1.4
itertools-0.9.0
kernel32-sys-0.2.2
lazy_static-1.4.0
lazycell-1.2.1
libc-0.2.74
lock_api-0.3.4
log-0.4.11
macaddr-1.0.1
mach-0.2.3
mach-0.3.2
maybe-uninit-2.0.0
memchr-2.3.3
memoffset-0.5.4
mio-0.6.22
miow-0.2.1
net2-0.2.34
nix-0.15.0
nix-0.17.0
normalize-line-endings-0.3.0
ntapi-0.3.4
num-integer-0.1.42
num-rational-0.2.4
num-traits-0.2.11
num_cpus-1.13.0
object-0.19.0
once_cell-1.4.0
ordered-float-1.0.2
parking_lot-0.10.2
parking_lot_core-0.7.2
pin-project-0.4.17
pin-project-internal-0.4.17
pin-utils-0.1.0
platforms-0.2.1
predicates-1.0.4
predicates-core-1.0.0
predicates-tree-1.0.0
proc-macro-hack-0.5.15
proc-macro-nested-0.1.4
proc-macro2-1.0.13
quote-1.0.6
raw-cpuid-7.0.3
rayon-1.3.0
rayon-core-1.7.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.3.7
regex-syntax-0.6.17
rust-argon2-0.7.0
rustc-demangle-0.1.16
rustc_version-0.2.3
scopeguard-1.1.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.110
serde_derive-1.0.110
signal-hook-0.1.15
signal-hook-registry-1.2.0
slab-0.4.2
smallvec-1.4.0
strsim-0.8.0
syn-1.0.22
sysinfo-0.15.0
textwrap-0.11.0
thread_local-1.0.1
threadpool-1.8.1
time-0.1.43
toml-0.5.6
treeline-0.1.0
tui-0.9.5
typed-builder-0.7.0
typenum-1.12.0
unicode-segmentation-1.6.0
unicode-width-0.1.7
unicode-xid-0.2.0
uom-0.26.0
uom-0.27.0
vec_map-0.8.2
void-1.0.2
wait-timeout-0.2.0
wasi-0.9.0+wasi-snapshot-preview1
widestring-0.4.0
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="A cross-platform graphical process/system monitor."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/ClementTsang/bottom"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD CC0-1.0 MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
