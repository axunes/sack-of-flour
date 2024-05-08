.include "global.inc"
.include "nes.inc"
.segment "PRGE"

sub_dbda:
	jsr vsync
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr vsync
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr vsync
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	jsr vsync
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr sub_dc1b
	rts
