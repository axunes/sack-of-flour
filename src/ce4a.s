.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_ce4a:
	if (player_position_y_again & #$f8 = #0)
		dec player_velocity
		
		if (player_velocity = #0)
			lda #0
			sta player_fall_state
		endif

		rts
	endif

	if (player_health = #0)
		jsr nesmus_shut_up
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

	lda player_pos_x1
	asl a
	asl a
	asl a
	sta ram_63

	if (player_position_y_again >= #$97) jmp label_cf71
	
	lda player_position_y_again
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
	
	if (ram_12 <> #0)
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
	endif

	lda ram_63
	clc
	adc ram_65
	sta ram_66
	ldx ram_66
	lda collision_something_else,x
	sta ram_67

	if (ram_67 & ram_54 = #0), long

		lda #$00
		sta ram_64

		if (player_pos_x2 > #04)
			lda ram_66
			clc
			adc #$08
			tax
			lda collision_something_else,x
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
			
			if (ram_12 <> #0)
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
			endif

			lda ram_63
			clc
			adc ram_65
			sta ram_66
			ldx ram_66
			lda $0200,x
			sta ram_67

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
		endif
	endif

	lda #$00
	sta player_fall_state
	jsr sub_dc92
	rts
	