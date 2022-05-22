# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A portable and retargetable assembler."
HOMEPAGE="http://sun.hasenbraten.de/vasm"
SRC_URI="http://sun.hasenbraten.de/vasm/release/vasm.tar.gz"
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="VASM"
IUSE="syntax-std syntax-madmac syntax-mot syntax-oldstyle syntax-test"

CPUS=('6502' '6800' '6809' 'arm' 'c16x' 'jagrisc' 'm68k' 'pdp11' 'ppc' 'qnice' 'test' 'tr3200' 'vidcore' 'x86' 'z80')
SYNTAX=(
	'std'
	'madmac'
	'mot'
	'oldstyle'
	'test'
)

src_unpack() {
	default_src_unpack
	mv "${WORKDIR}/${PN}" "${WORKDIR}/${P}"
}

src_configure() {
	pass
}

src_compile() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			if use syntax-${s}
			then
				emake CPU=$c SYNTAX=$s
			fi
		done
	done
}

src_install() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			if use syntax-${s}
			then
				dobin "vasm${c}_${s}"
			fi
		done
	done
}
