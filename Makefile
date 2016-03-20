# Top level makefile, the real shit is at src/Makefile

export PREFIX?=$(PWD)
export INSTALL_BIN=$(PREFIX)/bin
export CC=c++
export CFLAGS=-Wall -g
OS:=$(shell uname -s)
ifeq ($(OS), Darwin)
	DEBUG := lldb
else
	DEBUG := gdb --args 
endif
export DEBUG

.PHONY: install run debug uninstall

default: all

.DEFAULT:
	cd src/hi && $(MAKE)
	cd src/map && $(MAKE)

run:
	cd src/$(what) && $(MAKE) run

debug:
	cd src/$(what) && $(MAKE) debug

clean:
	cd src/$(what) && $(MAKE) clean

install: all
	test -d $(INSTALL_BIN) || mkdir -p $(INSTALL_BIN)
	cd src/hi && $(MAKE) install
	cd src/map && $(MAKE) install

uninstall:
	rm -f $(INSTALL_BIN)/*
