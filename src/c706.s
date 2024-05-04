.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c706:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_42,x
	sta ram_11

	if (ram_11 = ram_52) rts
	
	ldx ram_55
	lda ram_52
	sta ram_42,x
	lda ram_52
	asl a
	tax
	lda tile_shit_4,x
	sta ram_00
	inx
	lda tile_shit_4,x
	sta ram_00+1
	ldy #$4c
	clc
	lda ram_52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_26
	tax
:	lda (<ram_00),y
	iny
	sta ram_11
	and #$03
	sta collision_something_else,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta collision_something_else,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta collision_something_else,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta collision_something_else,x
	lsr ram_11
	lsr ram_11
	inx
	cpy #$54
	bne :-
	ldy #$54
	clc
	lda ram_52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_26
	tax
:	lda (<ram_00),y
	iny
	sta ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	cpy #$5c
	bne :-
	nop
	nop
	nop
	nop
	nop
	nop
	rts
