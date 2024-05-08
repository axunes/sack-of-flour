.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_dad2:
	:
	jsr sub_db8e
	dec ram_71
	lda #$00
	sta temp
	lda ram_71
	cmp temp
	beq :+
	jmp :-
:	rts
