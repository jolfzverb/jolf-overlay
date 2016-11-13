# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit git-r3
inherit cmake-utils

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://github.com/OpenOrienteering/mapper.git"
EGIT_REPO_URI="https://github.com/OpenOrienteering/mapper.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sci-libs/proj
dev-qt/qtcore
dev-qt/qthelp
dev-qt/qttest
dev-qt/qtprintsupport
dev-qt/linguist-tools
dev-qt/qdoc"

RDEPEND="${DEPEND}"
src_configure(){
  local mycmakeargs=(
    -DMapper_BUILD_QT=OFF
  )
  cmake-utils_src_configure
 }
