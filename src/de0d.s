.include "global.inc"
.include "nes.inc"
NBASIC = 1
CA65HL_USE_CUSTOM_SYNTAX = 0
.include "ca65hl/ca65hl.inc"

.segment "PRGE"
label_de0d:
	for (lda #0 : sta idx, idx <> #17, inc idx)
		for (lda #0 : sta ram_87, ram_87 <> #64, inc ram_87)
		; nothing? lol
		next
	next

	rts
