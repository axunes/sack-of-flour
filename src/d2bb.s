.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

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
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
