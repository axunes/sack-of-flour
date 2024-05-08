.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c35e:
	jsr sub_dc6b
	jsr vsync
	jsr sub_dbc3
	jsr sub_dc26
	jsr vsync
	ldx #$00
	lda #$f5
:	
	sta ram_2a,x
	sta ram_32,x
	sta ram_42,x
	sta ram_4a,x
	sta ram_3a,x
	inx
	cpx #$08
	bne :-
	lda #$07
	sta ram_52
	lda #$0b
	sta ram_29
	jsr vsync
	lda #$07
	sta ram_52
label_c397:
	jsr vsync
	jsr sub_c4b4
	jsr vsync
	jsr sub_c5aa
	jsr vsync
	jsr sub_c6a0

	dec ram_52

	if (ram_52 <> #$ff) jmp label_c397
	lda #$00
	sta ram_52
label_c3c1:
	jsr vsync
	jsr sub_c706
	inc ram_52

	if (ram_52 <> #5) jmp label_c3c1
	
	jsr vsync
	jsr sub_c414
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
