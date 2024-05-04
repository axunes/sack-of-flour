.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_ccfa:
	if (player_pos_x2 <> #0) jmp sub_d255

	lda player_pos_x1
	sec
	sbc #$01
	asl a
	asl a
	asl a
	sta ram_63
	lda #$7f
	sta temp
	lda player_position_y_again
	cmp temp
	bmi label_cd7b
	lda #$81
	sta temp
	lda player_position_y_again
	cmp temp
	bpl label_cd7b
	ldx ram_63
	lda $0200,x
	sta ram_67
	
	if (ram_67 & ram_54 <> #0) rts

	if (ram_12 <> #0) jmp sub_d255

	lda ram_63
	clc
	adc #$06
	tax
	lda collision_something_else,x
	sta ram_67

	if (ram_67 & ram_54 <> #0) rts

	jmp sub_d255
label_cd7b:
	lda #$7f
	sta temp
	lda player_position_y_again
	cmp temp
	bpl label_cde7
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
	sta ram_67

	if (ram_67 & ram_54 <> #0) rts

	if (ram_12 <> #0) jmp sub_d255

	lda ram_66
	sec
	sbc #$01
	tax
	lda collision_something_else,x
	sta ram_67

	if (ram_67 & ram_54 <> #0) rts

	jmp sub_d255
label_cde7:
	lda player_position_y_again
	clc
	adc #$90
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
	sta ram_67

	if (ram_67 & ram_54 <> #0) rts

	if (ram_12 <> #0) jmp sub_d255
	
	lda ram_66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_67

	if (ram_67 & ram_54 <> #0) rts

	jmp sub_d255
	rts
