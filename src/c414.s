.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c414:
	lda #$55
	sta ram_54
	lda #$00
	sta ram_53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_c42d: ; for
	ldx idx
	lda $8004,x
	sta PPU_VRAM_IO
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_c42d
	rts
