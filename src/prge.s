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

sub_d204: ; LOOK
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

	if (player_pos_x1 - player_chunk_pos_again > #10) jsr sub_d6e5
	rts

sub_d255: ; LOOK (this gets tail called a fuckton)
	if (player_pos_x1 = #0 && player_pos_x2 <= #8) rts
	if (player_pos_x1 = $805a && player_pos_x2 <= #1) rts

	dec player_pos_x2

	if (player_pos_x2 = #$ff)
		lda #$0f
		sta player_pos_x2
		dec player_pos_x1
	endif

	if (player_pos_x1 - player_chunk_pos_again < #6) jsr sub_d773

	rts
	
sub_d2bb: ; process player sprites, store in oam
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
	:
	
	if (player_is_moving_h = #0)
		lda #$00
		sta player_anim_timer
	endif

	lda #$02
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
	jsr sub_f4f5
label_d391:
;	lda #$01
;	sta temp
;	lda player_direction
;	cmp temp
;	bne :+
;	jmp label_d3a4
;:	jmp label_d43a
	if (player_direction = #1) ; FIXME
		
	else
		jmp label_d43a
	endif

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
sub_d4d9:
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
sub_d584:
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
sub_d5c3:
	lda #$0b
	sta APU_NOISECTRL
	lda #$ff
	sta $400d
	lda #$ff
	sta APU_NOISEFREQ1
	lda #$08
	sta APU_NOISEFREQ2
	rts
sub_d5d8:
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
sub_d5ed:
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
	mb a = player_chunk_pos << 6
	mb PPU_VRAM_ADDR1 = a + player_chunk_pos_fine
	mb PPU_VRAM_ADDR1 = #0
	rts

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

sub_d6e5:
	if (player_chunk_pos_again = $805b)
		lda #$01
		sta ram_0b
		rts
	endif

	inc player_chunk_pos_fine_again

	if (player_chunk_pos_fine_again = #16)
		lda #$00
		sta player_chunk_pos_fine_again
		inc player_chunk_pos_again
	endif

	if (player_chunk_pos_fine = #$3f)
		lda #$00
		sta player_chunk_pos_fine
		inc player_chunk_pos
		rts
	endif

	inc player_chunk_pos_fine

	if (player_chunk_pos_fine = #10)
		lda #$01
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$1e)
		lda #$03
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$28)
		lda #$04
		sta ram_58
	endif

	if (player_chunk_pos_fine = #50)
		lda #$05
		sta ram_58
	endif

	rts
	
sub_d773:
	if (player_chunk_pos = #0 && player_chunk_pos_fine <= #1) rts

	if (player_chunk_pos_again = $805b) rts

	dec player_chunk_pos_fine_again

	if (player_chunk_pos_fine_again = #$ff)
		lda #$0f
		sta player_chunk_pos_fine_again
		dec player_chunk_pos_again
	endif

	if (player_chunk_pos_fine = #0)
		lda #$3f
		sta player_chunk_pos_fine
		dec player_chunk_pos
		rts
	endif

	dec player_chunk_pos_fine

	if (player_chunk_pos = #0) rts

	if (player_chunk_pos_fine = #8)
		lda #$06
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$1c)
		lda #$08
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$26)
		lda #$09
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$30)
		lda #$0a
		sta ram_58
	endif

	rts

sub_d825: ; do level title shit
	jsr sub_dae9
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
	jsr sub_db8e
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
:	jsr sub_db09
	rts
label_d8b7:
	; FIXME
	jsr sub_dae9
	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db8e
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
:	jsr sub_db09
	jsr nesmus_shut_up
	lda #$00
	sta $2005
	lda #$00
	sta $2005
	do
		jsr sub_db8e
		jsr get_controller_buttons
	while (button_start_down = #0)
label_da7e:
	jsr sub_db8e
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp label_da7e
:	rts
sub_da95:
	jsr sub_dae9
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
:	jsr sub_db09
	jsr nesmus_shut_up
	lda #$c8
	sta ram_71
	jsr sub_dad2
	rts
sub_dad2:
	:
	jsr sub_db8e
	dec ram_71
	lda #$00
	sta temp
	lda ram_71
	cmp temp
	beq :+
	jmp :-
:	rts
sub_dae9:
	jsr sub_db80
	jsr sub_c2e0
	jsr sub_db8e
	jsr sub_dbda
	jsr sub_db8e
	jsr sub_dc26
	jsr sub_db8e
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
sub_db09:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_db18:
	ldx idx ; for ?
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
	ldx idx ; for ?
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
sub_db61:
	jsr sub_d629
	jsr sub_d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta ram_22
	rts ; FIXME
	jsr sub_db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
sub_db80:
	jsr sub_db8e
	lda #$20
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	rts
