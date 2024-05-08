.include "nes.inc"
.include "global.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_dc92:
	for (lda #0 : sta ram_7f, ram_7f <> #12, inc ram_7f)
		ldx ram_7f
		lda ram_72,x
		sta ram_80

		if (ram_80 = #0), long
			ldx ram_7f
			lda $8070,x
			sta ram_81
			ldx ram_7f
			lda $807c,x
			sta ram_82

			if (player_position_y_again - #$20 >> 4 = ram_82), long
				if (player_pos_x1 = ram_81 && player_pos_x2 <= #6) jmp sub_ddd8

				if (player_pos_x1 + #1 = ram_81)
					if (player_pos_x2 >= #10) jmp sub_ddd8
				endif
			endif
		endif
	next
	rts











sub_dd2d:
	for (lda #0 : sta ram_83, ram_83 <= ram_7e, inc ram_83)
		ldx ram_83
		lda $8044,x
		sta ram_84
		ldx ram_83
		lda $8049,x
		sta ram_85

		if (player_position_y_again - #2 >> 4 = ram_85), long
			if (player_pos_x1 = ram_84 && player_pos_x2 <= #4) jmp sub_ddb0
			if (player_pos_x1 + #1 = ram_84 && player_pos_x2 >= #12) jmp sub_ddb0
		endif
	next
	rts

sub_ddb0:
	jsr sub_c3eb
	for (lda #0 : sta ram_86, ram_86 <> #21, inc ram_86)
		jsr vsync
		jsr sub_e679
		jsr sub_de0d
	next

	jsr sub_c3eb
	rts

sub_ddd8:
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
