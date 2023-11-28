label_e5eb:
		lda #$00
		sta ram_8e
		lda #$00
		sta ram_8f
		lda #$1f
		sta APU_CHANCTRL
		lda #$00
		sta ram_90
		lda ram_07
		asl a
		asl a
		sta ram_91
		ldx ram_91
		lda music_start,x
		sta ram_88
		sta a: $02
		inx
		lda music_start,x
		sta ram_89
		sta music_pointer+1
		inx
		lda music_start,x
		sta ram_8a
		inx
		lda music_start,x
		sta ram_8b
		rts
label_e62c:
	iny
	lda (<music_pointer),y
	sta ram_8e
	clc
	lda music_pointer
	adc #$02
	sta music_pointer
	sta ram_8c
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	sta ram_8d
	jmp label_e679
label_e64c:
	dec ram_8e
	lda ram_8e
	cmp #$00
	beq :+
	lda ram_8c
	sta music_pointer
	lda ram_8d
	sta music_pointer+1
	jmp label_e679
:	clc
	lda music_pointer
	adc #$01
	sta music_pointer
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	jmp label_e679
label_e679:
	lda #$00
	sta temp
	lda ram_8f
	cmp temp
	beq :+
	dec ram_8f
	rts
:	ldy #$00
	lda (<music_pointer),y
	cmp #$ff
	beq label_e62c
	cmp #$fe
	beq label_e64c
	sta ram_8f
	iny
	lda (<music_pointer),y
	sta ram_90
	iny
	lda #$00
	sta temp
	lda ram_90
	and #$03
	cmp temp
	bne :+
	jmp label_e6dc
:	lda #$03
	sta temp
	lda ram_90
	and #$03
	cmp temp
	bne :+
	jmp :+
	; this is some music shit right here I can tell you that much
:	lda (<music_pointer),y
	sta APU_PULSE1CTRL
	iny
	lda (<music_pointer),y
	sta APU_PULSE1RAMP
	iny
	lda (<music_pointer),y
	sta APU_PULSE1FTUNE
	iny
	lda (<music_pointer),y
	sta APU_PULSE1CTUNE
	iny
label_e6dc:
	lda #$00
	sta temp
	lda ram_90
	and #$0c
	cmp temp
	bne :+
	jmp label_e718
:	lda #$0c
	sta temp
	lda ram_90
	and #$0c
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_PULSE2CTRL
	iny
	lda (<music_pointer),y
	sta APU_PULSE2RAMP
	iny
	lda (<music_pointer),y
	sta APU_PULSE2FTUNE
	iny
	lda (<music_pointer),y
	sta APU_PULSE2STUNE
	iny
label_e718:
	lda #$00
	sta temp
	lda ram_90
	and #$30
	cmp temp
	bne :+
	jmp label_e754
:	lda #$30
	sta temp
	lda ram_90
	and #$30
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_TRICTRL1
	iny
	lda (<music_pointer),y
	sta $4009
	iny
	lda (<music_pointer),y
	sta APU_TRIFREQ1
	iny
	lda (<music_pointer),y
	sta APU_TRIFREQ2
	iny
label_e754:
	lda #$00
	sta temp
	lda ram_90
	and #$c0
	cmp temp
	bne :+
	jmp label_e790
:	lda #$c0
	sta temp
	lda ram_90
	and #$c0
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_NOISECTRL
	iny
	lda (<music_pointer),y
	sta $400d
	iny
	lda (<music_pointer),y
	sta APU_NOISEFREQ1
	iny
	lda (<music_pointer),y
	sta APU_NOISEFREQ2
	iny
label_e790:
	tya
	sta ram_11
	clc
	lda music_pointer
	adc ram_11
	sta music_pointer
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	clc
	lda music_pointer
	cmp ram_8a
	bne :+
	lda music_pointer+1
	cmp ram_8b
	bne :+
	lda ram_88
	sta music_pointer
	lda ram_89
	sta music_pointer+1
:	rts
	init_enemies:
		; set all enemy type slots to zero
		ldx #$00
		lda #EnemyType::none
		sta enemy_type,x
		ldx #$01
		lda #EnemyType::none
		sta enemy_type,x
		ldx #$02
		lda #EnemyType::none
		sta enemy_type,x
		ldx #$03
		lda #EnemyType::none
		sta enemy_type,x
		ldx #$04
		lda #EnemyType::none
		sta enemy_type,x
		ldx #$05
		lda #EnemyType::none
		sta enemy_type,x
		lda #$05
		sta ram_b0
		rts
label_e7f4:
	lda #$00
	sta idx
label_e7f9:
	ldx idx
	lda #$00
	sta enemy_type,x
	inc idx
	lda ram_b0
	sta temp
	lda idx
	cmp temp
	bpl :+
	jmp label_e7f9
:	rts
label_e816:
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
	lda ram_b0
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
	jsr label_d5c3
	rts
label_e8ed: ; process enemies
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
	jsr label_e960
:	lda #$03
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr label_e960
:	lda #$04
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr label_ec12
:	lda #$06
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr label_edca
:	lda #$08
	sta temp
	lda ram_b1
	cmp temp
	bne :+
	jsr label_e960
:	lda ram_b0
	sta temp
	lda which_enemy
	cmp temp
	bpl :+
	jmp label_e8f2
:	rts
label_e960:
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
	jsr label_f2cd
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
	jsr label_f083
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
	jsr label_f193
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
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_6b
	lda #$00
	sta temp
	lda ram_1b
	and #$10
	cmp temp
	beq :+
	lda #$42
	sta ram_6d
	jmp label_f44f
	rts
:	jmp label_f3db
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
	sta ram_11
	pla
	clc
	adc ram_11
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
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_6b
	jmp label_f4f5
label_ec11:
	rts
label_ec12:
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
	jsr label_f2cd
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
	jsr label_f083
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
	jsr label_f193
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
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_6b
	lda #$01
	sta temp
	lda ram_b3
	cmp temp
	bne :+
	lda #$40
	sta ram_6d
	jmp label_f44f
	rts
:	jmp label_f3db
label_edc1:
	lda #$f5
	sta ram_6c
	jmp label_f3db
	rts
label_edca:
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
:	jsr label_f29b
	jsr label_f29b
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
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_6b
	jmp label_f52f
label_ee74:
	rts
	purge_enemy:
		ldx which_enemy
		lda #$00
		sta enemy_type,x
		rts
label_ee7e:
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
	sta ram_11
	pla
	clc
	adc ram_11
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
	lda ram_b0
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
	jsr label_ca72
	rts
label_f063:
	jsr label_ca72
	rts
label_f067:
	ldx which_enemy
	lda #$00
	sta enemy_type,x
	; collect heart
	inc player_health

	; if player health becomes 6, decrement to max health of 5
	lda #MAX_HEALTH + 1
	sta temp
	lda player_health
	cmp temp
	bne :+
	dec player_health
:	rts
label_f083:
	lda #$02
	sta temp
	lda ram_b5
	cmp temp
	bpl :+
	jmp label_f2b4
:	lda #$08
	pha
	lda ram_b4
	asl a
	asl a
	asl a
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_63
	lda ram_b6
	and #$0f
	sta ram_ba
	lda #$7f
	sta temp
	lda ram_b6
	cmp temp
	bpl label_f126
	lda ram_b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda ram_63
	clc
	adc ram_65
	tax
	lda collision_something_else,x
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3c9
:	lda #$0f
	sta temp
	lda ram_ba
	cmp temp
	bne :+
	jmp label_f2b4
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta ram_11
	pla
	clc
	adc ram_11
	tax
	lda collision_something_else,x
	sta ram_bb
	lda #$00
	sta temp
	lda ram_bb
	and ram_54
	cmp temp
	beq :+
	jmp label_f3c9
:	jmp label_f2b4
label_f126:
	lda ram_b6
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
	tax
	lda $0200,x
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3c9
:	lda #$0f
	sta temp
	lda ram_ba
	cmp temp
	bne :+
	jmp label_f2b4
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta ram_11
	pla
	clc
	adc ram_11
	tax
	lda $0200,x
	sta ram_bb
	lda #$00
	sta temp
	lda ram_bb
	and ram_54
	cmp temp
	beq :+
	jmp label_f3c9
:	jmp label_f2b4
label_f193:
	lda #$00
	sta temp
	lda ram_b5
	cmp temp
	beq :+
	jmp label_f29b
:	lda ram_b4
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta ram_63
	lda ram_b6
	and #$0f
	sta ram_ba
	lda #$7f
	sta temp
	lda ram_b6
	cmp temp
	bpl label_f22e
	lda ram_b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda ram_63
	clc
	adc ram_65
	tax
	lda collision_something_else,x
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3cf
:	lda #$0f
	sta temp
	lda ram_ba
	cmp temp
	bne :+
	jmp label_f29b
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta ram_11
	pla
	clc
	adc ram_11
	tax
	lda collision_something_else,x
	sta ram_bb
	lda #$00
	sta temp
	lda ram_bb
	and ram_54
	cmp temp
	beq :+
	jmp label_f3cf
:	jmp label_f29b
label_f22e:
	lda ram_b6
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
	tax
	lda $0200,x
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3cf
:	lda #$0f
	sta temp
	lda ram_ba
	cmp temp
	bne :+
	jmp label_f29b
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta ram_11
	pla
	clc
	adc ram_11
	tax
	lda $0200,x
	sta ram_bb
	lda #$00
	sta temp
	lda ram_bb
	and ram_54
	cmp temp
	beq :+
	jmp label_f3cf
:	jmp label_f29b
label_f29b:
	dec ram_b5
	lda #$ff
	sta temp
	lda ram_b5
	cmp temp
	bne :+
	lda #$0f
	sta ram_b5
	dec ram_b4
:	rts
label_f2b4:
	inc ram_b5
	lda #$10
	sta temp
	lda ram_b5
	cmp temp
	bne :+
	lda #$00
	sta ram_b5
	inc ram_b4
:	rts
label_f2cd:
	lda ram_b4
	asl a
	asl a
	asl a
	sta ram_63
	lda #$7f
	sta temp
	lda ram_b6
	cmp temp
	bpl label_f350
	beq label_f350
	lda ram_b6
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
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3d5
:	lda #$00
	sta ram_bb
	lda #$04
	sta temp
	lda ram_b5
	cmp temp
	bmi :+
	beq :+
	lda ram_66
	clc
	adc #$08
	tax
	lda collision_something_else,x
	sta ram_bb
:	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	jmp label_f3d5
:	jmp label_f3be
label_f350:
	lda ram_b6
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
	sta ram_86
	lda #$00
	sta temp
	lda ram_86
	and ram_54
	cmp temp
	beq :+
	jmp label_f3d5
:	lda #$00
	sta ram_bb
	lda #$04
	sta temp
	lda ram_b5
	cmp temp
	bmi :+
	beq :+
	lda ram_66
	clc
	adc #$08
	tax
	lda $0200,x
	sta ram_bb
:	lda #$00
	sta temp
	lda ram_bb
	and ram_54
	cmp temp
	beq :+
	jmp label_f3d5
:	jmp label_f3be
label_f3be:
	lda ram_b6
	clc
	adc ram_62
	sta ram_b6
	rts
label_f3c9:
	lda #$01
	sta ram_64
	rts
label_f3cf:
	lda #$01
	sta ram_67
	rts
label_f3d5:
	lda #$01
	sta ram_b7
	rts
label_f3db:
	ldx ram_22
	lda ram_6c
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda ram_6e
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda ram_6b
	sta $0300,x
	lda #$04
	clc
	adc ram_22
	tax
	lda ram_6c
	sta $0300,x
	lda #$05
	clc
	adc ram_22
	tax
	lda ram_6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$07
	clc
	adc ram_22
	tax
	lda ram_6b
	clc
	adc #$08
	sta $0300,x
	lda ram_22
	clc
	adc #$08
	sta ram_22
	rts
label_f44f:
	ldx ram_22
	lda ram_6c
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda ram_6e
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda #$08
	clc
	adc ram_6b
	sta $0300,x
	lda #$04
	clc
	adc ram_22
	tax
	lda ram_6c
	sta $0300,x
	lda #$05
	clc
	adc ram_22
	tax
	lda ram_6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$07
	clc
	adc ram_22
	tax
	lda ram_6b
	sta $0300,x
	lda ram_22
	clc
	adc #$08
	sta ram_22
	rts
label_f4c3:
	jsr label_f3db
	lda ram_6c
	clc
	adc #$10
	sta ram_6c
	lda ram_6e
	clc
	adc #$04
	sta ram_6e
	jsr label_f3db
	rts
label_f4dc:
	jsr label_f44f
	lda ram_6c
	clc
	adc #$10
	sta ram_6c
	lda ram_6e
	clc
	adc #$04
	sta ram_6e
	jsr label_f44f
	rts
label_f4f5:
	ldx ram_22
	lda ram_6c
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda ram_6e
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda ram_6b
	sta $0300,x
	lda ram_22
	clc
	adc #$04
	sta ram_22
	rts
label_f52f:
	ldx ram_22
	lda ram_6c
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda ram_6e
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda ram_6b
	sec
	sbc #$08
	sta $0300,x
	lda #$04
	clc
	adc ram_22
	tax
	lda ram_6c
	sta $0300,x
	lda #$05
	clc
	adc ram_22
	tax
	lda ram_6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$07
	clc
	adc ram_22
	tax
	lda ram_6b
	sta $0300,x
	lda #$08
	clc
	adc ram_22
	tax
	lda ram_6c
	sta $0300,x
	lda #$09
	clc
	adc ram_22
	tax
	lda ram_6e
	clc
	adc #$04
	sta $0300,x
	lda #$0a
	clc
	adc ram_22
	tax
	lda ram_6d
	sta $0300,x
	lda #$0b
	clc
	adc ram_22
	tax
	lda ram_6b
	clc
	adc #$08
	sta $0300,x
	lda ram_22
	clc
	adc #$0c
	sta ram_22
	rts
	label_f5dd:
	jsr label_db80
	jsr label_db8e
	jsr label_c31d
	jsr label_dbc3
	jsr label_dbda
	jsr label_db8e
	jsr label_db8e
	jsr label_f6d3
	lda #$00
	sta ram_bc
	lda #$5a
	sta ram_bd
	lda #$56
	sta ram_be
	lda #$ff
	sta ram_bf
	lda #$01
	sta ram_c0
	lda #$00
	sta konami_code_correct_presses
	lda #$00
	sta ram_5c
	lda #$00
	sta konami_code_active
label_f61d:
	jsr label_f7e2
	jsr label_f7ee
	jsr label_f7e8
	jsr label_f7e2
	jsr label_f7ee
	lda #$00
	sta temp
	lda konami_code_active
	cmp temp
	beq label_f698
	jsr label_f6e9
	lda ram_be
	clc
	adc ram_bf
	sta ram_be
	lda ram_bd
	clc
	adc ram_c0
	sta ram_bd
	lda #$32
	sta temp
	lda ram_be
	cmp temp
	bne :+
	lda #$01
	sta ram_bf
:	lda #$82
	sta temp
	lda ram_be
	cmp temp
	bne :+
	lda #$ff
	sta ram_bf
:	lda #$46
	sta temp
	lda ram_bd
	cmp temp
	bne :+
	lda #$01
	sta ram_c0
:	lda #$6e
	sta temp
	lda ram_bd
	cmp temp
	bne label_f698
	lda #$ff
	sta ram_c0
label_f698:
	lda ram_04
	clc
	adc #$03
	sta ram_04
	lda ram_05
	clc
	adc #$07
	sta ram_05
	jsr label_f836
	lda #$00
	sta temp
	lda button_select_down
	cmp temp
	beq :+
	lda #$01
	sta konami_code_active
:	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp label_f6d2
:	jmp label_f61d
label_f6d2:
	rts
label_f6d3:
	jsr label_dc26
	jsr label_db8e
	jsr label_f71c
	jsr label_db8e
	jsr label_f7a8
	jsr label_db8e
	jsr label_db8e
	rts
label_f6e9:
	; FIXME
	lda #$00
	sta $2003
	ldy #$f0
	lda ram_bd
	sta player_offset_x
:	lda ram_be
	sta $2004
	inx
	tya
	sta $2004
	inx
	lda #$20
	sta $2004
	inx
	lda player_offset_x
	sta $2004
	clc
	adc #$08
	sta player_offset_x
	inx
	iny
	iny
	cpy #$00
	bne :-
	rts
label_f71c:
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$c4
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne :-
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$44
	sta PPU_VRAM_ADDR2
	ldx #$80
:	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$b9
	bne :-
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$ab
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda $e36b,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne :-
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$c9
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda $e3eb,x
	sta PPU_VRAM_IO
	inx
	cpx #$0d
	bne :-
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$c0
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda #$00
:	sta PPU_VRAM_IO
	inx
	cpx #$18
	bne :-
	lda #$55
:	sta PPU_VRAM_IO
	inx
	cpx #$40
	bne :-
	rts
label_f7a8:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta ram_66
label_f7b7:
	ldx ram_66
	lda $e23a,x
	sta PPU_VRAM_IO
	inc ram_66
	lda #$1f
	sta temp
	lda ram_66
	cmp temp
	bpl :+
	jmp label_f7b7
:	rts
	; FIXME
	ldy ram_11
	lda #$00
:	sta $2007
	dey
	cpy #$00
	bne :-
	rts
label_f7e2:
:	lda PPU_STATUS
	bpl :-
	rts
label_f7e8:
:	lda PPU_STATUS
	bmi :-
	rts
label_f7ee:
:	lda PPU_STATUS
	and #$10
	bne :-
	ldy #$c8
label_f7f7:
:	lda PPU_STATUS
	and #$10
	bne :-
	lda #$00
	sta PPU_VRAM_ADDR1
	sta PPU_VRAM_ADDR1
	dey
	cpy #$00
	bne :-
	ldx title_screen_wave_timer
	ldy #$ff
:	lda PPU_STATUS
	and #$10
	bne :-
	lda $e4eb,x
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	inx
	dey
	cpy #$00
	bne :-
	inc title_screen_wave_timer
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
label_f836:
	jsr label_f8b1
	lda #$0a
	sta temp
	lda konami_code_correct_presses
	cmp temp
	bmi label_f85d
	lda #$00
	sta temp
	lda ram_5c
	cmp temp
	beq :+
	rts
:	lda #$01
	sta ram_5c
	jsr label_d5d8
	rts
label_f85d:
	lda #$00
	sta temp
	lda konami_code_correct_button_down
	cmp temp
	beq :+
	lda #$00
	sta temp
	lda button_mask
	cmp temp
	bne :+
	lda #$00
	sta konami_code_correct_button_down
	inc konami_code_correct_presses
	rts
:	lda #$00
	sta temp
	lda button_mask
	cmp temp
	bne :+
	rts
:	ldx konami_code_correct_presses
	lda konami_code_values,x
	sta ram_c5
	lda ram_c5
	sta temp
	lda button_mask
	cmp temp
	bne :+
	lda #$01
	sta konami_code_correct_button_down
	rts
:	lda #$00
	sta konami_code_correct_presses
	rts
label_f8b1:
	jsr get_controller_buttons
	lda button_a_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_b_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_up_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_down_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_left_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_right_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_select_down
	sta button_mask
	lda button_mask
	asl a
	clc
	adc button_start_down
	sta button_mask
	rts
