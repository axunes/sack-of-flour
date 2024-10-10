.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGF"

; is kinda chunky doe

init_enemies:
	; set all enemy type slots to zero
	ldx #0
	lda #EnemyType::none
	sta enemy_type,x
	ldx #1
	lda #EnemyType::none
	sta enemy_type,x
	ldx #2
	lda #EnemyType::none
	sta enemy_type,x
	ldx #3
	lda #EnemyType::none
	sta enemy_type,x
	ldx #4
	lda #EnemyType::none
	sta enemy_type,x
	ldx #5
	lda #EnemyType::none
	sta enemy_type,x

	lda #5
	sta num_enemy_slots
	rts

reset_enemies:
	for (lda #0 : sta idx, idx <= num_enemy_slots, inc idx)
		ldx idx
		lda #0
		sta enemy_type, x
	next
	rts

sub_e816:
	lda #$01
	sta temp
	lda ram_04
	cmp temp
	beq :+
	rts
:	lda #$00
	sta idx
label_e829:
	ldx idx
	lda enemy_type,x
	sta ram_b1
	lda #$00
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_e85e
:	inc idx
	lda num_enemy_slots
	sta temp
	lda idx
	cmp temp
	bpl :+
	beq :+
	jmp label_e829
	; FIXME
:	rts
	lda #$00
	sta idx
label_e85e:
	lda ram_05
	and #$0f
	sta ram_b1
	ldx ram_b1
	lda $8060,x
	sta ram_b1
	lda #$06
	sta temp
	lda ram_b1
	cmp temp
	bne spawn_enemy
	jmp :+
	spawn_enemy:
		ldx idx
		lda ram_b1
		sta enemy_type,x
		ldx idx
		lda #$07
		sta enemy_pos_y,x
		ldx idx
		lda #$00
		sta enemy_pos_x2,x
		ldx idx
		lda player_pos_x1
		clc
		adc #$05
		sta enemy_pos_x,x
		ldx idx
		lda #$ff
		sta ram_aa,x
		inc ram_04
		rts
	:
		lda #$00
		sta temp
		lda player_position_y_again
		and #$f0
		cmp temp
		bne :+
		rts
:	ldx idx
	lda ram_b1
	sta enemy_type,x
	ldx idx
	lda player_position_y_again
	sec
	sbc #$11
	sta enemy_pos_y,x
	ldx idx
	lda #$00
	sta enemy_pos_x2,x
	ldx idx
	lda player_pos_x1
	clc
	adc #$0a
	sta enemy_pos_x,x
	jsr sub_d5c3
	rts
sub_e8ed: ; process enemies
	lda #$ff
	sta which_enemy
label_e8f2:
	inc which_enemy
	ldx which_enemy
	lda enemy_type,x
	sta ram_b1
	lda #$02
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr sub_e960
:	lda #$03
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr sub_e960
:	lda #$04
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr sub_ec12
:	lda #$06
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr sub_edca
:	lda #$08
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr sub_e960
:	lda num_enemy_slots
	sta temp
	lda which_enemy
	cmp temp
	bpl :+
	jmp label_e8f2
:	rts
sub_e960:
	ldx which_enemy
	lda ram_aa,x
	sta ram_b3
	ldx which_enemy
	lda enemy_pos_x,x
	sta ram_b4
	ldx which_enemy
	lda enemy_pos_x2,x
	sta ram_b5
	ldx which_enemy
	lda enemy_pos_y,x
	sta ram_b6
	lda ram_b4
	clc
	adc #$02
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bmi :+
	jmp purge_enemy
:	lda ram_b4
	sta temp
	lda player_chunk_pos_again
	clc
	adc #$12
	cmp temp
	bpl :+
	jmp purge_enemy
:	lda #$00
	sta ram_b7
	lda #$03
	sta ram_62
	jsr sub_f2cd
	lda #$00
	sta temp
	lda ram_1b
	and #$01
	cmp temp
	beq :+
	jmp label_ea9f
:	lda #$ff
	sta temp
	lda ram_b3
	cmp temp
	bne label_e9ed
	lda #$01
	sta temp
	lda ram_b7
	cmp temp
	bne :+
	lda #$02
	sta ram_b3
:	jmp label_ea41
label_e9ed:
	lda #$01
	sta temp
	lda ram_b3
	cmp temp
	bne label_ea17
	lda #$00
	sta ram_64
	jsr sub_f083
	lda #$00
	sta temp
	lda ram_64
	cmp temp
	beq :+
	lda #$02
	sta ram_b3
:	jmp label_ea41
label_ea17:
	lda #$02
	sta temp
	lda ram_b3
	cmp temp
	bne label_ea41
	lda #$00
	sta ram_67
	jsr sub_f193
	lda #$00
	sta temp
	lda ram_67
	cmp temp
	beq :+
	lda #$01
	sta ram_b3
:	jmp label_ea41
label_ea41:
	lda #$fc
	sta temp
	lda ram_b6
	and #$fc
	cmp temp
	bne :+
	jmp purge_enemy
:	lda ram_b4
	clc
	adc #$05
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bmi :+
	jmp purge_enemy
:	lda ram_b4
	sta temp
	lda player_chunk_pos_again
	clc
	adc #$15
	cmp temp
	bpl :+
	jmp purge_enemy
:	ldx which_enemy
	lda ram_b3
	sta ram_aa,x
	ldx which_enemy
	lda ram_b4
	sta enemy_pos_x,x
	ldx which_enemy
	lda ram_b5
	sta enemy_pos_x2,x
	ldx which_enemy
	lda ram_b6
	sta enemy_pos_y,x
label_ea9f:
	lda #$08
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_ebb7
:	lda #$03
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_eb32
:	lda #$02
	sta ram_6d
	lda #$0a
	sta ram_6e
	lda player_chunk_pos_again
	sta temp
	lda ram_b4
	cmp temp
	bmi label_eb31
	beq label_eb31
	lda player_chunk_pos_again
	clc
	adc #$10
	sta temp
	lda ram_b4
	cmp temp
	bpl label_eb31
	beq label_eb31
	ldx which_enemy
	lda enemy_pos_y,x
	sec
	sbc #$10
	sta ram_6c
	lda ram_b4
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_b5
	sec
	sbc player_chunk_pos_fine_again
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	sta ram_6b
	lda #$00
	sta temp
	lda ram_1b
	and #$10
	cmp temp
	beq :+
	lda #$42
	sta ram_6d
	jmp sub_f44f ; weird
	rts
:	jmp sub_f3db ; weird
label_eb31:
	rts
label_eb32:
	lda player_chunk_pos_again
	sta temp
	lda ram_b4
	cmp temp
	bmi label_ebb6
	beq label_ebb6
	lda player_chunk_pos_again
	clc
	adc #$10
	sta temp
	lda ram_b4
	cmp temp
	bpl label_ebb6
	beq label_ebb6
	lda #$00
	sta ram_6d
	lda #$40
	sta ram_6e
	lda #$00
	sta temp
	lda ram_1b
	and #$10
	cmp temp
	beq :+
	lda #$48
	sta ram_6e
:	ldx which_enemy
	lda enemy_pos_y,x
	sec
	sbc #$20
	sta ram_6c
	lda ram_b4
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_b5
	sec
	sbc player_chunk_pos_fine_again
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	sta ram_6b
	lda #$01
	sta temp
	lda ram_b3
	cmp temp
	bne :+
	lda #$40
	sta ram_6d
	jmp label_f4dc
	rts
:	jmp label_f4c3
label_ebb6:
	rts
label_ebb7:
	lda #$02
	sta ram_6d
	lda #$02
	sta ram_6e
	lda player_chunk_pos_again
	sta temp
	lda ram_b4
	cmp temp
	bmi label_ec11
	beq label_ec11
	lda player_chunk_pos_again
	clc
	adc #$10
	sta temp
	lda ram_b4
	cmp temp
	bpl label_ec11
	beq label_ec11
	ldx which_enemy
	lda enemy_pos_y,x
	sec
	sbc #$10
	sta ram_6c
	lda ram_b4
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_b5
	sec
	sbc player_chunk_pos_fine_again
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	sta ram_6b
	jmp sub_f4f5 ; weird
label_ec11:
	rts
sub_ec12:
	ldx which_enemy
	lda ram_aa,x
	sta ram_b3
	ldx which_enemy
	lda enemy_pos_x,x
	sta ram_b4
	ldx which_enemy
	lda enemy_pos_x2,x
	sta ram_b5
	ldx which_enemy
	lda enemy_pos_y,x
	sta ram_b6
	lda ram_b4
	clc
	adc #$02
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bmi :+
	jmp purge_enemy
:	lda ram_b4
	sta temp
	lda player_chunk_pos_again
	clc
	adc #$12
	cmp temp
	bpl :+
	jmp purge_enemy
:	lda #$00
	sta ram_b7
	lda #$02
	sta ram_62
	jsr sub_f2cd
	lda #$ff
	sta temp
	lda ram_b3
	cmp temp
	bne label_ec8d
	lda #$01
	sta temp
	lda ram_b7
	cmp temp
	bne :+
	lda #$01
	sta ram_b3
:	jmp label_ed11
label_ec8d:
	lda player_pos_x1
	sta temp
	lda ram_b4
	clc
	adc #$02
	cmp temp
	bpl :+
	beq :+
	lda #$01
	sta ram_b3
:	lda player_pos_x1
	sta temp
	lda ram_b4
	sec
	sbc #$02
	cmp temp
	bmi :+
	beq :+
	lda #$02
	sta ram_b3
:	lda #$01
	sta temp
	lda ram_b3
	cmp temp
	bne label_ece7
	lda #$00
	sta ram_64
	jsr sub_f083
	lda #$00
	sta temp
	lda ram_64
	cmp temp
	beq :+
	lda #$02
	sta ram_b3
:	jmp label_ed11
label_ece7:
	lda #$02
	sta temp
	lda ram_b3
	cmp temp
	bne label_ed11
	lda #$00
	sta ram_67
	jsr sub_f193
	lda #$00
	sta temp
	lda ram_67
	cmp temp
	beq :+
	lda #$01
	sta ram_b3
:	jmp label_ed11
label_ed11:
	lda #$fc
	sta temp
	lda ram_b6
	and #$fc
	cmp temp
	bne :+
	jmp purge_enemy
:	ldx which_enemy
	lda ram_b3
	sta ram_aa,x
	ldx which_enemy
	lda ram_b4
	sta enemy_pos_x,x
	ldx which_enemy
	lda ram_b5
	sta enemy_pos_x2,x
	ldx which_enemy
	lda ram_b6
	sta enemy_pos_y,x
	lda #$00
	sta ram_6d
	lda ram_1b
	and #$0c
	sta ram_6e
	lda ram_6e
	clc
	adc #$0e
	sta ram_6e
	lda player_chunk_pos_again
	sta temp
	lda ram_b4
	cmp temp
	bmi label_edc1
	lda player_chunk_pos_again
	clc
	adc #$10
	sta temp
	lda ram_b4
	cmp temp
	bpl label_edc1
	beq label_edc1
	ldx which_enemy
	lda enemy_pos_y,x
	sec
	sbc #$10
	sta ram_6c
	lda ram_b4
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_b5
	sec
	sbc player_chunk_pos_fine_again
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	sta ram_6b
	lda #$01
	sta temp
	lda ram_b3
	cmp temp
	bne :+
	lda #$40
	sta ram_6d
	jmp sub_f44f ; weird
	rts
:	jmp sub_f3db ; weird
label_edc1:
	lda #$f5
	sta ram_6c
	jmp sub_f3db ; weird
	rts
sub_edca:
	ldx which_enemy
	lda ram_aa,x
	sta ram_b3
	ldx which_enemy
	lda enemy_pos_x,x
	sta ram_b4
	ldx which_enemy
	lda enemy_pos_x2,x
	sta ram_b5
	ldx which_enemy
	lda enemy_pos_y,x
	sta ram_b6
	lda ram_b4
	clc
	adc #$02
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bmi :+
	jmp purge_enemy
:	jsr sub_f29b
	jsr sub_f29b
	ldx which_enemy
	lda ram_b4
	sta enemy_pos_x,x
	ldx which_enemy
	lda ram_b5
	sta enemy_pos_x2,x
	lda player_chunk_pos_again
	sta temp
	lda ram_b4
	cmp temp
	bmi label_ee74
	beq label_ee74
	lda player_chunk_pos_again
	clc
	adc #$10
	sta temp
	lda ram_b4
	cmp temp
	bpl label_ee74
	beq label_ee74
	lda #$02
	sta ram_6d
	lda #$04
	sta ram_6e
	ldx which_enemy
	lda enemy_pos_y,x
	sec
	sbc #$10
	sta ram_6c
	lda ram_b4
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_b5
	sec
	sbc player_chunk_pos_fine_again
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	sta ram_6b
	jmp label_f52f
label_ee74:
	rts
	purge_enemy:
		ldx which_enemy
		lda #$00
		sta enemy_type,x
		rts
sub_ee7e:
	lda #$00
	sta which_enemy
label_ee83:
	ldx which_enemy
	lda enemy_type,x
	sta ram_b1
	lda #$00
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_f015
:	ldx which_enemy
	lda enemy_pos_y,x
	sta ram_b6
	lda #$0e
	sta ram_b8
	lda #$08
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	lda #$08
	sta ram_b8
:	lda #$03
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	lda #$16
	sta ram_b8
:	lda player_position_y_again
	sta temp
	lda ram_b6
	sec
	sbc ram_b8
	cmp temp
	bmi :+
	jmp label_f015
:	lda ram_b6
	sta temp
	lda player_position_y_again
	sec
	sbc #$18
	cmp temp
	bmi :+
	jmp label_f015
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	lda ram_b6
	sta temp
	lda player_position_y_again
	sec
	sbc #$10
	cmp temp
	bmi :+
	jmp label_f015
:	lda #$00
	sta ram_b9
	lda #$00
	sta ram_b7
	ldx which_enemy
	lda enemy_pos_x,x
	sta ram_b4
	ldx which_enemy
	lda enemy_pos_x2,x
	sta ram_b5
	lda player_pos_x1
	sta temp
	lda ram_b4
	cmp temp
	bne :+
	lda #$01
	sta ram_b9
:	lda ram_b4
	sta temp
	lda player_pos_x1
	clc
	adc #$01
	cmp temp
	bne :+
	lda player_pos_x2
	sta temp
	lda ram_b5
	cmp temp
	bpl :+
	beq :+
	lda #$01
	sta ram_b9
:	lda player_pos_x1
	sta temp
	lda ram_b4
	clc
	adc #$01
	cmp temp
	bne :+
	lda ram_b5
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	beq :+
	lda #$01
	sta ram_b9
:	lda #$00
	sta temp
	lda ram_b9
	cmp temp
	bne :+
	jmp label_f015
:	lda ram_b6
	sta temp
	lda player_position_y_again
	pha
	lda ram_b8
	sec
	sbc #$05
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
	cmp temp
	bpl :+
	lda #$01
	sta ram_b7
:	lda #$08
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_f067
:	lda #$02
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_f02d
:	lda #$03
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_f02d
:	lda #$04
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jmp label_f02d
:	lda #$06
	sta temp
	lda ram_b1
	cmp temp
	bne label_f015
	jmp label_f063
label_f015:
	inc which_enemy
	lda num_enemy_slots
	clc
	adc #$01
	sta temp
	lda which_enemy
	cmp temp
	bpl :+
	jmp label_ee83
:	rts
label_f02d:
	lda #$00
	sta temp
	lda ram_b7
	cmp temp
	beq label_f05f
	ldx which_enemy
	lda #$00
	sta enemy_type,x
	lda #$01
	sta player_fall_state
	lda #$14
	sta player_velocity
	lda #$00
	sta temp
	lda button_a_down
	cmp temp
	beq :+
	lda #$37
	sta player_velocity
:	rts
label_f05f:
	jsr sub_ca72
	rts
label_f063:
	jsr sub_ca72
	rts
