.include "global.inc"
.include "nes.inc"

.segment "PRGE"
sub_dc1b:
	ldx #0
:	sta PPU_VRAM_IO
	inx
	cpx #0
	bne :-
	rts
