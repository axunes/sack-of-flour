.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c28b:
	lda #$00
	sta $8000
	lda #$08
	sta $8001
	lda #$01
	sta $8000
	lda #$0a
	sta $8001
	lda ram_06
	asl a
	asl a
	clc
	adc #$0c
	sta ram_28
	lda #$02
	sta $8000
	lda ram_28
	sta $8001
	lda #$03
	sta $8000
	lda ram_28
	clc
	adc #$01
	sta $8001
	lda #$04
	sta $8000
	lda ram_28
	clc
	adc #$02
	sta $8001
	lda #$05
	sta $8000
	lda ram_28
	clc
	adc #$03
	sta $8001
	rts
