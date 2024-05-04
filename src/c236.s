.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c236:
	lda #$00
	sta APU_CHANCTRL
	lda #$1f
	sta APU_CHANCTRL
	rts
