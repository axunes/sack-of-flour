#!/usr/bin/make -f
#
# Makefile for NES game
# Copyright 2011-2014 Damian Yerrick
#
# Copying and distribution of this file, with or without
# modification, are permitted in any medium without royalty
# provided the copyright notice and this notice are preserved.
# This file is offered as-is, without any warranty.
#

objlist = \
	memory\
	nmi\
	sack\
	init_ram\
	c326\
	nesmus_shut_up\
	prge\
	db8e\
	dbc3\
	dbda\
	dc1b\
	dc26\
	irq\
	dc6b\
	dc71\
	dc92\
	de0d\
	prgf\
	level1\
	level2\
	level3\
	level4\
	level5\
	unused\

title = sack

objdir = obj
srcdir = src
incdir = inc

.PHONY: all clean

all: $(title).nes

objlistntsc = $(foreach o,$(objlist),$(objdir)/$(o).o)
dirlist := $(sort $(dir $(objlistntsc)))

$(title).nes: config.cfg $(objlistntsc)
	ld65 -o $(title).nes --dbgfile $(title).dbg -m $(title).map.txt -C $^

config.cfg: $(dirlist)

$(objdir)/%.o: $(srcdir)/%.s $(incdir)/nes.inc $(incdir)/global.inc $(incdir)/macros.inc
	ca65 $< -o $@ -g -I $(incdir) --bin-include-dir $(incdir)

$(objdir)/$(title).o: $(incdir)/header.inc

$(dirlist):
	mkdir -p $@

clean:
	-rm -rf $(objdir)
