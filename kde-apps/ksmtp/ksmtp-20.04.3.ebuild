# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ECM_TEST="true"
KFMIN=5.70.0
QTMIN=5.14.2
inherit ecm kde.org

DESCRIPTION="Job-based library to send email through an SMTP server"
HOMEPAGE="https://api.kde.org/kdepim/ksmtp/html/index.html"

LICENSE="LGPL-2.1+"
SLOT="5"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

DEPEND="
	dev-libs/cyrus-sasl
	>=dev-qt/qtnetwork-${QTMIN}:5
	>=kde-frameworks/kcoreaddons-${KFMIN}:5
	>=kde-frameworks/ki18n-${KFMIN}:5
	>=kde-frameworks/kio-${KFMIN}:5
"
RDEPEND="${DEPEND}"

RESTRICT+=" test" # bug 642410
