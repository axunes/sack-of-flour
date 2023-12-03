.include "global.inc"
.include "nes.inc"

.segment "PRGE"
label_dc1b:
	ldx #$00
:	sta PPU_VRAM_IO
	inx
	cpx #$00
	bne :-
	rts
