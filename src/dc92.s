.include "nes.inc"
.include "global.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

label_dc92:
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
				if (player_pos_x1 = ram_81 && player_pos_x2 <= #6) jmp label_ddd8

				if (player_pos_x1 + #1 = ram_81)
					if (player_pos_x2 >= #10) jmp label_ddd8
				endif
			endif
		endif
	next
	rts











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
	if (player_position_y_again - #2 >> 4 = ram_85), long
		if (player_pos_x1 = ram_84 && player_pos_x2 <= #4) jmp label_ddb0
		if (player_pos_x1 + #1 = ram_84 && player_pos_x2 >= #12) jmp label_ddb0
	endif
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
