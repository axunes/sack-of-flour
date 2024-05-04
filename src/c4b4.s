.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c4b4:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_2a,x
	sta ram_11

	if (ram_11 = ram_52) rts

	ldx ram_55
	lda ram_52
	sta ram_2a,x
	lda ram_52
	asl a
	tax
	lda tile_shit_4,x
	sta ram_00
	inx
	lda tile_shit_4,x
	sta ram_00+1
	ldx ram_55
	lda tile_shit_1,x
	sta ram_56
	ldx ram_55
	lda $e112,x
	sta ram_57
	ldy #$00
	ldx #$00
label_c505:
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda ram_57
	adc #$20
	sta ram_57
	lda ram_56
	adc #$00
	sta ram_56
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc

	if (cpy #$20 != equal)
		clc
		lda ram_57
		adc #$20
		sta ram_57
		lda ram_56
		adc #$00
		sta ram_56
		jmp label_c505
	endif

	rts
