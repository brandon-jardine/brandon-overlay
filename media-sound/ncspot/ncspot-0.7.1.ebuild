# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
addr2line-0.15.1
adler-1.0.2
aes-0.6.0
aes-ctr-0.6.0
aes-soft-0.6.4
aesni-0.10.0
ahash-0.6.3
aho-corasick-0.7.18
ansi_term-0.11.0
array-macro-1.0.5
arrayref-0.3.6
arrayvec-0.5.2
async-io-1.4.1
async-trait-0.1.50
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.1
backtrace-0.3.59
base64-0.10.1
base64-0.13.0
bitflags-0.9.1
bitflags-1.2.1
blake2b_simd-0.5.11
block-0.1.6
block-buffer-0.9.0
bumpalo-3.6.1
byteorder-1.4.3
bytes-0.4.12
bytes-0.5.6
bytes-1.0.1
cache-padded-1.1.1
cc-1.0.67
cfg-if-0.1.10
cfg-if-1.0.0
chrono-0.4.19
cipher-0.2.5
clap-2.33.3
clipboard-0.5.0
clipboard-win-2.2.0
cloudabi-0.0.3
concurrent-queue-1.2.2
constant_time_eq-0.1.5
cookie-0.12.0
cookie_store-0.7.0
core-foundation-0.9.1
core-foundation-sys-0.8.2
cpufeatures-0.1.1
crc32fast-1.2.1
crossbeam-channel-0.5.1
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.3
crossbeam-utils-0.7.2
crossbeam-utils-0.8.4
crypto-mac-0.11.0
ctr-0.6.0
cursive-0.16.3
cursive_core-0.2.2
darling-0.10.2
darling-0.9.0
darling_core-0.10.2
darling_core-0.9.0
darling_macro-0.10.2
darling_macro-0.9.0
dbus-0.9.2
dbus-tree-0.9.1
derivative-2.2.0
derive_builder-0.7.2
derive_builder_core-0.5.0
digest-0.9.0
dirs-1.0.5
dirs-next-1.0.2
dirs-sys-next-0.1.2
dotenv-0.13.0
dtoa-0.4.8
either-1.6.1
encoding_rs-0.8.28
enum-map-0.6.4
enum-map-derive-0.4.6
enumflags2-0.6.4
enumflags2_derive-0.6.4
env_logger-0.6.2
failure-0.1.8
failure_derive-0.1.8
fastrand-1.4.1
fern-0.6.0
flate2-1.0.20
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.0.1
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.31
futures-0.3.15
futures-channel-0.3.15
futures-core-0.3.15
futures-cpupool-0.1.8
futures-executor-0.3.15
futures-io-0.3.15
futures-lite-1.11.3
futures-macro-0.3.15
futures-sink-0.3.15
futures-task-0.3.15
futures-util-0.3.15
generic-array-0.14.4
getrandom-0.1.16
getrandom-0.2.2
gimli-0.24.0
glob-0.3.0
h2-0.1.26
h2-0.2.7
half-1.7.1
hashbrown-0.9.1
heck-0.3.2
hermit-abi-0.1.18
hmac-0.11.0
http-0.1.21
http-0.2.4
http-body-0.1.0
http-body-0.3.1
httparse-1.4.0
httpdate-0.3.2
humantime-1.3.0
hyper-0.12.36
hyper-0.13.10
hyper-tls-0.3.2
hyper-tls-0.4.3
ident_case-1.0.1
idna-0.1.5
idna-0.2.3
indexmap-1.6.2
instant-0.1.9
iovec-0.1.4
ipnet-2.3.0
itertools-0.8.2
itoa-0.4.7
js-sys-0.3.51
kernel32-sys-0.2.2
lazy_static-1.4.0
lewton-0.10.2
libc-0.2.94
libdbus-sys-0.2.1
libpulse-binding-2.23.1
libpulse-simple-binding-2.23.0
libpulse-simple-sys-1.16.1
libpulse-sys-1.18.0
librespot-audio-0.2.0
librespot-core-0.2.0
librespot-metadata-0.2.0
librespot-playback-0.2.0
librespot-protocol-0.2.0
lock_api-0.3.4
log-0.4.14
mac-notification-sys-0.3.0
malloc_buf-0.0.6
maplit-1.0.2
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.4.0
memoffset-0.5.6
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.4.4
mio-0.6.23
mio-0.7.11
miow-0.2.2
miow-0.3.7
native-tls-0.2.7
nb-connect-1.2.0
ncurses-5.101.0
net2-0.2.37
nix-0.17.0
notify-rust-4.5.1
ntapi-0.3.6
num-0.3.1
num-bigint-0.4.0
num-complex-0.3.1
num-derive-0.3.3
num-integer-0.1.44
num-iter-0.1.42
num-rational-0.3.2
num-traits-0.2.14
num_cpus-1.13.0
objc-0.2.7
objc-foundation-0.1.1
objc_id-0.1.1
object-0.24.0
ogg-0.8.0
once_cell-1.7.2
opaque-debug-0.3.0
openssl-0.10.34
openssl-probe-0.1.2
openssl-sys-0.9.63
owning_ref-0.4.1
pancurses-0.16.1
parking-2.0.0
parking_lot-0.9.0
parking_lot_core-0.6.2
pbkdf2-0.8.0
pdcurses-sys-0.7.1
percent-encoding-1.0.1
percent-encoding-2.1.0
pest-2.1.3
pin-project-1.0.7
pin-project-internal-1.0.7
pin-project-lite-0.1.12
pin-project-lite-0.2.6
pin-utils-0.1.0
pkg-config-0.3.19
platform-dirs-0.3.0
polling-2.0.3
ppv-lite86-0.2.10
priority-queue-1.1.1
proc-macro-crate-0.1.5
proc-macro-hack-0.5.19
proc-macro-nested-0.1.7
proc-macro2-0.4.30
proc-macro2-1.0.26
protobuf-2.14.0
protobuf-codegen-2.14.0
protobuf-codegen-pure-2.14.0
publicsuffix-1.5.6
quick-error-1.2.3
quote-0.3.15
quote-0.6.13
quote-1.0.9
rand-0.6.5
rand-0.8.3
rand_chacha-0.1.1
rand_chacha-0.3.0
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.6.2
rand_hc-0.1.0
rand_hc-0.3.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
random-0.12.2
rdrand-0.4.0
redox_syscall-0.1.57
redox_syscall-0.2.8
redox_users-0.3.5
redox_users-0.4.0
regex-1.5.4
regex-syntax-0.6.25
remove_dir_all-0.5.3
reqwest-0.10.10
reqwest-0.9.24
rspotify-0.10.0
rust-argon2-0.8.3
rustc-demangle-0.1.19
rustc-serialize-0.3.24
rustc_version-0.2.3
rustc_version-0.3.3
ryu-1.0.5
schannel-0.1.19
scoped-tls-1.0.0
scopeguard-1.1.0
security-framework-2.2.0
security-framework-sys-2.2.0
semver-0.11.0
semver-0.9.0
semver-parser-0.10.2
semver-parser-0.7.0
serde-1.0.126
serde_cbor-0.11.1
serde_derive-1.0.126
serde_json-1.0.64
serde_repr-0.1.6
serde_urlencoded-0.5.5
serde_urlencoded-0.7.0
sha-1-0.9.5
shannon-0.2.0
shell-words-1.0.0
signal-hook-0.3.8
signal-hook-registry-1.3.0
slab-0.4.3
smallvec-0.6.14
socket2-0.3.19
socket2-0.4.0
stable_deref_trait-1.2.0
string-0.2.1
strsim-0.7.0
strsim-0.8.0
strsim-0.9.3
strum-0.20.0
strum-0.8.0
strum_macros-0.20.1
strum_macros-0.8.0
subtle-2.4.0
syn-0.11.11
syn-0.15.44
syn-1.0.72
synom-0.11.3
synstructure-0.12.4
tempfile-3.2.0
term_size-0.3.2
termcolor-1.1.2
textwrap-0.11.0
thiserror-1.0.24
thiserror-impl-1.0.24
time-0.1.43
tinyvec-1.2.0
tinyvec_macros-0.1.0
tokio-0.1.22
tokio-0.2.25
tokio-1.5.0
tokio-buf-0.1.1
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-io-0.1.13
tokio-macros-1.1.0
tokio-reactor-0.1.12
tokio-socks-0.3.0
tokio-stream-0.1.5
tokio-sync-0.1.8
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
tokio-tls-0.3.1
tokio-util-0.3.1
tokio-util-0.6.6
toml-0.5.8
tower-service-0.3.1
tracing-0.1.26
tracing-core-0.1.18
tracing-futures-0.2.5
try-lock-0.2.3
try_from-0.3.2
typenum-1.13.0
ucd-trie-0.1.3
unicase-2.6.0
unicode-bidi-0.3.5
unicode-normalization-0.1.17
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.0.4
unicode-xid-0.1.0
unicode-xid-0.2.2
url-1.7.2
url-2.2.2
uuid-0.7.4
uuid-0.8.2
vcpkg-0.2.12
vec_map-0.8.2
vergen-3.2.0
version_check-0.9.3
void-1.0.2
waker-fn-1.1.0
want-0.2.0
want-0.3.0
wasi-0.10.2+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wasm-bindgen-0.2.74
wasm-bindgen-backend-0.2.74
wasm-bindgen-futures-0.4.24
wasm-bindgen-macro-0.2.74
wasm-bindgen-macro-support-0.2.74
wasm-bindgen-shared-0.2.74
wasmer_enumset-1.0.1
wasmer_enumset_derive-0.5.0
web-sys-0.3.51
webbrowser-0.5.5
wepoll-sys-3.0.1
widestring-0.4.3
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.5.1
winreg-0.6.2
winreg-0.7.0
winrt-0.4.0
winrt-notification-0.2.4
ws2_32-sys-0.2.1
x11-clipboard-0.3.3
xcb-0.8.2
xi-unicode-0.3.0
xml-rs-0.6.1
zbus-1.9.1
zbus_macros-1.9.1
zerocopy-0.3.0
zerocopy-derive-0.2.0
zvariant-2.6.0
zvariant_derive-2.6.0
${P}
"

inherit cargo

DESCRIPTION="ncurses Spotify client written in Rust using librespot, inspired by ncmpc and the likes."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/hrkfdn/ncspot"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD BSL-1.0 CC0-1.0 ISC LGPL-3 MIT MPL-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

PATCHES="${FILESDIR}/${PN}-disable_optional_features.patch"

src_prepare() {
	for p in $PATCHES
	do
		eapply -p1 $p
	done

	eapply_user
}
