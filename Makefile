.PHONY: install
default: install
install:
	mkdir -p $(DESTDIR)/etc/udev/rules.d/
	cp -r *.rules $(DESTDIR)/etc/udev/rules.d/
	mkdir -p $(DESTDIR)/usr/bin/
	cp yubikey-screenlock $(DESTDIR)/usr/bin/
	chmod +x $(DESTDIR)/usr/bin/yubikey-screenlock

uninstall:
	for rule in *.rules; do rm $(DESTDIR)/etc/udev/rules.d/$$rule; done
	rm $(DESTDIR)/usr/bin/yubikey-screenlock