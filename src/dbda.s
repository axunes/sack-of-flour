.include "global.inc"
.include "nes.inc"
.segment "PRGE"

label_dbda:
	jsr sub_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr sub_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr sub_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr sub_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	rts
