.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_db61:
	jsr sub_d629
	jsr sub_d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta ram_22
	rts ; FIXME
	
	; dead code?
	jsr vsync
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
