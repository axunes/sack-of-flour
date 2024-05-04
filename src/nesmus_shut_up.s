.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

nesmus_shut_up:
; zero out all apu registers
	ldx #0
	lda #0
:	sta APU_PULSE1CTRL,x
	inx
	cpx #16
	bne :-
	rts
