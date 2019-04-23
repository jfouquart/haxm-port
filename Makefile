# $FreeBSD$

PORTNAME=	haxm
PORTVERSION=	20190416
CATEGORIES=	emulators

MAINTAINER=	moa
COMMENT=	Intel Hardware Accelerated Execution Manager

LICENSE=	modified-bsd

BUILD_DEPENDS=	nasm>0:devel/nasm

USES=		kmod
USE_GITHUB=	yes
GH_ACCOUNT=	jfouquart
GH_PROJECT=	haxm
GH_TAGNAME=	e397446

PLIST_FILES=	${KMODDIR}/haxm.ko

.include <bsd.port.pre.mk>

do-build:
	(cd ${WRKSRC}/platforms/freebsd/ && make -f Makefile CC=${CC})

.include <bsd.port.post.mk>
