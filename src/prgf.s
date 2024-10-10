.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGF"

label_f067:
	ldx which_enemy
	lda #$00
	sta enemy_type,x

	; collect heart
	inc player_health

	; if player health becomes 6, decrement to max health of 5
	if (player_health = #MAX_HEALTH + 1) dec player_health
	rts

sub_f083:
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
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
sub_f193:
	lda #$00
	sta temp
	lda ram_b5
	cmp temp
	beq :+
	jmp sub_f29b
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
	jmp sub_f29b
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
:	jmp sub_f29b
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
	jmp sub_f29b
:	lda ram_63
	pha
	lda ram_65
	sec
	sbc #$01
	sta nbasic_temp
	pla
	clc
	adc nbasic_temp
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
:	jmp sub_f29b
sub_f29b:
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
sub_f2cd:
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
sub_f3db:
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
sub_f44f:
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
	jsr sub_f3db
	lda ram_6c
	clc
	adc #$10
	sta ram_6c
	lda ram_6e
	clc
	adc #$04
	sta ram_6e
	jsr sub_f3db
	rts
label_f4dc:
	jsr sub_f44f
	lda ram_6c
	clc
	adc #$10
	sta ram_6c
	lda ram_6e
	clc
	adc #$04
	sta ram_6e
	jsr sub_f44f
	rts
sub_f4f5:
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
sub_f5dd:
	jsr sub_db80
	jsr vsync
	jsr sub_c31d
	jsr sub_dbc3
	jsr sub_dbda
	jsr vsync
	jsr vsync
	jsr sub_f6d3
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
	jsr sub_f7e2
	jsr sub_f7ee
	jsr sub_f7e8
	jsr sub_f7e2
	jsr sub_f7ee
	lda #$00
	sta temp
	lda konami_code_active
	cmp temp
	beq label_f698
	jsr sub_f6e9
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
	jsr sub_f836
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
sub_f6d3:
	jsr sub_dc26
	jsr vsync
	jsr sub_f71c
	jsr vsync
	jsr sub_f7a8
	jsr vsync
	jsr vsync
	rts
sub_f6e9:
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
sub_f71c:
	jsr vsync
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
	jsr vsync
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
	jsr vsync
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
	jsr vsync
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
	jsr vsync
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
sub_f7a8:
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
	ldy nbasic_temp
	lda #$00
:	sta $2007
	dey
	cpy #$00
	bne :-
	rts
sub_f7e2:
:	lda PPU_STATUS
	bpl :-
	rts
sub_f7e8:
:	lda PPU_STATUS
	bmi :-
	rts
sub_f7ee:
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
sub_f836:
	jsr sub_f8b1
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
	jsr sub_d5d8
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
sub_f8b1:
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

konami_code_values: .byte $20, $20, $10, $10, $08, $04, $08, $04, $40, $80
