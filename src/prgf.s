label_e5eb:
		lda #$00
		sta a: $8e
		lda #$00
		sta a: $8f
		lda #$1f
		sta APU_CHANCTRL
		lda #$00
		sta a: $90
		lda a: $07
		asl a
		asl a
		sta a: $91
		ldx a: $91
		lda $8000,x
		sta a: $88
		sta a: music_pointer
		inx
		lda $8000,x
		sta a: $89
		sta a: $03
		inx
		lda $8000,x
		sta a: $8a
		inx
		lda $8000,x
		sta a: $8b
		rts
label_e62c:
	iny
	lda (music_pointer), y
	sta a: $8e
	clc
	lda a: music_pointer
	adc #$02
	sta a: music_pointer
	sta a: $8c
	lda a: $03
	adc #$00
	sta a: $03
	sta a: $8d
	jmp $e679
label_e64c:
	dec a: $8e
	lda a: $8e
	cmp #$00
	beq :+
	lda a: $8c
	sta a: music_pointer
	lda a: $8d
	sta a: $03
	jmp $e679
:	clc
	lda a: music_pointer
	adc #$01
	sta a: music_pointer
	lda a: $03
	adc #$00
	sta a: $03
	jmp $e679
	lda #$00
	sta a: temp
	lda a: $8f
	cmp a: temp
	beq :+
	dec a: $8f
	rts
:	ldy #$00
	lda (music_pointer), y
	cmp #$ff
	beq label_e62c
	cmp #$fe
	beq label_e64c
	sta a: $8f
	iny
	lda (music_pointer), y
	sta a: $90
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$03
	cmp a: temp
	bne :+
	jmp $e6dc
:	lda #$03
	sta a: temp
	lda a: $90
	and #$03
	cmp a: temp
	bne :+
	jmp :+
	; this is some music shit right here I can tell you that much
:	lda (music_pointer), y
	sta APU_PULSE1CTRL
	iny
	lda (music_pointer), y
	sta APU_PULSE1RAMP
	iny
	lda (music_pointer), y
	sta APU_PULSE1FTUNE
	iny
	lda (music_pointer), y
	sta APU_PULSE1CTUNE
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$0c
	cmp a: temp
	bne $e6ee
	jmp $e718
	lda #$0c
	sta a: temp
	lda a: $90
	and #$0c
	cmp a: temp
	bne :+
	jmp :+
:	lda (music_pointer), y
	sta APU_PULSE2CTRL
	iny
	lda (music_pointer), y
	sta APU_PULSE2RAMP
	iny
	lda (music_pointer), y
	sta APU_PULSE2FTUNE
	iny
	lda (music_pointer), y
	sta APU_PULSE2STUNE
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$30
	cmp a: temp
	bne :+
	jmp $e754
:	lda #$30
	sta a: temp
	lda a: $90
	and #$30
	cmp a: temp
	bne :+
	jmp :+
:	lda (music_pointer), y
	sta APU_TRICTRL1
	iny
	lda (music_pointer), y
	sta $4009
	iny
	lda (music_pointer), y
	sta APU_TRIFREQ1
	iny
	lda (music_pointer), y
	sta APU_TRIFREQ2
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$c0
	cmp a: temp
	bne :+
	jmp $e790
:	lda #$c0
	sta a: temp
	lda a: $90
	and #$c0
	cmp a: temp
	bne :+
	jmp :+
:	lda (music_pointer), y
	sta APU_NOISECTRL
	iny
	lda (music_pointer), y
	sta $400d
	iny
	lda (music_pointer), y
	sta APU_NOISEFREQ1
	iny
	lda (music_pointer), y
	sta APU_NOISEFREQ2
	iny
	tya
	sta a: $11
	clc
	lda a: music_pointer
	adc a: $11
	sta a: music_pointer
	lda a: $03
	adc #$00
	sta a: $03
	clc
	lda a: music_pointer
	cmp a: $8a
	bne :+
	lda a: $03
	cmp a: $8b
	bne :+
	lda a: $88
	sta a: music_pointer
	lda a: $89
	sta a: $03
:	rts
	init_enemies:
		; set all enemy type slots to zero
		ldx #$00
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$01
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$02
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$03
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$04
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$05
		lda #EnemyType::none
		sta a: enemy_type,x
		lda #$05
		sta a: $b0
		rts
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda #$00
	sta a: enemy_type,x
	inc a: $0e
	lda a: $b0
	sta a: temp
	lda a: $0e
	cmp a: temp
	bpl :+
	jmp $e7f9
:	rts
	lda #$01
	sta a: temp
	lda a: $04
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: $0e
	ldx a: $0e
	lda a: enemy_type,x
	sta a: $b1
	lda #$00
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jmp $e85e
:	inc a: $0e
	lda a: $b0
	sta a: temp
	lda a: $0e
	cmp a: temp
	bpl :+
	beq :+
	jmp $e829
	; FIXME
:	rts
	lda #$00
	sta a: $0e
	lda a: $05
	and #$0f
	sta a: $b1
	ldx a: $b1
	lda $8060,x
	sta a: $b1
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne spawn_enemy
	jmp :+
	spawn_enemy:
		ldx a: $0e
		lda a: $b1
		sta a: enemy_type,x
		ldx a: $0e
		lda #$07
		sta a: enemy_pos_y,x
		ldx a: $0e
		lda #$00
		sta a: enemy_pos_x2,x
		ldx a: $0e
		lda a: player_pos_x1
		clc
		adc #$05
		sta a: enemy_pos_x,x
		ldx a: $0e
		lda #$ff
		sta a: $aa,x
		inc a: $04
		rts
	:
		lda #$00
		sta a: temp
		lda a: $0c
		and #$f0
		cmp a: temp
		bne :+
		rts
:	ldx a: $0e
	lda a: $b1
	sta a: enemy_type,x
	ldx a: $0e
	lda a: $0c
	sec
	sbc #$11
	sta a: enemy_pos_y,x
	ldx a: $0e
	lda #$00
	sta a: enemy_pos_x2,x
	ldx a: $0e
	lda a: player_pos_x1
	clc
	adc #$0a
	sta a: enemy_pos_x,x
	jsr $d5c3
	rts
	lda #$ff
	sta a: $b2
	inc a: $b2
	ldx a: $b2
	lda a: enemy_type,x
	sta a: $b1
	lda #$02
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jsr $e960
:	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jsr $e960
:	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jsr $ec12
:	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jsr $edca
:	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jsr $e960
:	lda a: $b0
	sta a: temp
	lda a: $b2
	cmp a: temp
	bpl :+
	jmp $e8f2
:	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi :+
	jmp purge_enemy
:	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$12
	cmp a: temp
	bpl :+
	jmp purge_enemy
:	lda #$00
	sta a: $b7
	lda #$03
	sta a: $62
	jsr $f2cd
	lda #$00
	sta a: temp
	lda a: $1b
	and #$01
	cmp a: temp
	beq :+
	jmp $ea9f
:	lda #$ff
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_e9ed
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne :+
	lda #$02
	sta a: $b3
:	jmp $ea41
label_e9ed:
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ea17
	lda #$00
	sta a: $64
	jsr $f083
	lda #$00
	sta a: temp
	lda a: $64
	cmp a: temp
	beq :+
	lda #$02
	sta a: $b3
:	jmp label_ea41
label_ea17:
	lda #$02
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ea41
	lda #$00
	sta a: $67
	jsr $f193
	lda #$00
	sta a: temp
	lda a: $67
	cmp a: temp
	beq :+
	lda #$01
	sta a: $b3
:	jmp $ea41
label_ea41:
	lda #$fc
	sta a: temp
	lda a: $b6
	and #$fc
	cmp a: temp
	bne :+
	jmp purge_enemy
:	lda a: $b4
	clc
	adc #$05
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi :+
	jmp purge_enemy
:	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$15
	cmp a: temp
	bpl :+
	jmp purge_enemy
:	ldx a: $b2
	lda a: $b3
	sta a: $aa,x
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	ldx a: $b2
	lda a: $b6
	sta a: enemy_pos_y,x
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jmp $ebb7
:	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne :+
	jmp $eb32
:	lda #$02
	sta a: $6d
	lda #$0a
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi label_eb31
	beq label_eb31
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl label_eb31
	beq label_eb31
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$00
	sta a: temp
	lda a: $1b
	and #$10
	cmp a: temp
	beq :+
	lda #$42
	sta a: $6d
	jmp $f44f
	rts
:	jmp $f3db
label_eb31:
	rts
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi label_ebb6
	beq label_ebb6
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl label_ebb6
	beq label_ebb6
	lda #$00
	sta a: $6d
	lda #$40
	sta a: $6e
	lda #$00
	sta a: temp
	lda a: $1b
	and #$10
	cmp a: temp
	beq :+
	lda #$48
	sta a: $6e
:	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$20
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne :+
	lda #$40
	sta a: $6d
	jmp $f4dc
	rts
:	jmp $f4c3
label_ebb6:
	rts
	lda #$02
	sta a: $6d
	lda #$02
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi label_ec11
	beq label_ec11
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl label_ec11
	beq label_ec11
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	jmp $f4f5
label_ec11:
	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi :+
	jmp purge_enemy
:	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$12
	cmp a: temp
	bpl :+
	jmp purge_enemy
:	lda #$00
	sta a: $b7
	lda #$02
	sta a: $62
	jsr $f2cd
	lda #$ff
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ec8d
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne :+
	lda #$01
	sta a: $b3
:	jmp $ed11
label_ec8d:
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	clc
	adc #$02
	cmp a: temp
	bpl :+
	beq :+
	lda #$01
	sta a: $b3
:	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	sec
	sbc #$02
	cmp a: temp
	bmi :+
	beq :+
	lda #$02
	sta a: $b3
:	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ece7
	lda #$00
	sta a: $64
	jsr $f083
	lda #$00
	sta a: temp
	lda a: $64
	cmp a: temp
	beq :+
	lda #$02
	sta a: $b3
:	jmp $ed11
label_ece7:
	lda #$02
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ed11
	lda #$00
	sta a: $67
	jsr $f193
	lda #$00
	sta a: temp
	lda a: $67
	cmp a: temp
	beq :+
	lda #$01
	sta a: $b3
:	jmp label_ed11
label_ed11:
	lda #$fc
	sta a: temp
	lda a: $b6
	and #$fc
	cmp a: temp
	bne :+
	jmp purge_enemy
:	ldx a: $b2
	lda a: $b3
	sta a: $aa,x
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	ldx a: $b2
	lda a: $b6
	sta a: enemy_pos_y,x
	lda #$00
	sta a: $6d
	lda a: $1b
	and #$0c
	sta a: $6e
	lda a: $6e
	clc
	adc #$0e
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $edc1
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $edc1
	beq $edc1
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $edbe
	lda #$40
	sta a: $6d
	jmp $f44f
	rts
	jmp $f3db
	lda #$f5
	sta a: $6c
	jmp $f3db
	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi $ee02
	jmp purge_enemy
	jsr $f29b
	jsr $f29b
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $ee74
	beq $ee74
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $ee74
	beq $ee74
	lda #$02
	sta a: $6d
	lda #$04
	sta a: $6e
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	jmp $f52f
	rts
	purge_enemy:
		ldx a: $b2
		lda #$00
		sta a: enemy_type,x
		rts
	lda #$00
	sta a: $b2
	ldx a: $b2
	lda a: enemy_type,x
	sta a: $b1
	lda #$00
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $ee9c
	jmp $f015
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda #$0e
	sta a: $b8
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eebc
	lda #$08
	sta a: $b8
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eece
	lda #$16
	sta a: $b8
	lda a: $0c
	sta a: temp
	lda a: $b6
	sec
	sbc a: $b8
	cmp a: temp
	bmi $eee3
	jmp $f015
	lda a: $b6
	sta a: temp
	lda a: $0c
	sec
	sbc #$18
	cmp a: temp
	bmi $eef7
	jmp $f015
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $ef18
	lda a: $b6
	sta a: temp
	lda a: $0c
	sec
	sbc #$10
	cmp a: temp
	bmi $ef18
	jmp $f015
	lda #$00
	sta a: $b9
	lda #$00
	sta a: $b7
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	cmp a: temp
	bne $ef47
	lda #$01
	sta a: $b9
	lda a: $b4
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $ef6d
	lda a: player_pos_x2
	sta a: temp
	lda a: $b5
	cmp a: temp
	bpl $ef6d
	beq $ef6d
	lda #$01
	sta a: $b9
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	clc
	adc #$01
	cmp a: temp
	bne $ef93
	lda a: $b5
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $ef93
	beq $ef93
	lda #$01
	sta a: $b9
	lda #$00
	sta a: temp
	lda a: $b9
	cmp a: temp
	bne $efa3
	jmp $f015
	lda a: $b6
	sta a: temp
	lda a: $0c
	pha
	lda a: $b8
	sec
	sbc #$05
	sta a: $11
	pla
	clc
	adc a: $11
	cmp a: temp
	bpl $efc5
	lda #$01
	sta a: $b7
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $efd5
	jmp $f067
	lda #$02
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $efe5
	jmp $f02d
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eff5
	jmp $f02d
	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $f005
	jmp $f02d
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $f015
	jmp $f063
	inc a: $b2
	lda a: $b0
	clc
	adc #$01
	sta a: temp
	lda a: $b2
	cmp a: temp
	bpl $f02c
	jmp $ee83
	rts
	lda #$00
	sta a: temp
	lda a: $b7
	cmp a: temp
	beq $f05f
	ldx a: $b2
	lda #$00
	sta a: enemy_type,x
	lda #$01
	sta a: player_fall_state
	lda #$14
	sta a: player_velocity
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq $f05e
	lda #$37
	sta a: player_velocity
	rts
	jsr $ca72
	rts
	jsr $ca72
	rts
	ldx a: $b2
	lda #$00
	sta a: enemy_type,x
	; collect heart
	inc a: player_health

	; if player health becomes 6, decrement to max health of 5
	lda #MAX_HEALTH + 1
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $f082
	dec a: player_health
	rts

	lda #$02
	sta a: temp
	lda a: $b5
	cmp a: temp
	bpl $f093
	jmp $f2b4
	lda #$08
	pha
	lda a: $b4
	asl a
	asl a
	asl a
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $63
	lda a: $b6
	and #$0f
	sta a: $ba
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f126
	lda a: $b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f0e7
	jmp $f3c9
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f0f7
	jmp $f2b4
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f123
	jmp $f3c9
	jmp $f2b4
	lda a: $b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f154
	jmp $f3c9
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f164
	jmp $f2b4
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f190
	jmp $f3c9
	jmp $f2b4
	lda #$00
	sta a: temp
	lda a: $b5
	cmp a: temp
	beq $f1a3
	jmp $f29b
	lda a: $b4
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta a: $63
	lda a: $b6
	and #$0f
	sta a: $ba
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f22e
	lda a: $b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f1ef
	jmp $f3cf
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f1ff
	jmp $f29b
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f22b
	jmp $f3cf
	jmp $f29b
	lda a: $b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f25c
	jmp $f3cf
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f26c
	jmp $f29b
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f298
	jmp $f3cf
	jmp $f29b
	dec a: $b5
	lda #$ff
	sta a: temp
	lda a: $b5
	cmp a: temp
	bne $f2b3
	lda #$0f
	sta a: $b5
	dec a: $b4
	rts
	inc a: $b5
	lda #$10
	sta a: temp
	lda a: $b5
	cmp a: temp
	bne $f2cc
	lda #$00
	sta a: $b5
	inc a: $b4
	rts
	lda a: $b4
	asl a
	asl a
	asl a
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f350
	beq $f350
	lda a: $b6
	clc
	adc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f319
	jmp $f3d5
	lda #$00
	sta a: $bb
	lda #$04
	sta a: temp
	lda a: $b5
	cmp a: temp
	bmi $f33a
	beq $f33a
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $f34d
	jmp $f3d5
	jmp $f3be
	lda a: $b6
	clc
	adc a: $62
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f387
	jmp $f3d5
	lda #$00
	sta a: $bb
	lda #$04
	sta a: temp
	lda a: $b5
	cmp a: temp
	bmi $f3a8
	beq $f3a8
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f3bb
	jmp $f3d5
	jmp $f3be
	lda a: $b6
	clc
	adc a: $62
	sta a: $b6
	rts
	lda #$01
	sta a: $64
	rts
	lda #$01
	sta a: $67
	rts
	lda #$01
	sta a: $b7
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	clc
	adc #$08
	sta $0300,x
	lda a: $22
	clc
	adc #$08
	sta a: $22
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda #$08
	clc
	adc a: $6b
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda a: $22
	clc
	adc #$08
	sta a: $22
	rts
	jsr $f3db
	lda a: $6c
	clc
	adc #$10
	sta a: $6c
	lda a: $6e
	clc
	adc #$04
	sta a: $6e
	jsr $f3db
	rts
	jsr $f44f
	lda a: $6c
	clc
	adc #$10
	sta a: $6c
	lda a: $6e
	clc
	adc #$04
	sta a: $6e
	jsr $f44f
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda a: $22
	clc
	adc #$04
	sta a: $22
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sec
	sbc #$08
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda #$08
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$09
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$04
	sta $0300,x
	lda #$0a
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$0b
	clc
	adc a: $22
	tax
	lda a: $6b
	clc
	adc #$08
	sta $0300,x
	lda a: $22
	clc
	adc #$0c
	sta a: $22
	rts
	label_f5dd:
	jsr $db80
	jsr label_db8e
	jsr $c31d
	jsr $dbc3
	jsr label_dbda
	jsr label_db8e
	jsr label_db8e
	jsr $f6d3
	lda #$00
	sta a: $bc
	lda #$5a
	sta a: $bd
	lda #$56
	sta a: $be
	lda #$ff
	sta a: $bf
	lda #$01
	sta a: $c0
	lda #$00
	sta a: konami_code_correct_presses
	lda #$00
	sta a: $5c
	lda #$00
	sta a: konami_code_active
	jsr $f7e2
	jsr $f7ee
	jsr $f7e8
	jsr $f7e2
	jsr $f7ee
	lda #$00
	sta a: temp
	lda a: konami_code_active
	cmp a: temp
	beq $f698
	jsr $f6e9
	lda a: $be
	clc
	adc a: $bf
	sta a: $be
	lda a: $bd
	clc
	adc a: $c0
	sta a: $bd
	lda #$32
	sta a: temp
	lda a: $be
	cmp a: temp
	bne $f662
	lda #$01
	sta a: $bf
	lda #$82
	sta a: temp
	lda a: $be
	cmp a: temp
	bne $f674
	lda #$ff
	sta a: $bf
	lda #$46
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne $f686
	lda #$01
	sta a: $c0
	lda #$6e
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne $f698
	lda #$ff
	sta a: $c0
	lda a: $04
	clc
	adc #$03
	sta a: $04
	lda a: $05
	clc
	adc #$07
	sta a: $05
	jsr $f836
	lda #$00
	sta a: temp
	lda a: button_select_down
	cmp a: temp
	beq $f6bf
	lda #$01
	sta a: konami_code_active
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $f6cf
	jmp $f6d2
	jmp $f61d
	rts
	jsr label_dc26
	jsr label_db8e
	jsr $f71c
	jsr label_db8e
	jsr $f7a8
	jsr label_db8e
	jsr label_db8e
	rts
	; FIXME
	lda #$00
	sta $2003
	ldy #$f0
	lda a: $bd
	sta a: player_offset_x
	lda a: $be
	sta $2004
	inx
	tya
	sta $2004
	inx
	lda #$20
	sta $2004
	inx
	lda a: player_offset_x
	sta $2004
	clc
	adc #$08
	sta a: player_offset_x
	inx
	iny
	iny
	cpy #$00
	bne $f6f6
	rts
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$c4
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne $f72b
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$44
	sta PPU_VRAM_ADDR2
	ldx #$80
	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$b9
	bne $f745
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$ab
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e36b,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne $f75f
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$c9
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e3eb,x
	sta PPU_VRAM_IO
	inx
	cpx #$0d
	bne $f779
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$c0
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda #$00
	sta PPU_VRAM_IO
	inx
	cpx #$18
	bne $f795
	lda #$55
	sta PPU_VRAM_IO
	inx
	cpx #$40
	bne $f79f
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $66
	ldx a: $66
	lda $e23a,x
	sta PPU_VRAM_IO
	inc a: $66
	lda #$1f
	sta a: temp
	lda a: $66
	cmp a: temp
	bpl $f7d3
	jmp $f7b7
	rts
	; FIXME
	ldy a: $11
	lda #$00
	sta $2007
	dey
	cpy #$00
	bne $f7d9
	rts
	lda PPU_STATUS
	bpl $f7e2
	rts
	lda PPU_STATUS
	bmi $f7e8
	rts
	lda PPU_STATUS
	and #$10
	bne $f7ee
	ldy #$c8
	lda PPU_STATUS
	and #$10
	bne $f7f7
	lda #$00
	sta PPU_VRAM_ADDR1
	sta PPU_VRAM_ADDR1
	dey
	cpy #$00
	bne $f7f7
	ldx a: title_screen_wave_timer
	ldy #$ff
	lda PPU_STATUS
	and #$10
	bne $f810
	lda $e4eb,x
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	inx
	dey
	cpy #$00
	bne $f810
	inc a: title_screen_wave_timer
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	jsr $f8b1
	lda #$0a
	sta a: temp
	lda a: konami_code_correct_presses
	cmp a: temp
	bmi $f85d
	lda #$00
	sta a: temp
	lda a: $5c
	cmp a: temp
	beq $f854
	rts
	lda #$01
	sta a: $5c
	jsr $d5d8
	rts
	lda #$00
	sta a: temp
	lda a: konami_code_correct_button_down
	cmp a: temp
	beq $f880
	lda #$00
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f880
	lda #$00
	sta a: konami_code_correct_button_down
	inc a: konami_code_correct_presses
	rts
	lda #$00
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f88e
	rts
	ldx a: konami_code_correct_presses
	lda $f908,x
	sta a: $c5
	lda a: $c5
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f8ab
	lda #$01
	sta a: konami_code_correct_button_down
	rts
	lda #$00
	sta a: konami_code_correct_presses
	rts
	jsr $d539
	lda a: button_a_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_b_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_up_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_down_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_left_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_right_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_select_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_start_down
	sta a: $c4
	rts
