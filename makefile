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

title = sack

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

AS65 = ca65
LD65 = ld65
objdir = obj/nes
srcdir = src

.PHONY: run debug all dist zip clean

all: $(title).nes

clean:
	-rm $(objdir)/*.o $(objdir)/*.s $(objdir)/*.chr

objlistntsc = $(foreach o,$(objlist),$(objdir)/$(o).o)

$(title).nes: config.cfg $(objlistntsc)
	$(LD65) -o $(title).nes --dbgfile $(title).dbg -m $(title).map.txt -C $^

$(objdir)/%.o: $(srcdir)/%.s $(srcdir)/nes.inc $(srcdir)/global.inc
	$(AS65) -g $< -o $@
