SUBDIRS := $(dir $(wildcard */Makefile))

.PHONY: liblua feoslua all clean

all: liblua feoslua

liblua:
	@$(MAKE) -C liblua

feoslua:
	@$(MAKE) -C feoslua

clean:
	@$(MAKE) -C liblua clean
	@$(MAKE) -C feoslua clean

ifneq ($(strip $(DEST)),)
install: all
	@cp liblua/lua514.fx2   $(DEST)/data/FeOS/lib/lua514.fx2  || exit 1
	@cp feoslua/feoslua.fx2 $(DEST)/data/FeOS/bin/feoslua.fx2 || exit 1
endif
