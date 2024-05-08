.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d4d9:
	lda #$00
	sta idx
label_d4de:
	lda player_health
	sta temp
	lda idx
	cmp temp
	bmi :+
	rts
:	ldx ram_22
	lda #$08
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda #$02
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda #$02
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda #$10
	pha
	lda idx
	asl a
	asl a
	asl a
	sta ram_11
	pla
	clc
	adc ram_11
	sta $0300,x
	lda ram_22
	clc
	adc #$04
	sta ram_22
	inc idx
	jmp label_d4de
	rts
	rts ; what
