PREFIX ?= /usr
MANDIR ?= ${PREFIX}/share/man
DOCDIR ?= ${PREFIX}/share/doc/c-manpages
LICDIR ?= ${DOCDIR}


default:

install install-man:
	mkdir -p -m 0755 \
		${DESTDIR}${MANDIR}/man3 \
		${DESTDIR}${MANDIR}/man7 \
		${DESTDIR}${DOCDIR}	 \
		${DESTDIR}${LICDIR}
	install -m 0644 man3/*.3* ${DESTDIR}${MANDIR}/man3/
	install -m 0644 man7/*.7* ${DESTDIR}${MANDIR}/man7/
	install -m 0644 LICENSE ${DESTDIR}${LICDIR}
	install -m 0644 README ${DESTDIR}${DOCDIR}

