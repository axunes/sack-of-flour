.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_dae9:
	jsr sub_db80
	jsr sub_c2e0
	jsr vsync
	jsr sub_dbda
	jsr vsync
	jsr sub_dc26
	jsr vsync
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
