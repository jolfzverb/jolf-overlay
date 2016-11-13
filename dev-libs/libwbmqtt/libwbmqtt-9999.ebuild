# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3
inherit eutils

DESCRIPTION="Package that contains two packages: libwbmqtt and libwmqtt-dev, library and headers for wb-homa-drivers"
HOMEPAGE="https://github.com/contactless/libwbmqtt"
EGIT_REPO_URI="https://github.com/contactless/libwbmqtt"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="app-misc/mosquitto"
RDEPEND="${DEPEND}"

src_install(){
  emake DESTDIR="${D}" install
  ln -s libwbmqtt.so.0.1 ${D}/usr/lib/libwbmqtt.so.0
  ln -s libwbmqtt.so.0 ${D}/usr/lib/libwbmqtt.so
}

