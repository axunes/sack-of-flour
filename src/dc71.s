.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

.segment "PRGE"
label_dc71:
	for (lda #0 : sta idx, idx <> #12, inc idx)
		ldx idx
		lda #0
		sta ram_72,x
	next
	rts
