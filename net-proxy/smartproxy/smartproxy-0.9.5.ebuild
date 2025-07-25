# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A fast, proxy smart selector"
HOMEPAGE="https://github.com/microcai/smartproxy"

EGIT_REPO_URI="https://github.com/microcai/smartproxy"
EGIT_COMMIT="v${PV}"

inherit cmake
SRC_URI="
	https://github.com/microcai/smartproxy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/openssl
"

DEPEND="dev-libs/openssl
"

src_configure(){
	local mycmakeargs=(
		-DUSE_SYSTEM_OPENSSL=ON
		-DUSE_SYSTEM_BOOST=OFF
	)
	cmake_src_configure
}
