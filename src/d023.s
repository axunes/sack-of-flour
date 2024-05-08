.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d023:
	if (player_health = #0)
		lda player_position_y_again
		clc
		adc ram_62
		sta player_position_y_again

		if (ram_62 <> #0)
			lda #$00
			sta player_fall_state
		endif

		if (player_velocity <= #$3c) inc player_velocity

		rts
	endif

	lda player_pos_x1
	asl a
	asl a
	asl a
	sta ram_63

	if (player_position_y_again & #$f8 = #$e8)
		lda player_position_y_again
		clc
		adc ram_62
		sta player_position_y_again
		rts
	endif

	if (player_position_y_again & #$f0 = #$f0)
		lda player_position_y_again
		clc
		adc ram_62
		sta player_position_y_again
		rts
	endif

	lda #$7f
	sta temp
	lda player_position_y_again
	cmp temp
	bmi :+
	jmp label_d144
:	lda player_position_y_again
	clc
	adc ram_62
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
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	jmp sub_d1e1
:	lda #$00
	sta ram_64
	lda #$04
	sta temp
	lda player_pos_x2
	cmp temp
	bmi :+
	beq :+
	lda ram_66
	clc
	adc #$08
	tax
	lda collision_something_else,x
	sta ram_64
:	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	jmp sub_d1e1
:	lda player_position_y_again
	clc
	adc ram_62
	sta player_position_y_again
	lda #$00
	sta temp
	lda ram_62
	cmp temp
	beq :+
	lda #$00
	sta player_fall_state
:	lda #$3c
	sta temp
	lda player_velocity
	cmp temp
	bpl :+
	inc player_velocity
:	lda #$00
	sta ram_5d
	rts

; penis bookmark

label_d144:
	lda player_position_y_again
	clc
	adc ram_62
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
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	jmp sub_d1e1
:	lda #$00
	sta ram_64
	lda #$04
	sta temp
	lda player_pos_x2
	cmp temp
	bmi :+
	beq :+
	lda ram_66
	clc
	adc #$08
	tax
	lda $0200,x
	sta ram_64
:	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	jmp sub_d1e1
:	lda player_position_y_again
	clc
	adc ram_62
	sta player_position_y_again
	lda #$00
	sta temp
	lda ram_62
	cmp temp
	beq :+
	lda #$00
	sta player_fall_state
:	lda #$3c
	sta temp
	lda player_velocity
	cmp temp
	bpl :+
	inc player_velocity
:	lda #$00
	sta ram_5d
	rts
sub_d1e1:
	lda #$02
	sta player_fall_state
	lda #$11
	sta temp
	lda player_velocity
	cmp temp
	bmi :+
	lda #$0c
	sta player_velocity
	rts
:	lda #$00
	sta player_velocity
	lda #$01
	sta ram_5d
	rts
