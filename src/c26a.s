.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c26a:
	lda ram_06
	asl a
	sta ram_28
	lda #$06
	sta $8000
	lda ram_28
	sta $8001
	lda #$07
	sta $8000
	lda ram_28
	clc
	adc #$01
	sta $8001
	rts
