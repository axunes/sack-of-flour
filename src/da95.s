.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_da95:
	jsr sub_dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_daa7:
	ldx idx
	lda game_over_text,x
	sta PPU_VRAM_IO
	inc idx
	lda #$09
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_daa7
:	jsr sub_db09
	jsr nesmus_shut_up
	lda #$c8
	sta ram_71
	jsr sub_dad2
	rts
