.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c7ec: ; giant player process routine I think
	lda #$00
	sta ram_58
	lda #$00
	sta player_is_moving_h
	lda #$00
	sta ram_12
	lda #$00
	sta ram_5a

	if (button_start_down <> #0) jsr pause_game
	if (button_up_down <> #0) jsr sub_dd2d

	; fling player left or right on death
	if (player_health = #00)
		if (player_direction = #0) jsr sub_d204
		if (player_direction = #1) jsr sub_d255
		jmp label_c984
	endif
	
label_c850:
	if (button_down_down <> #0)
		lda #$01
		sta ram_12
	endif

	if (button_right_down <> #0)
		lda #$01
		sta player_direction
		jsr sub_cbaa
		
		if (button_b_down <> #0) jsr sub_cbaa

		lda #$01
		sta player_is_moving_h
	endif

	if (button_left_down <> #0)
		lda #$00
		sta player_direction
		jsr sub_ccfa
		
		if (button_b_down <> #0) jsr sub_ccfa

		lda #$01
		sta player_is_moving_h
	endif

	if (button_a_down = #0)
		if (ram_5b <> #0)
			lda #$0a
			sta player_velocity
		endif

		lda #$00
		sta ram_5b
		jmp label_c984
	endif

	if (button_a_down <> #0 && ram_5c = #1)
		lda #$23
		sta player_velocity
		lda #$01
		sta player_fall_state
		lda #$01
		sta ram_5a
		jsr sub_d5d8
		jmp label_c984
	endif
	
	if (button_a_down <> #0 && ram_5b <> #0)
		dec ram_5b
		jmp label_c984
	endif

	if (button_a_down = #0 || ram_5d = #0) goto label_c984

	jsr sub_d584
	lda #$01
	sta player_fall_state
	lda #$28
	sta player_velocity

	if (ram_06 = #3)
		lda #$2d
		sta player_velocity
	endif
	
	if (ram_12 <> #0)
		lda #$26
		sta player_velocity
	endif

	lda #$00
	sta ram_5d
	lda #$0f
	sta ram_5b

	jmp :+
	:

label_c984:
	jsr sub_cb8c

	if (i_frames <> #0) dec i_frames
	
	jsr sub_ee7e
	jsr sub_d4d9
	rts
