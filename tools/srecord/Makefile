#	$Id: Makefile,v 1.1.1.1 2006/06/29 06:43:25 cpu Exp $

PROG=	srecord

DESTDIR=/opt/pmon2000/tools

SRCS=	srecord.c 

OBJS=	srecord.o

CFLAGS+=-I${.CURDIR} -I.
CLEANFILES=

${PROG}: ${OBJS}
	${CC} -o $@ ${OBJS} ${LIBS}

install:
	cp ${PROG} ${DESTDIR}/bin

clean:
	${RM} -rf ${OBJS} ${CLEANFILES} ${PROG}

