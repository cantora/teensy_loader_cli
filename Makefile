CC ?= gcc
CFLAGS ?= -O2 -Wall
teensy_loader_cli: teensy_loader_cli.c
	$(CC) $(CFLAGS) -s -DUSE_LIBUSB -o teensy_loader_cli teensy_loader_cli.c -lusb

clean:
	rm -f teensy_loader_cli

install:
	cd $(HOME)/bin && ln -s $(CURDIR)/teensy_loader_cli
