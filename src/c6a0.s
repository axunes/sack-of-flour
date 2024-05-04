.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c6a0:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_3a,x
	sta ram_11
	
	if (ram_11 = ram_52) rts
	
	ldx ram_55
	lda ram_52
	sta ram_3a,x
	ldx ram_55
	lda tile_shit_3,x
	sta ram_56
	ldx ram_55
	lda $e132,x
	sta ram_57
	ldy #$3c
label_c6dd:
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	iny

	if (cpy #$4c != equal)
		clc
		lda ram_57
		adc #$08
		sta ram_57
		jmp label_c6dd
	endif

	rts
