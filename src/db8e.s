.include "global.inc"
.include "nes.inc"

.segment "PRGE"
sub_db8e:
:	lda PPU_STATUS
	bpl :-
:	lda PPU_STATUS
	bmi :-
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	inc ram_1b
	rts
	; dead code?
:	lda PPU_STATUS
	bpl :-
:	lda PPU_STATUS
	bmi :-
:	lda PPU_STATUS
	bpl :-
	inc ram_1b
	rts
