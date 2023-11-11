	reset:
	nmi:
	jsr label_c35a
	jsr label_c236
	jsr label_db8e
	jsr label_db8e
	jsr label_f5dd
	jsr label_dbda
	lda #$30
	sta PPU_CTRL1
	lda #$04
	sta PPU_CTRL2
	jsr label_dc26
	jsr label_c1c2
	jsr label_db8e
	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda #$00
	sta a: $06
	jsr label_c26a
	lda #$00
	sta a: $07
	jsr label_e5eb
	lda #$03
	sta a: player_lives
	jsr $dc71
	jsr $cabb
	jsr $d539
	jsr $c7ec
	jsr $d2bb
	jsr $e8ed
	jsr $c24e

	; if player_health is 0, KILL?
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	beq :+
	jsr $e679
:	jsr $c17f
	jsr $e816
	jsr label_db8e
	jsr $db61
	lda #$00
	sta a: temp
	lda a: $0b
	cmp a: temp
	beq :+
	jmp $c0e9
:	lda #$fc
	sta a: temp
	lda a: $0c
	and #$fc
	cmp a: temp
	bne label_c0aa
	jsr $c9e2
	lda #$02
	sta a: temp
	lda a: $0c
	cmp a: temp
	bne label_c0a7
	jmp $c04a
label_c0a7:
	jmp $c0cd
label_c0aa:
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne label_c0ca
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	bne label_c0ca
	jsr $cab7
	jmp $c0cd
label_c0ca:
	jmp $c04a
	lda #$00
	sta a: temp
	lda a: player_lives
	cmp a: temp
	bne label_c0e3
	jsr $da95
	jsr $c3eb
	jmp $c000
label_c0e3:
	jsr $cabb
	jmp $c04a
	jsr $e7f4
	jmp $c0ef
	jsr $c241
	lda #$1e
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq :+
	jmp $c0f7
:	jsr $d5c3
	lda #$01
	sta a: player_fall_state
	jsr label_db8e
	jsr $d2bb
	jsr $db61
	lda a: $0c
	sec
	sbc #$03
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	beq :+
	jmp $c118
:	lda #$1e
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq :+
	jmp $c141
:	jmp $c15d
	inc a: $06
	lda #$05
	sta a: temp
	lda a: $06
	cmp a: temp
	bne :+
	jmp $d8b7
:	jsr label_c26a
	jsr label_c1c2
	jsr $dc71
	jsr $cabb
	jmp $c04a
	lda a: $04
	pha
	lda #$0d
	pha
	lda a: player_velocity
	clc
	adc a: $86
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $04
	lda a: $05
	pha
	lda #$11
	pha
	lda a: $12
	clc
	adc a: $5b
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $05
	rts
	label_c1c2:
		lda #$00
		sta a: button_a_down
		lda #$00
		sta a: button_b_down
		lda #$00
		sta a: button_up_down
		lda #$00
		sta a: button_down_down
		lda #$00
		sta a: button_right_down
		lda #$00
		sta a: button_left_down
		lda #$00
		sta a: button_select_down
		lda #$00
		sta a: button_start_down
		lda #$00
		sta a: $1b
		lda #$01
		sta a: player_direction
		lda #$00
		sta a: $0e
		lda #$00
		sta a: title_screen_wave_timer
		lda #$00
		sta a: $1e
		lda #$00
		sta a: $1f
		lda #$00
		sta a: $20
		lda #$00
		sta a: $21
		lda #$10
		sta a: $22
		lda #$00
		sta a: $0b
		lda #$00
		sta a: $23
		lda #$20
		sta a: $24
		lda #$00
		sta a: $25
		lda #$00
		sta a: $26
		lda #$00
		sta a: $27
		rts
	label_c236:
		lda #$00
		sta APU_CHANCTRL
		lda #$1f
		sta APU_CHANCTRL
		rts
	ldx #$00
	lda #$00
label_c245:
	sta APU_PULSE1CTRL,x
	inx
	cpx #$10
	bne label_c245
	rts
	lda #$0f
	sta a: temp
	lda a: $22
	cmp a: temp
	bpl :+
	rts
:	ldx a: $22
	lda #$f5
	sta $0300,x
	inc a: $22
	jmp $c24e
	label_c26a:
		lda a: $06
		asl a
		sta a: $28
		lda #$06
		sta $8000
		lda a: $28
		sta $8001
		lda #$07
		sta $8000
		lda a: $28
		clc
		adc #$01
		sta $8001
		rts
	lda #$00
	sta $8000
	lda #$08
	sta $8001
	lda #$01
	sta $8000
	lda #$0a
	sta $8001
	lda a: $06
	asl a
	asl a
	clc
	adc #$0c
	sta a: $28
	lda #$02
	sta $8000
	lda a: $28
	sta $8001
	lda #$03
	sta $8000
	lda a: $28
	clc
	adc #$01
	sta $8001
	lda #$04
	sta $8000
	lda a: $28
	clc
	adc #$02
	sta $8001
	lda #$05
	sta $8000
	lda a: $28
	clc
	adc #$03
	sta $8001
	rts
	lda #$00
	sta $8000
	lda #$04
	sta $8001
	lda #$01
	sta $8000
	lda #$06
	sta $8001
	lda #$02
	sta $8000
	lda #$04
	sta $8001
	lda #$03
	sta $8000
	lda #$05
	sta $8001
	lda #$04
	sta $8000
	lda #$06
	sta $8001
	lda #$05
	sta $8000
	lda #$07
	sta $8001
	rts
	lda #$00
	sta $8000
	lda #$00
	sta $8001
	lda #$01
	sta $8000
	lda #$02
	sta $8001
	lda #$02
	sta $8000
	lda #$00
	sta $8001
	lda #$03
	sta $8000
	lda #$01
	sta $8001
	lda #$04
	sta $8000
	lda #$02
	sta $8001
	lda #$05
	sta $8000
	lda #$03
	sta $8001
	rts
	label_c35a:
		jmp $c31d
		rts
	jsr $dc6b
	jsr label_db8e
	jsr $dbc3
	jsr label_dc26
	jsr label_db8e
	ldx #$00
	lda #$f5
:	
	sta a: $2a,x
	sta a: $32,x
	sta a: $42,x
	sta a: $4a,x
	sta a: $3a,x
	inx
	cpx #$08
	bne :-
	lda #$07
	sta a: $52
	lda #$0b
	sta a: $29
	jsr label_db8e
	lda #$07
	sta a: $52
	jsr label_db8e
	jsr $c4b4
	jsr label_db8e
	jsr $c5aa
	jsr label_db8e
	jsr $c6a0
	dec a: $52
	lda #$ff
	sta a: temp
	lda a: $52
	cmp a: temp
	beq :+
	jmp $c397
:	lda #$00
	sta a: $52
	jsr label_db8e
	jsr $c706
	inc a: $52
	lda #$05
	sta a: temp
	lda a: $52
	cmp a: temp
	beq :+
	jmp $c3c1
:	jsr label_db8e
	jsr $c414
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	jsr label_db8e
	lda #$01
	sta a: temp
	lda a: $53
	cmp a: temp
	bne :+
	jsr $c47d
	rts
:	lda #$03
	sta a: temp
	lda a: $53
	cmp a: temp
	bne :+
	jsr $c414
	rts
:	jsr $c44b
	rts
	lda #$55
	sta a: $54
	lda #$00
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $8004,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne :+
	rts
:	jmp $c42d
	rts
	lda #$01
	clc
	adc a: $53
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	lda #$0e
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne :+
	rts
:	jmp $c463
	rts
	lda #$aa
	sta a: $54
	lda #$02
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $8024,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne :+
	rts
:	jmp $c496
	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $2a,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne :+
	rts
:	ldx a: $55
	lda a: $52
	sta a: $2a,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldx a: $55
	lda $e10a,x
	sta a: $56
	ldx a: $55
	lda $e112,x
	sta a: $57
	ldy #$00
	ldx #$00
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$20
	beq :+
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	jmp $c505
:	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $32,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne :+
	rts
:	ldx a: $55
	lda a: $52
	sta a: $32,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldx a: $55
	lda $e11a,x
	sta a: $56
	ldx a: $55
	lda $e122,x
	sta a: $57
	ldy #$20
	ldx #$00
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$3c
	beq :+
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	jmp $c5fb
:	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $3a,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne :+
	rts
:	ldx a: $55
	lda a: $52
	sta a: $3a,x
	ldx a: $55
	lda $e12a,x
	sta a: $56
	ldx a: $55
	lda $e132,x
	sta a: $57
	ldy #$3c
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	iny
	cpy #$4c
	beq :+
	clc
	lda a: $57
	adc #$08
	sta a: $57
	jmp $c6dd
:	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $42,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne :+
	rts
:	ldx a: $55
	lda a: $52
	sta a: $42,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldy #$4c
	clc
	lda a: $52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta a: $26
	tax
label_c750:
	lda ($00),y
	iny
	sta a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	cpy #$54
	bne label_c750
	ldy #$54
	clc
	lda a: $52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta a: $26
	tax
label_c7a2:
	lda ($00),y
	iny
	sta a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	cpy #$5c
	bne label_c7a2
	nop
	nop
	nop
	nop
	nop
	nop
	rts
	lda #$00
	sta a: $58
	lda #$00
	sta a: player_is_moving_h
	lda #$00
	sta a: $12
	lda #$00
	sta a: $5a
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq :+
	jsr $c99e
:	lda #$00
	sta a: temp
	lda a: button_up_down
	cmp a: temp
	beq :+
	jsr $dd2d
:	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne label_c850
	lda #$00
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne :+
	jsr $d204
:	lda #$01
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne :+
	jsr $d255
:	jmp label_c984
label_c850:
	lda #$00
	sta a: temp
	lda a: button_down_down
	cmp a: temp
	beq :+
	lda #$01
	sta a: $12
:	lda #$00
	sta a: temp
	lda a: button_right_down
	cmp a: temp
	beq :++
	lda #$01
	sta a: player_direction
	jsr $cbaa
	lda #$00
	sta a: temp
	lda a: button_b_down
	cmp a: temp
	beq :+
	jsr $cbaa
:	lda #$01
	sta a: player_is_moving_h
:	lda #$00
	sta a: temp
	lda a: button_left_down
	cmp a: temp
	beq :++
	lda #$00
	sta a: player_direction
	jsr $ccfa
	lda #$00
	sta a: temp
	lda a: button_b_down
	cmp a: temp
	beq :+
	jsr $ccfa
:	lda #$01
	sta a: player_is_moving_h
:	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	bne label_c8dd
	lda #$00
	sta a: temp
	lda a: $5b
	cmp a: temp
	beq :+
	lda #$0a
	sta a: player_velocity
:	lda #$00
	sta a: $5b
	jmp label_c984
label_c8dd:
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq :+
	lda #$01
	sta a: temp
	lda a: $5c
	cmp a: temp
	bne :+
	lda #$23
	sta a: player_velocity
	lda #$01
	sta a: player_fall_state
	lda #$01
	sta a: $5a
	jsr $d5d8
	jmp label_c984
:	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq :+
	lda #$00
	sta a: temp
	lda a: $5b
	cmp a: temp
	beq :+
	dec a: $5b
	jmp label_c984
:	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq label_c984
	lda #$00
	sta a: temp
	lda a: $5d
	cmp a: temp
	beq label_c984
	jsr $d584
	lda #$01
	sta a: player_fall_state
	lda #$28
	sta a: player_velocity
	lda #$03
	sta a: temp
	lda a: $06
	cmp a: temp
	bne :+
	lda #$2d
	sta a: player_velocity
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	lda #$26
	sta a: player_velocity
:	lda #$00
	sta a: $5d
	lda #$0f
	sta a: $5b
	jmp label_c984
label_c984:
	jsr $cb8c
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq :+
	dec a: i_frames
:	jsr $ee7e
	jsr $d4d9
	rts
	;FIXME
	; pausing shit?
	lda #$00
	sta $4015
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq label_c9b6
	jmp $c99e
label_c9b6:
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	bne :+
	jmp label_c9b6
:	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq :+
	jmp :-
:	lda #$0f
	sta $4015
	rts
	lda $805c
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	jmp $ca36
:	lda $805d
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	jmp $ca36
:	lda $805e
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	jmp $ca36
:	lda #$00
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq :+
	jmp $ca1a
:	jmp $cab7
	jsr label_dc26
	lda $805f
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	beq label_ca6c
	jsr $e679
	jsr $d204
	jsr $d204
	jsr $d204
	jsr label_db8e
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	beq :+
	jsr $d629
:	jsr $d5ed
	jmp $ca39
label_ca6c:
	lda #$02
	sta a: $0c
	rts
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq :+
	rts
:	lda #$96
	sta a: i_frames
	lda #$01
	sta a: player_fall_state
	lda #$0a
	sta a: player_velocity
	dec a: player_health
	lda #$ff
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_health
:	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne :+
	lda #$37
	sta a: player_velocity
:	rts
	; take a life
	dec a: player_lives
	rts
	jsr $c241
	jsr $dbc3
	jsr label_dbda
	; set health to 3
	lda #$03
	sta a: player_health
	lda #$64
	sta a: i_frames
	lda #$01
	sta a: player_direction
	lda #$0a
	sta a: $0c
	lda #$00
	sta a: player_pos_x2
	lda #$02
	sta a: player_pos_x1
	lda #$01
	sta a: temp
	lda a: $27
	cmp a: temp
	bne :+
	lda $8059
	sta a: player_pos_x1
:	lda #$00
	sta a: player_velocity
	lda #$00
	sta a: player_fall_state
	lda #$ff
	sta a: $60
	jsr $d825
	lda #$00
	sta a: $61
	jsr label_db8e
	inc a: $61
	lda #$78
	sta a: temp
	lda a: $61
	cmp a: temp
	bpl :+
	jmp $cb0c
:	lda #$00
	sta a: $61
	jsr $dbc3
	jsr $c35e
	lda #$00
	sta a: $07
	jsr label_e5eb
	lda #$0f
	sta APU_CHANCTRL
	lda #$00
	sta a: $1e
	lda #$00
	sta a: $1f
	lda #$00
	sta a: $20
	lda #$00
	sta a: $21
	lda a: $20
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc #$06
	cmp a: temp
	bmi label_cb75
	jsr $d6e5
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	beq :+
	jsr $d629
:	jmp $cb4e
label_cb75:
	jsr $c28b
	jsr label_db8e
	jsr init_enemies
	lda #$00
	sta a: $5d
	lda #$00
	sta a: $25
	jsr $d2bb
	rts
	ldx a: player_velocity
	lda $e040,x
	sta a: $62
	lda #$01
	sta a: temp
	lda a: player_fall_state
	cmp a: temp
	bne :+
	jmp $ce4a
	rts
:	jmp $d023
	rts
	lda #$03
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl :+
	jmp $d204
:	lda a: player_pos_x1
	asl a
	asl a
	asl a
	clc
	adc #$08
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi label_cc2b
	lda #$81
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl label_cc2b
	ldx a: $63
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d204
:	lda a: $63
	clc
	adc #$06
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jmp $d204
label_cc2b:
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl label_cc97
	lda a: $0c
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
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d204
:	lda a: $66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jmp $d204
label_cc97:
	lda a: $0c
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
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d204
:	lda a: $66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jsr $d204
	rts
	lda #$00
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	beq :+
	jmp $d255
:	lda a: player_pos_x1
	sec
	sbc #$01
	asl a
	asl a
	asl a
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi label_cd7b
	lda #$81
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl label_cd7b
	ldx a: $63
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d255
:	lda a: $63
	clc
	adc #$06
	tax
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jmp $d255
label_cd7b:
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl label_cde7
	lda a: $0c
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
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d255
:	lda a: $66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jmp $d255
label_cde7:
	lda a: $0c
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
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	jmp $d255
:	lda a: $66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	rts
:	jmp $d255
	rts
	lda #$00
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	bne label_ce6f
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_fall_state
:	rts
label_ce6f:
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne label_ce9f
	jsr $c241
	lda a: player_position_y_again
	sec
	sbc a: $62
	sta a: player_position_y_again
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_fall_state
:	rts
label_ce9f:
	lda a: player_pos_x1
	asl a
	asl a
	asl a
	sta a: $63
	lda #$97
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi :+
	jmp $cf71
:	lda a: $0c
	pha
	lda #$e8
	sec
	sbc a: $62
	sta a: $11
	pla
	clc
	adc a: $11
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq label_cef7
	lda a: $0c
	pha
	lda #$ef
	sec
	sbc a: $62
	sta a: $11
	pla
	clc
	adc a: $11
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
label_cef7:
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	jmp $d01a
:	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi :+
	beq :+
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $64
:	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	jmp $d01a
:	lda a: $0c
	sec
	sbc a: $62
	sta a: $0c
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_fall_state
:	rts
	lda a: $0c
	clc
	adc #$79
	sec
	sbc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq label_cfa0
	lda a: $0c
	clc
	adc #$7f
	sec
	sbc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
label_cfa0:
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	jmp $d01a
:	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi :+
	beq :+
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $64
:	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	jmp $d01a
:	lda a: $0c
	sec
	sbc a: $62
	sta a: $0c
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_fall_state
:	rts
	lda #$00
	sta a: player_fall_state
	jsr $dc92
	rts
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne label_d05d
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq :+
	lda #$00
	sta a: player_fall_state
:	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl :+
	inc a: player_velocity
:	rts
label_d05d:
	lda a: player_pos_x1
	asl a
	asl a
	asl a
	sta a: $63
	lda #$e8
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	bne :+
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	rts
:	lda #$f0
	sta a: temp
	lda a: $0c
	and #$f0
	cmp a: temp
	bne :+
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	rts
:	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi :+
	jmp $d144
:	lda a: $0c
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
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	jmp $d1e1
:	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi :+
	beq :+
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $64
:	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	jmp $d1e1
:	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq :+
	lda #$00
	sta a: player_fall_state
:	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl :+
	inc a: player_velocity
:	lda #$00
	sta a: $5d
	rts
	lda a: $0c
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
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq :+
	jmp $d1e1
:	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi :+
	beq :+
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $64
:	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq :+
	jmp $d1e1
:	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq :+
	lda #$00
	sta a: player_fall_state
:	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl :+
	inc a: player_velocity
:	lda #$00
	sta a: $5d
	rts
	lda #$02
	sta a: player_fall_state
	lda #$11
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bmi :+
	lda #$0c
	sta a: player_velocity
	rts
:	lda #$00
	sta a: player_velocity
	lda #$01
	sta a: $5d
	rts
	lda $8058
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	rts
:	lda $8059
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	lda #$01
	sta a: $27
:	inc a: player_pos_x2
	lda #$10
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bne :+
	lda #$00
	sta a: player_pos_x2
	inc a: player_pos_x1
:	lda #$0a
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc a: $20
	cmp a: temp
	bmi :+
	beq :+
	jsr $d6e5
:	rts
	lda #$00
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	lda #$08
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl :+
	rts
:	lda $805a
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne :+
	lda #$01
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl :+
	rts
:	dec a: player_pos_x2
	lda #$ff
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bne :+
	lda #$0f
	sta a: player_pos_x2
	dec a: player_pos_x1
:	lda #$06
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc a: $20
	cmp a: temp
	bpl :+
	beq :+
	jsr $d773
:	rts
	lda #$20
	sta a: $24
	inc a: $25
	lda #$00
	sta a: temp
	lda a: $25
	and #$08
	cmp a: temp
	beq :+
	lda #$28
	sta a: $24
:	lda #$00
	sta a: temp
	lda a: player_is_moving_h
	cmp a: temp
	bne :+
	lda #$00
	sta a: $25
:	lda #$02
	sta a: temp
	lda a: player_fall_state
	cmp a: temp
	beq :+
	lda #$30
	sta a: $24
:	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq :+
	lda #$38
	sta a: $24
:	lda a: $0c
	sec
	sbc #$20
	sta a: player_offset_y
	lda a: player_pos_x1
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: player_pos_x2
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sec
	sbc #$01
	sta a: player_offset_x
	lda #$01
	sta a: $6a
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq :+
	lda a: i_frames
	and #$03
	sta a: $6a
:	lda #$00
	sta a: temp
	lda a: $5a
	cmp a: temp
	beq label_d391
	lda a: player_offset_x
	clc
	adc #$04
	sta a: $6b
	lda a: $0c
	sec
	sbc #$02
	sta a: $6c
	lda #$03
	sta a: $6d
	lda #$00
	sta a: temp
	lda a: $1b
	and #$02
	cmp a: temp
	beq :+
	lda #$43
	sta a: $6d
:	lda #$1e
	sta a: $6e
	jsr $f4f5
label_d391:
	lda #$01
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne :+
	jmp $d3a4
:	jmp $d43a
	ldx #$00
	lda a: player_offset_y
	sta $0300,x
	ldx #$01
	lda a: $24
	sta $0300,x
	ldx #$02
	lda a: $6a
	sta $0300,x
	ldx #$03
	lda a: player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$05
	lda #$02
	clc
	adc a: $24
	sta $0300,x
	ldx #$06
	lda a: $6a
	sta $0300,x
	ldx #$07
	lda a: player_offset_x
	sta $0300,x
	ldx #$08
	lda a: player_offset_y
	sta $0300,x
	ldx #$09
	lda #$04
	clc
	adc a: $24
	sta $0300,x
	ldx #$0a
	lda a: $6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$06
	clc
	adc a: $24
	sta $0300,x
	ldx #$0e
	lda a: $6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	rts
	lda a: $6a
	clc
	adc #$40
	sta a: $6a
	ldx #$00
	lda a: player_offset_y
	sta $0300,x
	ldx #$01
	lda #$04
	clc
	adc a: $24
	sta $0300,x
	ldx #$02
	lda a: $6a
	sta $0300,x
	ldx #$03
	lda a: player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$05
	lda #$06
	clc
	adc a: $24
	sta $0300,x
	ldx #$06
	lda a: $6a
	sta $0300,x
	ldx #$07
	lda a: player_offset_x
	sta $0300,x
	ldx #$08
	lda a: player_offset_y
	sta $0300,x
	ldx #$09
	lda a: $24
	sta $0300,x
	ldx #$0a
	lda a: $6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$02
	clc
	adc a: $24
	sta $0300,x
	ldx #$0e
	lda a: $6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	rts
	lda #$00
	sta a: $0e
	lda a: player_health
	sta a: temp
	lda a: $0e
	cmp a: temp
	bmi :+
	rts
:	ldx a: $22
	lda #$08
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda #$02
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda #$02
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda #$10
	pha
	lda a: $0e
	asl a
	asl a
	asl a
	sta a: $11
	pla
	clc
	adc a: $11
	sta $0300,x
	lda a: $22
	clc
	adc #$04
	sta a: $22
	inc a: $0e
	jmp $d4de
	rts
	rts
	lda #$01
	sta APU_PAD1
	lda #$00
	sta APU_PAD1
	lda APU_PAD1
	and #$01
	sta a: button_a_down
	lda APU_PAD1
	and #$01
	sta a: button_b_down
	lda APU_PAD1
	and #$01
	sta a: button_select_down
	lda APU_PAD1
	and #$01
	sta a: button_start_down
	lda APU_PAD1
	and #$01
	sta a: button_up_down
	lda APU_PAD1
	and #$01
	sta a: button_down_down
	lda APU_PAD1
	and #$01
	sta a: button_left_down
	lda APU_PAD1
	and #$01
	sta a: button_right_down
	rts
	lda #$9f
	sta APU_PULSE2CTRL
	lda #$8c
	sta APU_PULSE2RAMP
	lda #$4d
	sta APU_PULSE2FTUNE
	lda #$95
	sta APU_PULSE2STUNE
	rts
	; FIXME
	lda #$9f
	sta $4000
	lda #$84
	sta $4001
	lda #$d3
	sta $4002
	lda #$fc
	sta $4003
	rts
	lda #$88
	sta $4000
	lda #$48
	sta $4001
	lda #$25
	sta $4002
	lda #$4b
	sta $4003
	rts

	lda #$0b
	sta APU_NOISECTRL
	lda #$ff
	sta $400d
	lda #$ff
	sta APU_NOISEFREQ1
	lda #$08
	sta APU_NOISEFREQ2
	rts
	; FIXME
	lda #$0f
	sta $400C
	lda #$ff
	sta $400d
	lda #$f9
	sta $400E
	lda #$08
	sta $400F
	rts
	lda #$00
	sta a: temp
	lda a: $1e
	and #$04
	cmp a: temp
	beq :+
	lda #$31
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	jmp $d613
:	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda a: $1e
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc a: $1f
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	rts
:	lda #$06
	sta a: temp
	lda a: $58
	cmp a: temp
	bmi :+
	jmp $d696
:	lda a: $1e
	clc
	adc #$05
	sta a: $52
	lda #$01
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c4b4
:	lda #$03
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c5aa
:	lda #$04
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c6a0
:	lda #$05
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c706
:	lda #$00
	sta a: $58
	rts
	lda a: $1e
	sec
	sbc #$01
	sta a: $52
	lda #$06
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c4b4
:	lda #$08
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c5aa
:	lda #$09
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c6a0
:	lda #$0a
	sta a: temp
	lda a: $58
	cmp a: temp
	bne :+
	jsr $c706
:	lda #$00
	sta a: $58
	rts
	lda $805b
	sta a: temp
	lda a: $20
	cmp a: temp
	bne :+
	lda #$01
	sta a: $0b
	rts
:	inc a: $21
	lda #$10
	sta a: temp
	lda a: $21
	cmp a: temp
	bne :+
	lda #$00
	sta a: $21
	inc a: $20
:	lda #$3f
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$00
	sta a: $1f
	inc a: $1e
	rts
:	inc a: $1f
	lda #$0a
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$01
	sta a: $58
:	lda #$1e
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$03
	sta a: $58
:	lda #$28
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$04
	sta a: $58
:	lda #$32
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$05
	sta a: $58
:	rts
	lda #$00
	sta a: temp
	lda a: $1e
	cmp a: temp
	bne :+
	lda #$01
	sta a: temp
	lda a: $1f
	cmp a: temp
	bpl :+
	rts
:	lda $805b
	sta a: temp
	lda a: $20
	cmp a: temp
	bne :+
	rts
:	dec a: $21
	lda #$ff
	sta a: temp
	lda a: $21
	cmp a: temp
	bne :+
	lda #$0f
	sta a: $21
	dec a: $20
:	lda #$00
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$3f
	sta a: $1f
	dec a: $1e
	rts
:	dec a: $1f
	lda #$00
	sta a: temp
	lda a: $1e
	cmp a: temp
	bne :+
	rts
:	lda #$08
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne :+
	lda #$06
	sta a: $58
:	lda #$1c
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d800
	lda #$08
	sta a: $58
	lda #$26
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d812
	lda #$09
	sta a: $58
	lda #$30
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d824
	lda #$0a
	sta a: $58
	rts
	jsr $dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $bfb8,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne $d834
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$68
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $bfd8,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne $d84b
	jsr label_db8e
	lda a: player_lives
	sta a: $0e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$04
	sta PPU_VRAM_ADDR2
	lda #$ee
	sta PPU_VRAM_IO
	lda #$ef
	sta PPU_VRAM_IO
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d886
	jmp $d869
	lda a: player_lives
	sta a: $0e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$24
	sta PPU_VRAM_ADDR2
	lda #$fe
	sta PPU_VRAM_IO
	lda #$ff
	sta PPU_VRAM_IO
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d8b3
	jmp $d896
	jsr $db09
	rts
	; FIXME
	jsr $dae9
	jsr label_db8e
	lda #$20
	sta $2006
	lda #$48
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e401,x
	sta $2007
	inc a: $0e
	lda #$0f
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d8e8
	jmp $d8cc
	jsr label_db8e
	lda #$20
	sta $2006
	lda #$ab
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e410,x
	sta $2007
	inc a: $0e
	lda #$08
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d916
	jmp $d8fa
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$01
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e419,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d944
	jmp $d928
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e437,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d972
	jmp $d956
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e455,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9a0
	jmp $d984
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$e1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e473,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9ce
	jmp $d9b2
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$21
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e491,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9fc
	jmp $d9e0
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e4af,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $da2a
	jmp $da0e
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e4cd,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $da58
	jmp $da3c
	jsr $db09
	jsr $c241
	lda #$00
	sta $2005
	lda #$00
	sta $2005
	jsr label_db8e
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	bne $da7e
	jmp $da68
	jsr label_db8e
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $da94
	jmp $da7e
	rts
	jsr $dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e3f8,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$09
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $dac3
	jmp $daa7
	jsr $db09
	jsr $c241
	lda #$c8
	sta a: $71
	jsr $dad2
	rts
	jsr label_db8e
	dec a: $71
	lda #$00
	sta a: temp
	lda a: $71
	cmp a: temp
	beq $dae8
	jmp $dad2
	rts
	jsr $db80
	jsr $c2e0
	jsr label_db8e
	jsr label_dbda
	jsr label_db8e
	jsr label_dc26
	jsr label_db8e
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e25a,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$10
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $db32
	rts
	jmp $db18
	; FIXME
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e000,x
	sta $2007
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $db5e
	rts
	jmp $db44
	jsr $d629
	jsr $d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta a: $22
	rts ; FIXME
	jsr label_db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
	jsr label_db8e
	lda #$20
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	rts
	label_db8e:
		lda PPU_STATUS
		bpl label_db8e
		lda PPU_STATUS
		bmi $db93
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR2
		lda #$00
		sta PPU_VRAM_ADDR2
		inc a: $1b
		rts
	; FIXME
	lda $2002
	bpl $dbb0
	lda $2002
	bmi $dbb5
	lda $2002
	bpl $dbba
	inc a: $1b
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$0e
	ldy a: $20
	sta PPU_VRAM_IO
	dey
	cpy #$00
	bne $dbd2
	label_dbda:
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	rts
	ldx #$00
	sta PPU_VRAM_IO
	inx
	cpx #$00
	bne $dc1d
	rts
	label_dc26:
		lda #$00
		sta a: $66
		lda #$00
		sta PPU_SPR_ADDR
		lda #$f5
		sta PPU_SPR_IO
		inc a: $66
		lda #$00
		sta a: temp
		lda a: $66
		cmp a: temp
		beq $dc48
		jmp $dc30
		rts
	; FIXME
	lda #$00
	sta a: $66
	ldx a: $66
	lda #$f5
	sta OAM+0,x
	inc a: $66
	lda #$00
	sta a: temp
	lda a: $66
	cmp a: temp
	beq $dc69
	jmp $dc4e
	rts
	irq:
	rti
	lda #$05
	sta a: $7e
	rts
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda #$00
	sta a: $72,x
	inc a: $0e
	lda #$0c
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $dc91
	jmp $dc76
	rts
	lda #$00
	sta a: $7f
	ldx a: $7f
	lda a: $72,x
	sta a: $80
	lda #$00
	sta a: temp
	lda a: $80
	cmp a: temp
	beq $dcb0
	jmp $dd19
	ldx a: $7f
	lda $8070,x
	sta a: $81
	ldx a: $7f
	lda $807c,x
	sta a: $82
	lda a: $82
	sta a: temp
	lda a: $0c
	sec
	sbc #$20
	lsr a
	lsr a
	lsr a
	lsr a
	cmp a: temp
	beq $dcda
	jmp $dd19
	lda a: $81
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $dcf8
	lda #$06
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $dcf8
	jmp $ddd8
	lda a: $81
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $dd19
	lda #$0a
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $dd19
	jmp $ddd8
	inc a: $7f
	lda #$0c
	sta a: temp
	lda a: $7f
	cmp a: temp
	beq $dd2c
	jmp $dc97
	rts
	lda #$00
	sta a: $83
	ldx a: $83
	lda $8044,x
	sta a: $84
	ldx a: $83
	lda $8049,x
	sta a: $85
	lda a: $85
	sta a: temp
	lda a: $0c
	sec
	sbc #$02
	lsr a
	lsr a
	lsr a
	lsr a
	cmp a: temp
	beq $dd5c
	jmp $dd9b
	lda a: $84
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $dd7a
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $dd7a
	jmp $ddb0
	lda a: $84
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $dd9b
	lda #$0c
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $dd9b
	jmp $ddb0
	inc a: $83
	lda a: $7e
	sta a: temp
	lda a: $83
	cmp a: temp
	bpl $ddaf
	jmp $dd32
	rts
	jsr $c3eb
	lda #$00
	sta a: $86
	jsr label_db8e
	jsr $e679
	jsr $de0d
	inc a: $86
	lda #$15
	sta a: temp
	lda a: $86
	cmp a: temp
	beq $ddd4
	jmp $ddb8
	jsr $c3eb
	rts
	ldx a: $7f
	lda #$01
	sta a: $72,x
	ldx #$05
	lda #$08
	sta a: enemy_type,x
	ldx #$05
	lda a: $82
	asl a
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta a: enemy_pos_y,x
	ldx #$05
	lda a: $81
	sta a: enemy_pos_x,x
	ldx #$05
	lda #$00
	sta a: enemy_pos_x2,x
	ldx #$05
	lda #$01
	sta a: $aa,x
	rts
	lda #$00
	sta a: $0e
	lda #$00
	sta a: $87
	inc a: $87
	lda #$40
	sta a: temp
	lda a: $87
	cmp a: temp
	beq $de2a
	jmp $de17
	inc a: $0e
	lda #$11
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $de3d
	jmp $de12
	rts