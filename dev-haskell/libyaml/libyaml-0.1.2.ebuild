# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Low-level, streaming YAML interface"
HOMEPAGE="https://github.com/snoyberg/yaml#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="no-unicode system-libyaml"

RDEPEND=">=dev-haskell/conduit-1.2.8:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-lang/ghc-8.0.2:=
	system-libyaml? ( dev-libs/libyaml )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag no-unicode no-unicode) \
		$(cabal_flag system-libyaml system-libyaml)
}
