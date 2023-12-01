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

# These are used in the title of the NES program and the zip file.
title = sack

# Space-separated list of assembly language files that make up the
# PRG ROM.  If it gets too long for one line, you can add a backslash
# (the \ character) at the end of the line and continue on the next.
objlist = sack level1 level2 level3 level4 level5 unused

AS65 = ca65
LD65 = ld65
objdir = obj/nes
srcdir = src

.PHONY: run debug all dist zip clean

all: $(title).nes

clean:
	-rm $(objdir)/*.o $(objdir)/*.s $(objdir)/*.chr

# Rules for PRG ROM

objlistntsc = $(foreach o,$(objlist),$(objdir)/$(o).o)

$(title).nes: config.cfg $(objlistntsc)
	$(LD65) -o $(title).nes --dbgfile $(title).dbg -C $^

$(objdir)/%.o: $(srcdir)/%.s $(srcdir)/nes.inc $(srcdir)/global.inc
	$(AS65) -g $< -o $@
