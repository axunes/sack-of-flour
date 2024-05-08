.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d255: ; LOOK (this gets tail called a fuckton)
	if (player_pos_x1 = #0 && player_pos_x2 <= #8) rts
	if (player_pos_x1 = $805a && player_pos_x2 <= #1) rts

	dec player_pos_x2

	if (player_pos_x2 = #$ff)
		lda #$0f
		sta player_pos_x2
		dec player_pos_x1
	endif

	if (player_pos_x1 - player_chunk_pos_again < #6) jsr sub_d773

	rts
	