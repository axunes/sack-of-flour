.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c9e2:
	if (player_pos_x1 = $805c) jmp label_ca36
	if (player_pos_x1 = $805d) jmp label_ca36
	if (player_pos_x1 = $805e) jmp label_ca36

	lda #$00 ; for
	sta idx
label_ca1a:
	jsr vsync
	jsr sub_d5ed
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_ca1a
:	jmp sub_cab7
label_ca36:
	jsr sub_dc26
label_ca39:
	if (player_pos_x1 <> $805f)
		jsr sub_e679
		jsr sub_d204
		jsr sub_d204
		jsr sub_d204
		jsr vsync

		if (ram_58 <> #0) jsr sub_d629
		
		jsr sub_d5ed
		jmp label_ca39
	endif

	lda #$02
	sta player_position_y_again
	rts

sub_ca72:
	if (i_frames <> #0) rts

	lda #$96
	sta i_frames

	lda #$01
	sta player_fall_state

	lda #$0a
	sta player_velocity

	dec player_health
	
	if (player_health = #$ff)
		lda #$00
		sta player_health
	endif

	if (player_health = #0)
		lda #$37
		sta player_velocity
	endif
	
	rts

sub_cab7:
	; take a life
	dec player_lives
	rts
