# $Id: Makefile,v 1.1.1.1 2005/08/16 13:45:13 luca Exp $

VER=0.1

zonenotify: zonenotify.c zonenotify.h
	@cc zonenotify.c -o zonenotify

install: zonenotify
	@cp -f zonenotify /usr/local/bin

strip: install
	@strip /usr/local/bin/zonenotify

clean:
	@rm -f *~ *.core zonenotify

tar:
	@tar -zvcf ../zonenotify-${VER}.tar.gz -C .. \
		--exclude CVS zonenotify
