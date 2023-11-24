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
	sta ram_06
	jsr label_c26a
	lda #$00
	sta ram_07
	jsr label_e5eb
	lda #$03
	sta player_lives
	jsr label_dc71
	jsr label_cabb
do
	jsr get_controller_buttons
	jsr label_c7ec
	jsr label_d2bb
	jsr label_e8ed
	jsr label_c24e

	; if player_health is 0, KILL?
	; ^ I guess that's wrong
	if (player_health <> #0) jsr label_e679

	jsr label_c17f
	jsr label_e816
	jsr label_db8e
	jsr label_db61

	if (ram_0b <> #0) goto label_c0e9, long

	if (player_position_y_again & #$fc = #$fc)
		jsr label_c9e2
		if (player_position_y_again = #02)
			continue
		endif
		jmp label_c0cd
	endif

	if (player_health = #0)
		if (i_frames = #0)
			jsr label_cab7
			jmp label_c0cd
		endif
	endif

	continue
	
label_c0cd:
	if (player_lives = #0)
		jsr label_da95
		jsr label_c3eb
		jmp reset
	endif
	jsr label_cabb
	continue
label_c0e9:
	jsr label_e7f4

	jmp :+
	:

	jsr nesmus_shut_up

	for (lda #$1e : sta idx, idx <> #0, dec idx)
		jsr label_db8e
		jsr label_d5ed
	next

	jsr label_d5c3
	lda #$01
	sta player_fall_state

	do
		jsr label_db8e
		jsr label_d2bb
		jsr label_db61
		mb player_position_y_again := player_position_y_again - #03
	while (player_position_y_again & #$f8 <> #0) ; FIXME, combine and & sbc
		
	for (lda #$1e : sta idx, idx <> #0, dec idx)
		jsr label_db8e
		jsr label_d5ed
	next

	jmp :+
	:

	if (inc ram_06 : ram_06 = #05) goto label_d8b7, long
	jsr label_c26a
	jsr label_c1c2
	jsr label_dc71
	jsr label_cabb
forever

label_c17f:
	lda ram_04
	pha
	lda #$0d
	pha
	lda player_velocity
	clc
	adc ram_86
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_04
	lda ram_05
	pha
	lda #$11
	pha
	lda ram_12
	clc
	adc ram_5b
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_05
	rts










	
	label_c1c2:
		lda #$00
		sta button_a_down
		lda #$00
		sta button_b_down
		lda #$00
		sta button_up_down
		lda #$00
		sta button_down_down
		lda #$00
		sta button_right_down
		lda #$00
		sta button_left_down
		lda #$00
		sta button_select_down
		lda #$00
		sta button_start_down
		lda #$00
		sta ram_1b
		lda #$01
		sta player_direction
		lda #$00
		sta idx
		lda #$00
		sta title_screen_wave_timer
		lda #$00
		sta player_chunk_pos
		lda #$00
		sta player_chunk_pos_fine
		lda #$00
		sta player_chunk_pos_again
		lda #$00
		sta player_chunk_pos_fine_again
		lda #$10
		sta ram_22
		lda #$00
		sta ram_0b
		lda #$00
		sta ram_23
		lda #$20
		sta player_sprite
		lda #$00
		sta player_anim_timer
		lda #$00
		sta ram_26
		lda #$00
		sta ram_27
		rts
	label_c236:
		lda #$00
		sta APU_CHANCTRL
		lda #$1f
		sta APU_CHANCTRL
		rts
nesmus_shut_up:
; zero out all apu registers
	ldx #$00
	lda #$00
:	sta APU_PULSE1CTRL,x
	inx
	cpx #$10
	bne :-
	rts
label_c24e:
	lda #$0f
	sta temp
	lda ram_22
	cmp temp
	bpl :+
	rts
:	ldx ram_22
	lda #$f5
	sta $0300,x
	inc ram_22
	jmp label_c24e
	label_c26a:
		lda ram_06
		asl a
		sta ram_28
		lda #$06
		sta $8000
		lda ram_28
		sta $8001
		lda #$07
		sta $8000
		lda ram_28
		clc
		adc #$01
		sta $8001
		rts
label_c28b:
	lda #$00
	sta $8000
	lda #$08
	sta $8001
	lda #$01
	sta $8000
	lda #$0a
	sta $8001
	lda ram_06
	asl a
	asl a
	clc
	adc #$0c
	sta ram_28
	lda #$02
	sta $8000
	lda ram_28
	sta $8001
	lda #$03
	sta $8000
	lda ram_28
	clc
	adc #$01
	sta $8001
	lda #$04
	sta $8000
	lda ram_28
	clc
	adc #$02
	sta $8001
	lda #$05
	sta $8000
	lda ram_28
	clc
	adc #$03
	sta $8001
	rts
label_c2e0: ; mapper shit
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
label_c31d:
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
		jmp label_c31d
		rts
label_c35e:
	jsr label_dc6b
	jsr label_db8e
	jsr label_dbc3
	jsr label_dc26
	jsr label_db8e
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
	jsr label_db8e
	lda #$07
	sta ram_52
label_c397:
	jsr label_db8e
	jsr label_c4b4
	jsr label_db8e
	jsr label_c5aa
	jsr label_db8e
	jsr label_c6a0
	dec ram_52
	lda #$ff
	sta temp
	lda ram_52
	cmp temp
	beq :+
	jmp label_c397
:	lda #$00
	sta ram_52
label_c3c1:
	jsr label_db8e
	jsr label_c706
	inc ram_52
	lda #$05
	sta temp
	lda ram_52
	cmp temp
	beq :+
	jmp label_c3c1
:	jsr label_db8e
	jsr label_c414
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
label_c3eb:
	jsr label_db8e
	lda #$01
	sta temp
	lda ram_53
	cmp temp
	bne :+
	jsr label_c47d
	rts
:	lda #$03
	sta temp
	lda ram_53
	cmp temp
	bne :+
	jsr label_c414
	rts
:	jsr label_c44b
	rts
label_c414:
	lda #$55
	sta ram_54
	lda #$00
	sta ram_53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_c42d:
	ldx idx
	lda $8004,x
	sta PPU_VRAM_IO
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_c42d
	rts
label_c44b:
	lda #$01
	clc
	adc ram_53
	sta ram_53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_c463:
	lda #$0e
	sta PPU_VRAM_IO
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_c463
	rts
label_c47d:
	lda #$aa
	sta ram_54
	lda #$02
	sta ram_53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_c496:
	ldx idx
	lda $8024,x
	sta PPU_VRAM_IO
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_c496
	rts
label_c4b4:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_2a,x
	sta ram_11
	lda ram_52
	sta temp
	lda ram_11
	cmp temp
	bne :+
	rts
:	ldx ram_55
	lda ram_52
	sta ram_2a,x
	lda ram_52
	asl a
	tax
	lda tile_shit_4,x
	sta ram_00
	inx
	lda tile_shit_4,x
	sta ram_00+1
	ldx ram_55
	lda tile_shit_1,x
	sta ram_56
	ldx ram_55
	lda $e112,x
	sta ram_57
	ldy #$00
	ldx #$00
label_c505:
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda ram_57
	adc #$20
	sta ram_57
	lda ram_56
	adc #$00
	sta ram_56
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$20
	beq :+
	clc
	lda ram_57
	adc #$20
	sta ram_57
	lda ram_56
	adc #$00
	sta ram_56
	jmp label_c505
:	rts
label_c5aa:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_32,x
	sta ram_11
	lda ram_52
	sta temp
	lda ram_11
	cmp temp
	bne :+
	rts
:	ldx ram_55
	lda ram_52
	sta ram_32,x
	lda ram_52
	asl a
	tax
	lda tile_shit_4,x
	sta ram_00
	inx
	lda tile_shit_4,x
	sta ram_00+1
	ldx ram_55
	lda tile_shit_2,x
	sta ram_56
	ldx ram_55
	lda $e122,x
	sta ram_57
	ldy #$20
	ldx #$00
label_c5fb:
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda ram_57
	adc #$20
	sta ram_57
	lda ram_56
	adc #$00
	sta ram_56
	lda ram_56
	sta PPU_VRAM_ADDR2
	lda ram_57
	sta PPU_VRAM_ADDR2
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda (<ram_00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$3c
	beq :+
	clc
	lda ram_57
	adc #$20
	sta ram_57
	lda ram_56
	adc #$00
	sta ram_56
	jmp label_c5fb
:	rts
label_c6a0:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_3a,x
	sta ram_11
	lda ram_52
	sta temp
	lda ram_11
	cmp temp
	bne :+
	rts
:	ldx ram_55
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
	cpy #$4c
	beq :+
	clc
	lda ram_57
	adc #$08
	sta ram_57
	jmp label_c6dd
:	rts
label_c706:
	lda ram_52
	and #$07
	sta ram_55
	ldx ram_55
	lda ram_42,x
	sta ram_11
	lda ram_52
	sta temp
	lda ram_11
	cmp temp
	bne :+ ; we do some tile shit
	rts
:	ldx ram_55
	lda ram_52
	sta ram_42,x
	lda ram_52
	asl a
	tax
	lda tile_shit_4,x
	sta ram_00
	inx
	lda tile_shit_4,x
	sta ram_00+1
	ldy #$4c
	clc
	lda ram_52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_26
	tax
label_c750:
	lda (<ram_00),y
	iny
	sta ram_11
	and #$03
	sta $0400,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0400,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0400,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0400,x
	lsr ram_11
	lsr ram_11
	inx
	cpy #$54
	bne label_c750
	ldy #$54
	clc
	lda ram_52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_26
	tax
label_c7a2:
	lda (<ram_00),y
	iny
	sta ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
	inx
	lda ram_11
	and #$03
	sta $0200,x
	lsr ram_11
	lsr ram_11
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

label_c7ec: ; giant player process routine I think
	lda #$00
	sta ram_58
	lda #$00
	sta player_is_moving_h
	lda #$00
	sta ram_12
	lda #$00
	sta ram_5a

	if (button_start_down <> #0) jsr label_c99e
	if (button_up_down <> #0) jsr label_dd2d

	if (player_health = #00)
		if (player_direction = #0) jsr label_d204
		if (player_direction = #1) jsr label_d255
		jmp label_c984
	endif
	
label_c850:
	lda #$00
	sta temp
	lda button_down_down
	cmp temp
	beq :+
	lda #$01
	sta ram_12
:	lda #$00
	sta temp
	lda button_right_down
	cmp temp
	beq :++
	lda #$01
	sta player_direction
	jsr label_cbaa
	lda #$00
	sta temp
	lda button_b_down
	cmp temp
	beq :+
	jsr label_cbaa
:	lda #$01
	sta player_is_moving_h
:	lda #$00
	sta temp
	lda button_left_down
	cmp temp
	beq :++
	lda #$00
	sta player_direction
	jsr label_ccfa
	lda #$00
	sta temp
	lda button_b_down
	cmp temp
	beq :+
	jsr label_ccfa
:	lda #$01
	sta player_is_moving_h
:	lda #$00
	sta temp
	lda button_a_down
	cmp temp
	bne label_c8dd
	lda #$00
	sta temp
	lda ram_5b
	cmp temp
	beq :+
	lda #$0a
	sta player_velocity
:	lda #$00
	sta ram_5b
	jmp label_c984
label_c8dd:
	lda #$00
	sta temp
	lda button_a_down
	cmp temp
	beq :+
	lda #$01
	sta temp
	lda ram_5c
	cmp temp
	bne :+
	lda #$23
	sta player_velocity
	lda #$01
	sta player_fall_state
	lda #$01
	sta ram_5a
	jsr label_d5d8
	jmp label_c984
:	lda #$00
	sta temp
	lda button_a_down
	cmp temp
	beq :+
	lda #$00
	sta temp
	lda ram_5b
	cmp temp
	beq :+
	dec ram_5b
	jmp label_c984
:	lda #$00
	sta temp
	lda button_a_down
	cmp temp
	beq label_c984
	lda #$00
	sta temp
	lda ram_5d
	cmp temp
	beq label_c984
	jsr label_d584
	lda #$01
	sta player_fall_state
	lda #$28
	sta player_velocity
	lda #$03
	sta temp
	lda ram_06
	cmp temp
	bne :+
	lda #$2d
	sta player_velocity
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	lda #$26
	sta player_velocity
:	lda #$00
	sta ram_5d
	lda #$0f
	sta ram_5b
	jmp label_c984
label_c984:
	jsr label_cb8c
	lda #$00
	sta temp
	lda i_frames
	cmp temp
	beq :+
	dec i_frames
:	jsr label_ee7e
	jsr label_d4d9
	rts












label_c99e:
	;FIXME
	; pausing shit?
	lda #$00
	sta $4015
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq label_c9b6
	jmp label_c99e
label_c9b6:
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	bne :+
	jmp label_c9b6
:	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp :-
:	lda #$0f
	sta $4015
	rts
label_c9e2:
	lda $805c ; FIXME
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	jmp label_ca36
:	lda $805d ; FIXME
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	jmp label_ca36
:	lda $805e ; FIXME
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	jmp label_ca36
:	lda #$00
	sta idx
label_ca1a:
	jsr label_db8e
	jsr label_d5ed
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_ca1a
:	jmp label_cab7
label_ca36:
	jsr label_dc26
label_ca39:
	lda $805f ; FIXME
	sta temp
	lda player_pos_x1
	cmp temp
	beq label_ca6c
	jsr label_e679
	jsr label_d204
	jsr label_d204
	jsr label_d204
	jsr label_db8e
	lda #$00
	sta temp
	lda ram_58
	cmp temp
	beq :+
	jsr label_d629
:	jsr label_d5ed
	jmp label_ca39
label_ca6c:
	lda #$02
	sta player_position_y_again
	rts
label_ca72:
	lda #$00
	sta temp
	lda i_frames
	cmp temp
	beq :+
	rts
:	lda #$96
	sta i_frames
	lda #$01
	sta player_fall_state
	lda #$0a
	sta player_velocity
	dec player_health
	lda #$ff
	sta temp
	lda player_health
	cmp temp
	bne :+
	lda #$00
	sta player_health
:	lda #$00
	sta temp
	lda player_health
	cmp temp
	bne :+
	lda #$37
	sta player_velocity
:	rts
label_cab7:
	; take a life
	dec player_lives
	rts
label_cabb:
	jsr nesmus_shut_up
	jsr label_dbc3
	jsr label_dbda
	; set health to 3
	lda #$03
	sta player_health
	lda #$64
	sta i_frames
	lda #$01
	sta player_direction
	lda #$0a
	sta player_position_y_again
	lda #$00
	sta player_pos_x2
	lda #$02
	sta player_pos_x1
	lda #$01
	sta temp
	lda ram_27
	cmp temp
	bne :+
	lda $8059
	sta player_pos_x1
:	lda #$00
	sta player_velocity
	lda #$00
	sta player_fall_state
	lda #$ff
	sta ram_60
	jsr label_d825
	lda #$00
	sta ram_61
label_cb0c:
	jsr label_db8e
	inc ram_61
	lda #$78
	sta temp
	lda ram_61
	cmp temp
	bpl :+
	jmp label_cb0c
:	lda #$00
	sta ram_61
	jsr label_dbc3
	jsr label_c35e
	lda #$00
	sta ram_07
	jsr label_e5eb
	lda #$0f
	sta APU_CHANCTRL
	lda #$00
	sta player_chunk_pos
	lda #$00
	sta player_chunk_pos_fine
	lda #$00
	sta player_chunk_pos_again
	lda #$00
	sta player_chunk_pos_fine_again
label_cb4e:
	lda player_chunk_pos_again
	sta temp
	lda player_pos_x1
	sec
	sbc #$06
	cmp temp
	bmi label_cb75
	jsr label_d6e5
	lda #$00
	sta temp
	lda ram_58
	cmp temp
	beq :+
	jsr label_d629
:	jmp label_cb4e
label_cb75:
	jsr label_c28b
	jsr label_db8e
	jsr init_enemies
	lda #$00
	sta ram_5d
	lda #$00
	sta player_anim_timer
	jsr label_d2bb
	rts
label_cb8c:
	ldx player_velocity
	lda $e040,x
	sta ram_62
	lda #$01
	sta temp
	lda player_fall_state
	cmp temp
	bne :+
	jmp label_ce4a
	rts
:	jmp label_d023
	rts
label_cbaa:
	lda #$03
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	jmp label_d204
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
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d204
:	lda ram_63
	clc
	adc #$06
	tax
	lda $0400,x
	sta ram_64
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	jmp label_d204
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
	lda $0400,x
	sta ram_64
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d204
:	lda ram_66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta ram_64
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	jmp label_d204
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
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d204
:	lda ram_66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_64
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	rts
:	jsr label_d204
	rts
label_ccfa:
	lda #$00
	sta temp
	lda player_pos_x2
	cmp temp
	beq :+
	jmp label_d255
:	lda player_pos_x1
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
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d255
:	lda ram_63
	clc
	adc #$06
	tax
	lda $0400,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	jmp label_d255
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
	lda $0400,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d255
:	lda ram_66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	jmp label_d255
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
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	jmp label_d255
:	lda ram_66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	rts
:	jmp label_d255
	rts
label_ce4a:
	lda #$00
	sta temp
	lda player_position_y_again
	and #$f8
	cmp temp
	bne label_ce6f
	dec player_velocity
	lda #$00
	sta temp
	lda player_velocity
	cmp temp
	bne :+
	lda #$00
	sta player_fall_state
:	rts
label_ce6f:
	lda #$00
	sta temp
	lda player_health
	cmp temp
	bne label_ce9f
	jsr nesmus_shut_up
	lda player_position_y_again
	sec
	sbc ram_62
	sta player_position_y_again
	dec player_velocity
	lda #$00
	sta temp
	lda player_velocity
	cmp temp
	bne :+
	lda #$00
	sta player_fall_state
:	rts
label_ce9f:
	lda player_pos_x1
	asl a
	asl a
	asl a
	sta ram_63
	lda #$97
	sta temp
	lda player_position_y_again
	cmp temp
	bmi :+
	jmp label_cf71
:	lda player_position_y_again
	pha
	lda #$e8
	sec
	sbc ram_62
	sta ram_11
	pla
	clc
	adc ram_11
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq label_cef7
	lda player_position_y_again
	pha
	lda #$ef
	sec
	sbc ram_62
	sta ram_11
	pla
	clc
	adc ram_11
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
label_cef7:
	lda ram_63
label_cefa:
	clc
	adc ram_65
	sta ram_66
	ldx ram_66
	lda $0400,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	jmp label_d01a
:	lda #$00
	sta ram_64
;	lda #$04
;	sta temp
;	lda player_pos_x2
;	cmp temp
;	bmi :+
;	beq :+
;	lda ram_66
;	clc
;	adc #$08
;	tax
;	lda $0400,x
;	sta ram_64
	if (player_pos_x2 > #04)
		lda ram_66
		clc
		adc #$08
		tax
		lda $0400,x
		sta ram_64
	endif
	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	jmp label_d01a
:	lda player_position_y_again
	sec
	sbc ram_62
	sta player_position_y_again
	dec player_velocity
	lda #$00
	sta temp
	lda player_velocity
	cmp temp
	bne :+
	lda #$00
	sta player_fall_state
:	rts
label_cf71:
	lda player_position_y_again
	clc
	adc #$79
	sec
	sbc ram_62
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq label_cfa0
	lda player_position_y_again
	clc
	adc #$7f
	sec
	sbc ram_62
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_65
label_cfa0:
	lda ram_63
	clc
	adc ram_65
	sta ram_66
	ldx ram_66
	lda $0200,x
	sta ram_67
;	lda #$00
;	sta temp
;	lda ram_67
;	and ram_54
;	cmp temp
;	beq :+
;	jmp label_d01a
;	:
	; optimization:
	; if (ram_67 & ram_54 == zero), long
	if (ram_67 & ram_54 = #0), long
		lda #$00
		sta ram_64
	
		if (player_pos_x2 > #4)
			lda ram_66
			clc
			adc #$08
			tax
			lda $0200,x
			sta ram_64
		endif

		if (ram_64 & ram_54 = #0), long
			lda player_position_y_again
			sec
			sbc ram_62
			sta player_position_y_again
			dec player_velocity

			if (player_velocity = #0)
				lda #$00
				sta player_fall_state
			endif
			rts
		endif
	endif

label_d01a:
	lda #$00
	sta player_fall_state
	jsr label_dc92
	rts
label_d023:
	lda #$00
	sta temp
	lda player_health
	cmp temp
	bne label_d05d
	lda player_position_y_again
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
:	rts
label_d05d:
	lda player_pos_x1
	asl a
	asl a
	asl a
	sta ram_63
	lda #$e8
	sta temp
	lda player_position_y_again
	and #$f8
	cmp temp
	bne :+
	lda player_position_y_again
	clc
	adc ram_62
	sta player_position_y_again
	rts
:	lda #$f0
	sta temp
	lda player_position_y_again
	and #$f0
	cmp temp
	bne :+
	lda player_position_y_again
	clc
	adc ram_62
	sta player_position_y_again
	rts
:	lda #$7f
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
	lda $0400,x
	sta ram_67
	lda #$00
	sta temp
	lda ram_67
	and ram_54
	cmp temp
	beq :+
	jmp label_d1e1
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
	lda $0400,x
	sta ram_64
:	lda #$00
	sta temp
	lda ram_64
	and ram_54
	cmp temp
	beq :+
	jmp label_d1e1
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
	jmp label_d1e1
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
	jmp label_d1e1
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
label_d1e1:
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

label_d204: ; LOOK
	if (player_pos_x1 = $8058) rts
	if (player_pos_x1 = $8059)
		lda #$01
		sta ram_27
	endif

	inc player_pos_x2

	if (player_pos_x2 = #16)
		lda #$00
		sta player_pos_x2
		inc player_pos_x1
	endif

	if (player_pos_x1 - player_chunk_pos_again > #10) jsr label_d6e5
	rts

label_d255: ; LOOK

	if (player_pos_x1 = #0 && lda #$08 : sta temp : lda player_pos_x2 : cmp temp == negative) rts ; MAN FIX THIS SHIT

	lda $805a
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	lda #$01
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	rts
:	dec player_pos_x2
	lda #$ff
	sta temp
	lda player_pos_x2
	cmp temp
	bne :+
	lda #$0f
	sta player_pos_x2
	dec player_pos_x1
:	lda #$06
	sta temp
	lda player_pos_x1

	; subtract $20 from playerposx1
	; compare playerposx1 and 6
	; this is equal to subtracting playerposx1 by 6 but not storing
	; if 

	sec
	sbc player_chunk_pos_again
	cmp temp
	bpl :+
	beq :+
	jsr label_d773
:	rts
label_d2bb: ; process player sprites, store in oam
	lda #$20
	sta player_sprite
	inc player_anim_timer
	lda #$00
	sta temp
	lda player_anim_timer
	and #$08
	cmp temp
	beq :+
	lda #$28
	sta player_sprite
:	lda #$00
	sta temp
	lda player_is_moving_h
	cmp temp
	bne :+
	lda #$00
	sta player_anim_timer
:	lda #$02
	sta temp
	lda player_fall_state
	cmp temp
	beq :+
	lda #$30
	sta player_sprite
:	lda #$00
	sta temp
	lda ram_12
	cmp temp
	beq :+
	lda #$38
	sta player_sprite
:	lda player_position_y_again
	sec
	sbc #$20
	sta player_offset_y
	lda player_pos_x1
	sec
	sbc player_chunk_pos_again
	asl a
	asl a
	asl a
	asl a
	pha
	lda player_pos_x2
	sec
	sbc player_chunk_pos_fine_again
	sta ram_11
	pla
	clc
	adc ram_11
	sec
	sbc #$01
	sta player_offset_x
	lda #$01
	sta ram_6a
	lda #$00
	sta temp
	lda i_frames
	cmp temp
	beq :+
	lda i_frames
	and #$03
	sta ram_6a
:	lda #$00
	sta temp
	lda ram_5a
	cmp temp
	beq label_d391
	lda player_offset_x
	clc
	adc #$04
	sta ram_6b
	lda player_position_y_again
	sec
	sbc #$02
	sta ram_6c
	lda #$03
	sta ram_6d
	lda #$00
	sta temp
	lda ram_1b
	and #$02
	cmp temp
	beq :+
	lda #$43
	sta ram_6d
:	lda #$1e
	sta ram_6e
	jsr label_f4f5
label_d391:
	lda #$01
	sta temp
	lda player_direction
	cmp temp
	bne :+
	jmp label_d3a4
:	jmp label_d43a
label_d3a4:
	ldx #$00
	lda player_offset_y
	sta $0300,x
	ldx #$01
	lda player_sprite
	sta $0300,x
	ldx #$02
	lda ram_6a
	sta $0300,x
	ldx #$03
	lda player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc player_offset_y
	sta $0300,x
	ldx #$05
	lda #$02
	clc
	adc player_sprite
	sta $0300,x
	ldx #$06
	lda ram_6a
	sta $0300,x
	ldx #$07
	lda player_offset_x
	sta $0300,x
	ldx #$08
	lda player_offset_y
	sta $0300,x
	ldx #$09
	lda #$04
	clc
	adc player_sprite
	sta $0300,x
	ldx #$0a
	lda ram_6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$06
	clc
	adc player_sprite
	sta $0300,x
	ldx #$0e
	lda ram_6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc player_offset_x
	sta $0300,x
	rts












label_d43a:
	lda ram_6a
	clc
	adc #$40
	sta ram_6a
	ldx #$00
	lda player_offset_y
	sta $0300,x
	ldx #$01
	lda #$04
	clc
	adc player_sprite
	sta $0300,x
	ldx #$02
	lda ram_6a
	sta $0300,x
	ldx #$03
	lda player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc player_offset_y
	sta $0300,x
	ldx #$05
	lda #$06
	clc
	adc player_sprite
	sta $0300,x
	ldx #$06
	lda ram_6a
	sta $0300,x
	ldx #$07
	lda player_offset_x
	sta $0300,x
	ldx #$08
	lda player_offset_y
	sta $0300,x
	ldx #$09
	lda player_sprite
	sta $0300,x
	ldx #$0a
	lda ram_6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$02
	clc
	adc player_sprite
	sta $0300,x
	ldx #$0e
	lda ram_6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc player_offset_x
	sta $0300,x
	rts
label_d4d9:
	lda #$00
	sta idx
label_d4de:
	lda player_health
	sta temp
	lda idx
	cmp temp
	bmi :+
	rts
:	ldx ram_22
	lda #$08
	sta $0300,x
	lda #$01
	clc
	adc ram_22
	tax
	lda #$02
	sta $0300,x
	lda #$02
	clc
	adc ram_22
	tax
	lda #$02
	sta $0300,x
	lda #$03
	clc
	adc ram_22
	tax
	lda #$10
	pha
	lda idx
	asl a
	asl a
	asl a
	sta ram_11
	pla
	clc
	adc ram_11
	sta $0300,x
	lda ram_22
	clc
	adc #$04
	sta ram_22
	inc idx
	jmp label_d4de
	rts
	rts
get_controller_buttons:
	lda #$01
	sta APU_PAD1
	lda #$00
	sta APU_PAD1
	lda APU_PAD1
	and #$01
	sta button_a_down
	lda APU_PAD1
	and #$01
	sta button_b_down
	lda APU_PAD1
	and #$01
	sta button_select_down
	lda APU_PAD1
	and #$01
	sta button_start_down
	lda APU_PAD1
	and #$01
	sta button_up_down
	lda APU_PAD1
	and #$01
	sta button_down_down
	lda APU_PAD1
	and #$01
	sta button_left_down
	lda APU_PAD1
	and #$01
	sta button_right_down
	rts
label_d584:
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
label_d5c3:
	lda #$0b
	sta APU_NOISECTRL
	lda #$ff
	sta $400d
	lda #$ff
	sta APU_NOISEFREQ1
	lda #$08
	sta APU_NOISEFREQ2
	rts
label_d5d8:
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
label_d5ed:
	lda #$00
	sta temp
	lda player_chunk_pos
	and #$04
	cmp temp
	beq :+
	lda #$31
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	jmp label_d613
:	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
label_d613:
	lda player_chunk_pos
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc player_chunk_pos_fine
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
label_d629:
	lda #$00
	sta temp
	lda ram_58
	cmp temp
	bne :+
	rts
:	lda #$06
label_d639:
	sta temp
	lda ram_58
	cmp temp
	bmi :+
	jmp label_d696
:	lda player_chunk_pos
	clc
	adc #$05
	sta ram_52
	lda #$01
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c4b4
:	lda #$03
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c5aa
:	lda #$04
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c6a0
:	lda #$05
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c706
:	lda #$00
	sta ram_58
	rts
label_d696:
	lda player_chunk_pos
	sec
	sbc #$01
	sta ram_52
	lda #$06
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c4b4
:	lda #$08
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c5aa
:	lda #$09
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c6a0
:	lda #$0a
	sta temp
	lda ram_58
	cmp temp
	bne :+
	jsr label_c706
:	lda #$00
	sta ram_58
	rts
label_d6e5:
	lda $805b
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bne :+
	lda #$01
	sta ram_0b
	rts
:	inc player_chunk_pos_fine_again
	lda #$10
	sta temp
	lda player_chunk_pos_fine_again
	cmp temp
	bne :+
	lda #$00
	sta player_chunk_pos_fine_again
	inc player_chunk_pos_again
:	lda #$3f
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$00
	sta player_chunk_pos_fine
	inc player_chunk_pos
	rts
:	inc player_chunk_pos_fine
	lda #$0a
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$01
	sta ram_58
:	lda #$1e
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$03
	sta ram_58
:	lda #$28
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$04
	sta ram_58
:	lda #$32
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$05
	sta ram_58
:	rts
label_d773:
	lda #$00
	sta temp
	lda player_chunk_pos
	cmp temp
	bne :+
	lda #$01
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bpl :+
	rts
:	lda $805b
	sta temp
	lda player_chunk_pos_again
	cmp temp
	bne :+
	rts
:	dec player_chunk_pos_fine_again
	lda #$ff
	sta temp
	lda player_chunk_pos_fine_again
	cmp temp
	bne :+
	lda #$0f
	sta player_chunk_pos_fine_again
	dec player_chunk_pos_again
:	lda #$00
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$3f
	sta player_chunk_pos_fine
	dec player_chunk_pos
	rts
:	dec player_chunk_pos_fine
	lda #$00
	sta temp
	lda player_chunk_pos
	cmp temp
	bne :+
	rts
:	lda #$08
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$06
	sta ram_58
:	lda #$1c
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$08
	sta ram_58
:	lda #$26
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$09
	sta ram_58
:	lda #$30
	sta temp
	lda player_chunk_pos_fine
	cmp temp
	bne :+
	lda #$0a
	sta ram_58
:	rts
label_d825:
	jsr label_dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda level_title,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne :-
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$68
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda level_name,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne :-
	jsr label_db8e
	lda player_lives
	sta idx
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$04
	sta PPU_VRAM_ADDR2
label_d869:
	lda #$ee
	sta PPU_VRAM_IO
	lda #$ef
	sta PPU_VRAM_IO
	dec idx
	lda #$00
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d869
:	lda player_lives
	sta idx
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$24
	sta PPU_VRAM_ADDR2
label_d896:
	lda #$fe
	sta PPU_VRAM_IO
	lda #$ff
	sta PPU_VRAM_IO
	dec idx
	lda #$00
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d896
:	jsr label_db09
	rts
label_d8b7:
	; FIXME
	jsr label_dae9
	jsr label_db8e
	lda #$20
	sta $2006
	lda #$48
	sta $2006
	lda #$00
	sta idx
label_d8cc:
	ldx idx
	lda $e401,x
	sta $2007
	inc idx
	lda #$0f
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d8cc
:	jsr label_db8e
	lda #$20
	sta $2006
	lda #$ab
	sta $2006
	lda #$00
	sta idx
label_d8fa:
	ldx idx
	lda $e410,x
	sta $2007
	inc idx
	lda #$08
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d8fa
:	jsr label_db8e
	lda #$21
	sta $2006
	lda #$01
	sta $2006
	lda #$00
	sta idx
label_d928:
	ldx idx
	lda $e419,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d928
:	jsr label_db8e
	lda #$21
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta idx
label_d956:
	ldx idx
	lda $e437,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d956
:	jsr label_db8e
	lda #$21
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta idx
label_d984:
	ldx idx
	lda $e455,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d984
:	jsr label_db8e
	lda #$21
	sta $2006
	lda #$e1
	sta $2006
	lda #$00
	sta idx
label_d9b2:
	ldx idx
	lda $e473,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d9b2
:	jsr label_db8e
	lda #$22
	sta $2006
	lda #$21
	sta $2006
	lda #$00
	sta idx
label_d9e0:
	ldx idx
	lda $e491,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d9e0
:	jsr label_db8e
	lda #$22
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta idx
label_da0e:
	ldx idx
	lda $e4af,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_da0e
:	jsr label_db8e
	lda #$22
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta idx
label_da3c:
	ldx idx
	lda $e4cd,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_da3c
:	jsr label_db09
	jsr nesmus_shut_up
	lda #$00
	sta $2005
	lda #$00
	sta $2005
label_da68:
	jsr label_db8e
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	bne :+
	jmp label_da68
label_da7e:
:	jsr label_db8e
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp label_da7e
:	rts
label_da95:
	jsr label_dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_daa7:
	ldx idx
	lda game_over_text,x
	sta PPU_VRAM_IO
	inc idx
	lda #$09
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_daa7
:	jsr label_db09
	jsr nesmus_shut_up
	lda #$c8
	sta ram_71
	jsr label_dad2
	rts
label_dad2:
	jsr label_db8e
	dec ram_71
	lda #$00
	sta temp
	lda ram_71
	cmp temp
	beq :+
	jmp label_dad2
:	rts
label_dae9:
	jsr label_db80
	jsr label_c2e0
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
label_db09:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_db18:
	ldx idx
	lda $e25a,x
	sta PPU_VRAM_IO
	inc idx
	lda #$10
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db18
	; FIXME
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta idx
label_db44:
	ldx idx
	lda $e000,x
	sta $2007
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db44
label_db61:
	jsr label_d629
	jsr label_d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta ram_22
	rts ; FIXME
	jsr label_db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
label_db80:
	jsr label_db8e
	lda #$20
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	rts
	label_db8e:
	:	lda PPU_STATUS
		bpl :-
	:	lda PPU_STATUS
		bmi :-
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR2
		lda #$00
		sta PPU_VRAM_ADDR2
		inc ram_1b
		rts
	; FIXME
:	lda $2002
	bpl :-
:	lda $2002
	bmi :-
:	lda $2002
	bpl :-
	inc ram_1b
	rts
label_dbc3:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$0e
	ldy player_chunk_pos_again
:	sta PPU_VRAM_IO
	dey
	cpy #$00
	bne :-
	label_dbda:
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr label_dc1b
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr label_dc1b
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr label_dc1b
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr label_dc1b
	rts
label_dc1b:
	ldx #$00
:	sta PPU_VRAM_IO
	inx
	cpx #$00
	bne :-
	rts
	label_dc26:
		lda #$00
		sta ram_66
		lda #$00
		sta PPU_SPR_ADDR
	label_dc30:
		lda #$f5
		sta PPU_SPR_IO
		inc ram_66
		lda #$00
		sta temp
		lda ram_66
		cmp temp
		beq :+
		jmp label_dc30
	:	rts
	; FIXME
	lda #$00
	sta ram_66
label_dc4e:
	ldx ram_66
	lda #$f5
	sta OAM+0,x
	inc ram_66
	lda #$00
	sta temp
	lda ram_66
	cmp temp
	beq :+
	jmp label_dc4e
:	rts
	irq:
	rti
label_dc6b:
	lda #$05
	sta ram_7e
	rts
label_dc71:
	lda #$00
	sta idx
label_dc76:
	ldx idx
	lda #$00
	sta ram_72,x
	inc idx
	lda #$0c
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_dc76
:	rts
label_dc92:
	lda #$00
	sta ram_7f
label_dc97:
	ldx ram_7f
	lda ram_72,x
	sta ram_80
	lda #$00
	sta temp
	lda ram_80
	cmp temp
	beq :+
	jmp label_dd19
:	ldx ram_7f
	lda $8070,x
	sta ram_81
	ldx ram_7f
	lda $807c,x
	sta ram_82
	lda ram_82
	sta temp
	lda player_position_y_again
	sec
	sbc #$20
	lsr a
	lsr a
	lsr a
	lsr a
	cmp temp
	beq :+
	jmp label_dd19
:	lda ram_81
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	lda #$06
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	jmp label_ddd8
:	lda ram_81
	sta temp
	lda player_pos_x1
	clc
	adc #$01
	cmp temp
	bne label_dd19
	lda #$0a
	sta temp
	lda player_pos_x2
	cmp temp
	bmi label_dd19
	jmp label_ddd8
label_dd19:
	inc ram_7f
	lda #$0c
	sta temp
	lda ram_7f
	cmp temp
	beq :+
	jmp label_dc97
:	rts
label_dd2d:
	lda #$00
	sta ram_83
label_dd32:
	ldx ram_83
	lda $8044,x
	sta ram_84
	ldx ram_83
	lda $8049,x
	sta ram_85
	lda ram_85
	sta temp
	lda player_position_y_again
	sec
	sbc #$02
	lsr a
	lsr a
	lsr a
	lsr a
	cmp temp
	beq :+
	jmp label_dd9b
:	lda ram_84
	sta temp
	lda player_pos_x1
	cmp temp
	bne :+
	lda #$04
	sta temp
	lda player_pos_x2
	cmp temp
	bpl :+
	jmp label_ddb0
:	lda ram_84
	sta temp
	lda player_pos_x1
	clc
	adc #$01
	cmp temp
	bne label_dd9b
	lda #$0c
	sta temp
	lda player_pos_x2
	cmp temp
	bmi label_dd9b
	jmp label_ddb0
label_dd9b:
	inc ram_83
	lda ram_7e
	sta temp
	lda ram_83
	cmp temp
	bpl :+
	jmp label_dd32
:	rts
label_ddb0:
	jsr label_c3eb
	lda #$00
	sta ram_86
label_ddb8:
	jsr label_db8e
	jsr label_e679
	jsr label_de0d
	inc ram_86
	lda #$15
	sta temp
	lda ram_86
	cmp temp
	beq :+
	jmp label_ddb8
:	jsr label_c3eb
	rts
label_ddd8:
	ldx ram_7f
	lda #$01
	sta ram_72,x
	ldx #$05
	lda #$08
	sta enemy_type,x
	ldx #$05
	lda ram_82
	asl a
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta enemy_pos_y,x
	ldx #$05
	lda ram_81
	sta enemy_pos_x,x
	ldx #$05
	lda #$00
	sta enemy_pos_x2,x
	ldx #$05
	lda #$01
	sta ram_aa,x
	rts
label_de0d:
	lda #$00
	sta idx
label_de12:
	lda #$00
	sta ram_87
label_de17:
	inc ram_87
	lda #$40
	sta temp
	lda ram_87
	cmp temp
	beq :+
	jmp label_de17
:	inc idx
	lda #$11
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_de12
:	rts
