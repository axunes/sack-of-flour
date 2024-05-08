.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

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
