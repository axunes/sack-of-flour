.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

init_ram:
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
