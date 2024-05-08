.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d5d8:
	; FIXME
	lda #$0f
	sta $400C
	lda #$ff
	sta $400d
	lda #$f9
	sta $400E
	lda #$08
	sta $400F
	rts
