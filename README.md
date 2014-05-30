Lamewrapper version (i)
=======================

This program wraps the LAME encoder with my standard options.

Dr Owain Kenway

Where it is distributed, it is done so under a 4 clause,
BSD-style license (see LICENSE.txt)

Install
-------

To install, make sure you have ghc installed, modify the Makefile with
your options and then issue:

make && make install

Usage
-----

The lamewrapper executable takes input from stdin.

./lamewrapper

You can use redirection (or even pipes) to automate this.  See 
template.in for example input file.

./lamewrapper < inputfile
