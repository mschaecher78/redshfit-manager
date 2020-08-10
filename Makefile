#!/bin/make -f

LEVEL = 1
SUBLEVEL = 12
PATCHLEVEL = 1

# Set version.
export VERSION = $(LEVEL).$(SUBLEVEL).$(PATCHLEVEL)

export NAME = redshift-manager


# Directory list, both used for direct install or package build.
BIN = usr/bin
DOC = usr/share/doc
APP = usr/share/applications
DIR = usr/share/$(NAME)
DEB = DEBIAN

export BIN DOC APP DIR DEB

install:

package-deb:
	make clean
	scripts/package-deb

clean:
	rm -Rf debian
