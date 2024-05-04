.include "global.inc"
.include "nes.inc"

.segment "PRGE"
sub_dbc3:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$0e
	ldy player_chunk_pos_again
:	sta PPU_VRAM_IO
	dey
	cpy #$00
	bne :-
