# This program wraps the LAME encoder with my standard options.
# Dr Owain Kenway

# Where it is distributed, it is done so under a 4 clause,
# BSD-style license (see LICENSE.txt)

sources = lamewrapper.hs
installdir = $(HOME)/bin

all: lamewrapper

lamewrapper: $(sources)
	ghc lamewrapper.hs

install: lamewrapper
	cp lamewrapper $(installdir)/lamewrapper

clean:
	rm *.hi *.o lamewrapper
