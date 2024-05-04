.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c24e:
label_c24e:
	lda #$0f
	sta temp
	lda ram_22
	cmp temp
	bpl :+
	rts
:	ldx ram_22
	lda #$f5
	sta $0300,x
	inc ram_22
	jmp label_c24e
