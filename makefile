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
	c236\
	nesmus_shut_up\
	c24e\
	c26a\
	c28b\
	c2e0\
	c31d\
	c35e\
	c3eb\
	c414\
	c44b\
	c47d\
	c4b4\
	c5aa\
	c6a0\
	c706\
	c7ec\
	pause_game\
	c9e2\
	cabb\
	cb8c\
	cbaa\
	ccfa\
	ce4a\
	d023\
	d204\
	d255\
	d2bb\
	d4d9\
	get_controller_buttons\
	d584\
	d5c3\
	d5d8\
	d5ed\
	d629\
	d6e5\
	d773\
	d825\
	d8b7\
	da95\
	dad2\
	dae9\
	db09\
	db61\
	db80\
	vsync\
	dbc3\
	dbda\
	dc1b\
	dc26\
	irq\
	dc6b\
	dc71\
	dc92\
	de0d\
	nesmus\
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

$(objdir)/sack.o: $(incdir)/header.inc

$(dirlist):
	mkdir -p $@

clean:
	-rm -rf $(objdir)
