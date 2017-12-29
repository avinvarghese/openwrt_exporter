# Standard installation vars
prefix = /usr/local
exec_prefix = $(prefix)
datarootdir = $(prefix)/share
datadir = $(datarootdir)
bindir = $(exec_prefix)/bin
docdir = $(datarootdir)/doc/
sysconfdir = $(prefix)/etc

# Setup install correctly
INSTALL_PROGRAM = $(INSTALL)
INSTALL_DATA = $(INSTALL) -m 644

.PHONY: all install

.DEFAULT: all

all: install

install:
	$(INSTALL_PROGRAM) -T metrics.lua $(DESTDIR)$(bindir)/metrics.lua
	$(INSTALL_DATA) -T metrics.initscript $(DESTDIR)$(sysconfdir)/openwrt-exporter
	$(INSTALL_DATA) LICENSE.txt README.md openwrt.png metrics.out $(DESTDIR)$(docdir)/openwrt-exporter/
