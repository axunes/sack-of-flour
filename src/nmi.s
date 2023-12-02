.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"
setLongBranch -, -

.segment "PRGE"
reset:
nmi:
	jsr label_c35a
	jsr label_c236
	jsr label_db8e
	jsr label_db8e
	jsr label_f5dd
	jsr label_dbda
	lda #$30
	sta PPU_CTRL1
	lda #$04
	sta PPU_CTRL2
	jsr label_dc26
	jsr label_c1c2
	jsr label_db8e
	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda #$00
	sta ram_06
	jsr label_c26a
	lda #$00
	sta ram_07
	jsr label_e5eb
	lda #$03
	sta player_lives
	jsr label_dc71
	jsr label_cabb

	do
		jsr get_controller_buttons
		jsr label_c7ec
		jsr label_d2bb
		jsr label_e8ed
		jsr label_c24e

		; if player_health is 0, KILL?
		; ^ I guess that's wrong
		if (player_health <> #0) jsr label_e679

		jsr label_c17f
		jsr label_e816
		jsr label_db8e
		jsr label_db61

		if (ram_0b <> #0) goto label_c0e9, long

		if (player_position_y_again & #$fc = #$fc)
			jsr label_c9e2
			if (player_position_y_again = #02)
				continue
			endif
			jmp label_c0cd
		endif

		if (player_health = #0)
			if (i_frames = #0)
				jsr label_cab7
				jmp label_c0cd
			endif
		endif

		continue
		
		label_c0cd:
		if (player_lives = #0)
			jsr label_da95
			jsr label_c3eb
			jmp reset
		endif
		jsr label_cabb
		continue
		label_c0e9:
		jsr label_e7f4

		jmp :+
		:

		jsr nesmus_shut_up

		for (lda #$1e : sta idx, idx <> #0, dec idx)
			jsr label_db8e
			jsr label_d5ed
		next

		jsr label_d5c3
		lda #$01
		sta player_fall_state

		do
			jsr label_db8e
			jsr label_d2bb
			jsr label_db61
			mb player_position_y_again := player_position_y_again - #03
		while (player_position_y_again & #$f8 <> #0) ; FIXME, combine and & sbc
			
		for (lda #$1e : sta idx, idx <> #0, dec idx)
			jsr label_db8e
			jsr label_d5ed
		next

		jmp :+
		:

		if (inc ram_06 : ram_06 = #05) goto label_d8b7, long
		jsr label_c26a
		jsr label_c1c2
		jsr label_dc71
		jsr label_cabb
	forever

label_c17f:
	lda ram_04
	pha
	lda #$0d
	pha
	lda player_velocity
	clc
	adc ram_86
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_04
	lda ram_05
	pha
	lda #$11
	pha
	lda ram_12
	clc
	adc ram_5b
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_11
	pla
	clc
	adc ram_11
	sta ram_05
	rts
