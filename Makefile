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
