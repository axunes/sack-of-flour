.include "global.inc"
NBASIC = 1
CA65HL_USE_CUSTOM_SYNTAX = 0
.include "ca65hl/ca65hl.inc"

.segment "PRGE"
; label_de0d:
; 	lda #$00
; 	sta idx
; label_de12:
; 	lda #$00
; 	sta ram_87
; label_de17:
; 	inc ram_87
; 	lda #$40
; 	sta temp
; 	lda ram_87
; 	cmp temp
; 	beq :+
; 	jmp label_de17
; :	inc idx
; 	lda #$11
; 	sta temp
; 	lda idx
; 	cmp temp
; 	beq :+
; 	jmp label_de12
; :	rts



label_de0d:
	for (lda #0 : sta idx, idx <> #17, inc idx)
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
		:
	next
	rts