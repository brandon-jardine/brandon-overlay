# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A portable and retargetable assembler."
HOMEPAGE="http://sun.hasenbraten.de/vasm"
SRC_URI="http://phoenix.owl.de/tags/vasm1_9.tar.gz"
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="VASM"
IUSE="syntax-std syntax-madmac syntax-mot syntax-oldstyle syntax-test
	cpu-6502 cpu-6800 cpu-6809 cpu-arm cpu-c16x cpu-jagrisc cpu-m68k
	cpu-pdp11 cpu-ppc cpu-qnice cpu-test cpu-tr3200 cpu-vidcore
	cpu-x86 cpu-z80"

CPUS=(
	'6502'
	'6800'
	'6809'
	'arm'
	'c16x'
	'jagrisc'
	'm68k'
	'pdp11'
	'ppc'
	'qnice'
	'test'
	'tr3200'
	'vidcore'
	'x86'
	'z80'
)

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
	return
}

src_compile() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			if use cpu-${c}
			then
				if use syntax-${s}
				then
					emake CPU=$c SYNTAX=$s
				fi
			fi
		done
	done
}

src_install() {
	for c in "${CPUS[@]}"
	do
		for s in "${SYNTAX[@]}"
		do
			if use cpu-${c}
			then
				if use syntax-${s}
				then
					dobin "vasm${c}_${s}"
				fi
			fi
		done
	done
}
