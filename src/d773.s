.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d773:
	if (player_chunk_pos = #0 && player_chunk_pos_fine <= #1) rts

	if (player_chunk_pos_again = level_end_x + 1) rts

	dec player_chunk_pos_fine_again

	if (player_chunk_pos_fine_again = #$ff)
		lda #$0f
		sta player_chunk_pos_fine_again
		dec player_chunk_pos_again
	endif

	if (player_chunk_pos_fine = #0)
		lda #$3f
		sta player_chunk_pos_fine
		dec player_chunk_pos
		rts
	endif

	dec player_chunk_pos_fine

	if (player_chunk_pos = #0) rts

	if (player_chunk_pos_fine = #8)
		lda #$06
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$1c)
		lda #$08
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$26)
		lda #$09
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$30)
		lda #$0a
		sta ram_58
	endif

	rts
