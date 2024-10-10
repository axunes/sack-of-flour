.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_cabb:
	jsr nesmus_shut_up
	jsr sub_dbc3
	jsr sub_dbda
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

	if (ram_27 = #1)
		lda $8059
		sta player_pos_x1
	endif

	lda #$00
	sta player_velocity
	lda #$00
	sta player_fall_state
	lda #$ff
	sta ram_60
	jsr sub_d825
	lda #$00
	sta ram_61
label_cb0c:
	jsr vsync
	inc ram_61
	lda #$78
	sta temp
	lda ram_61
	cmp temp
	bpl :+
	jmp label_cb0c
:	lda #$00
	sta ram_61
	jsr sub_dbc3
	jsr sub_c35e
	lda #$00
	sta ram_07
	jsr load_music
	; turn off dmc
	mb APU_CHANCTRL = #(STATUS_NOISE_ENABLED | STATUS_TRIANGLE_ENABLED | STATUS_PULSE2_ENABLED | STATUS_PULSE1_ENABLED)
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
	jsr sub_d6e5
	
	if (ram_58 <> #0) jsr sub_d629

	jmp label_cb4e
label_cb75:
	jsr sub_c28b
	jsr vsync
	jsr init_enemies
	lda #$00
	sta ram_5d
	lda #$00
	sta player_anim_timer
	jsr sub_d2bb
	rts
