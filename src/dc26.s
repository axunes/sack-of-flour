.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

.segment "PRGE"
label_dc26:
	for (lda #0 : sta ram_66 : lda #0 : sta PPU_SPR_ADDR, ram_66 <> #0, inc ram_66)
		lda #$f5
		sta PPU_SPR_IO
	next
	rts

	; dead code?
	for (lda #0 : sta ram_66, ram_66 <> #0, inc ram_66)
		ldx ram_66
		lda #245
		sta OAM,x
	next
	rts
