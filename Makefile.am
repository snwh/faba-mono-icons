EXTRA_DIST = \
	Faba-Mono \
	Faba-Mono-Dark \
	COPYING \
	AUTHORS \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -R Faba-Mono $(DESTDIR)/usr/share/icons/.
	cp -R Faba-Mono-Dark $(DESTDIR)/usr/share/icons/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/Faba-Mono && rm -rfv $(DESTDIR)/usr/share/icons/Faba-Mono
	test -e $(DESTDIR)/usr/share/icons/Faba-Mono-Dark && rm -rfv $(DESTDIR)/usr/share/icons/Faba-Mono-Dark
