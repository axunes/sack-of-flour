.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_db09:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_db18:
	ldx idx ; for ?
	lda $e25a,x
	sta PPU_VRAM_IO
	inc idx
	lda #$10
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db18
	; FIXME
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta idx
label_db44:
	ldx idx ; for ?
	lda $e000,x
	sta $2007
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db44
