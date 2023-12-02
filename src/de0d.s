.include "global.inc"

.segment "PRGE"
label_de0d:
	lda #$00
	sta idx
label_de12:
	lda #$00
	sta ram_87
label_de17:
	inc ram_87
	lda #$40
	sta temp
	lda ram_87
	cmp temp
	beq :+
	jmp label_de17
:	inc idx
	lda #$11
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_de12
:	rts
