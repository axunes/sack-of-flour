.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d584:
	lda #$9f
	sta APU_PULSE2CTRL
	lda #$8c
	sta APU_PULSE2RAMP
	lda #$4d
	sta APU_PULSE2FTUNE
	lda #$95
	sta APU_PULSE2STUNE
	rts
	; FIXME
	; dead code? or not?
	lda #$9f
	sta $4000
	lda #$84
	sta $4001
	lda #$d3
	sta $4002
	lda #$fc
	sta $4003
	rts
	lda #$88
	sta $4000
	lda #$48
	sta $4001
	lda #$25
	sta $4002
	lda #$4b
	sta $4003
	rts
