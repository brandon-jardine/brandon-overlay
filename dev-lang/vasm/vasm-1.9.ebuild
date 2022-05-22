# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A portable and retargetable assembler."
HOMEPAGE="http://sun.hasenbraten.de/vasm"
SRC_URI="http://sun.hasenbraten.de/vasm/release/vasm.tar.gz"
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="VASM"

CPUS=('6502' '6800' '6809' 'arm' 'c16x' 'jagrisc' 'm68k' 'pdp11' 'ppc' 'qnice' 'test' 'tr3200' 'vidcore' 'x86' 'z80')
SYNTAX=('std' 'madmac' 'mot' 'oldstyle' 'test')

src_configure() {
	pass
}

src_compile() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			emake CPU=$c SYNTAX=$s
		done
	done
}

src_install() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			dobin "vasm${c}_${s}"
		done
	done
}
