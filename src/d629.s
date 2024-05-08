.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d629:
	if (ram_58 = #0) rts
	if (ram_58 >= #6) jmp label_d696

	lda player_chunk_pos
	clc
	adc #$05
	sta ram_52
	
	if (ram_58 = #1) jsr sub_c4b4
	if (ram_58 = #3) jsr sub_c5aa
	if (ram_58 = #4) jsr sub_c6a0
	if (ram_58 = #5) jsr sub_c706

	lda #0
	sta ram_58
	rts

label_d696:
	lda player_chunk_pos
	sec
	sbc #$01
	sta ram_52
	
	if (ram_58 = #6) jsr sub_c4b4
	if (ram_58 = #8) jsr sub_c5aa
	if (ram_58 = #9) jsr sub_c6a0
	if (ram_58 = #10) jsr sub_c706

	lda #0
	sta ram_58
	rts
