PREFIX = /usr/local
BINPREFIX = "$(PREFIX)/bin"

LIB=docker-bash

.PHONY: all install uninstall

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	mkdir -p $(BINPREFIX)
	install -m 0755 $(LIB) $(BINPREFIX)

uninstall:
	test -d $(BINPREFIX) && \
	cd $(BINPREFIX) && \
	rm -f $(LIB)
