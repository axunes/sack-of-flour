.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"
setLongBranch -, -

.segment "PRGE"
reset:
nmi:
	jsr sub_c35a
	jsr enable_sound_channels
	jsr vsync
	jsr vsync
	jsr sub_f5dd ; uncomment and title screen skips
	jsr sub_dbda
	lda #$30
	sta PPU_CTRL1
	lda #$04
	sta PPU_CTRL2
	jsr sub_dc26
	jsr init_ram
	jsr vsync
	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda #$00
	sta ram_06
	jsr sub_c26a
	lda #$00
	sta ram_07
	jsr sub_e5eb
	lda #$03
	sta player_lives
	jsr sub_dc71
	jsr sub_cabb ; commenting this just makes shit not load everywhere

	do
		jsr get_controller_buttons
		jsr sub_c7ec ; commenting makes sack not appear
		jsr sub_d2bb ; commenting makes sack not appear
		jsr sub_e8ed ; commenting makes hearts not spawn
		jsr sub_c24e ; commenting fucks with enemy unloading

		; if player_health is 0, KILL?
		; ^ I guess that's wrong
		if (player_health <> #0) jsr sub_e679

		jsr sub_c17f ; commenting makes enemies not spawn (?)
		jsr sub_e816 ; commenting makes enemies not spawn (?)
		jsr vsync ; commenting makes game too fast
		jsr sub_db61 ; commenting makes tiles not load

		if (ram_0b <> #0) goto label_c0e9, long

		if (player_position_y_again & #$fc = #$fc)
			jsr sub_c9e2
			if (player_position_y_again = #02)
				continue
			endif
			jmp label_c0cd
		endif

		if (player_health = #0 && i_frames = #0)
			jsr sub_cab7
			jmp label_c0cd
		endif

		continue
		
		label_c0cd:
		if (player_lives = #0)
			jsr sub_da95
			jsr sub_c3eb
			jmp reset
		endif
		jsr sub_cabb
		continue
		label_c0e9:
		jsr reset_enemies

		jmp :+
		:

		jsr nesmus_shut_up

		for (lda #$1e : sta idx, idx <> #0, dec idx)
			jsr vsync
			jsr sub_d5ed
		next

		jsr sub_d5c3
		lda #$01
		sta player_fall_state

		; yeet player upwards into next level
		do
			jsr vsync
			jsr sub_d2bb
			jsr sub_db61
			mb player_position_y_again := player_position_y_again - #03
		while (player_position_y_again & #$f8 <> #0) ; FIXME, combine and & sbc
			
		for (lda #$1e : sta idx, idx <> #0, dec idx)
			jsr vsync
			jsr sub_d5ed
		next

		jmp :+
		:

		if (inc ram_06 : ram_06 = #05) goto sub_d8b7, long
		jsr sub_c26a
		jsr init_ram
		jsr sub_dc71
		jsr sub_cabb
	forever

sub_c17f:
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
