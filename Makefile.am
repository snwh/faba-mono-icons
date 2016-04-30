EXTRA_DIST = \
	Faba-Mono \
	Faba-Mono-Dark \
	COPYING \
	AUTHORS \
	README.md

xsessiondir = $(datadir)/xsessions

install-data-hook:
	$(MKDIR_P) -m 00755 $(DESTDIR)$(datadir)/icons && \
	cp -Rv "$(top_srcdir)/Faba-Mono" "$(DESTDIR)$(datadir)/icons/." && \
	cp -Rv "$(top_srcdir)/Faba-Mono-Dark" "$(DESTDIR)$(datadir)/icons/."

uninstall-hook:
	(test -e $(DESTDIR)$(datadir)/icons/Faba-Mono && chmod a+rw -R $(DESTDIR)$(datadir)/icons/Faba-Mono/ && rm -rf $(DESTDIR)$(datadir)/icons/Faba-Mono); \
	(test -e $(DESTDIR)$(datadir)/icons/Faba-Mono-Dark && chmod a+rw -R $(DESTDIR)$(datadir)/icons/Faba-Mono-Dark/ && rm -rf $(DESTDIR)$(datadir)/icons/Faba-Mono-Dark);
