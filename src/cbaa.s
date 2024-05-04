.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_cbaa:
	lda #$03
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	jmp sub_d204 ; weird
:	lda player_pos_x1
	asl a
	asl a
	asl a
	clc
	adc #$08
	sta ram_63
	lda #$7f
	sta temp
	lda player_position_y_again
	cmp temp
	bmi label_cc2b
	lda #$81
	sta temp
	lda player_position_y_again
	cmp temp
	bpl label_cc2b
	ldx ram_63
	lda $0200,x
	sta ram_64
	
	if (ram_64 & ram_54 <> #0) rts
	
	if (ram_12 <> #0) jmp sub_d204
	
	lda ram_63
	clc
	adc #$06
	tax
	lda collision_something_else,x
	sta ram_64

	if (ram_64 & ram_54 <> #0) rts
	
	jmp sub_d204
label_cc2b:
	lda #$7f
	sta temp
	lda player_position_y_again
	cmp temp
	bpl label_cc97
	lda player_position_y_again
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda ram_63
	clc
	adc ram_65
	sta ram_66
	ldx ram_66
	lda collision_something_else,x
	sta ram_64

	if (ram_64 & ram_54 <> #0) rts

	if (ram_12 <> #0) jmp sub_d204

	lda ram_66
	sec
	sbc #$01
	tax
	lda collision_something_else,x
	sta ram_64

	if (ram_64 & ram_54 <> #0) rts
	
	jmp sub_d204
label_cc97:
	lda player_position_y_again
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda ram_63
	clc
	adc ram_65
	sta ram_66
	ldx ram_66
	lda $0200,x
	sta ram_64

	if (ram_64 & ram_54 <> #0) rts

	if (ram_12 <> #0) jmp sub_d204

	lda ram_66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_64

	if (ram_64 & ram_54 <> #0) rts

	jsr sub_d204
	rts
