#!/usr/bin/env make -f

ID=mDNSResponder
IDENTIFIER=net.alkalay.$(ID)

VERSION=10.9
PACKAGE_BUILD=/usr/bin/pkgbuild

pkg:
	$(PACKAGE_BUILD) --root pseudo-root/ --identifier $(IDENTIFIER) \
		--scripts scripts \
		--version $(VERSION) "$(ID)-$(VERSION).pkg" 
	rm -f $(ID).pkg
	ln -s $(ID)-$(VERSION).pkg $(ID).pkg
