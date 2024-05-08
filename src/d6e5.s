.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d6e5:
	if (player_chunk_pos_again = $805b)
		lda #$01
		sta ram_0b
		rts
	endif

	inc player_chunk_pos_fine_again

	if (player_chunk_pos_fine_again = #16)
		lda #$00
		sta player_chunk_pos_fine_again
		inc player_chunk_pos_again
	endif

	if (player_chunk_pos_fine = #$3f)
		lda #$00
		sta player_chunk_pos_fine
		inc player_chunk_pos
		rts
	endif

	inc player_chunk_pos_fine

	if (player_chunk_pos_fine = #10)
		lda #$01
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$1e)
		lda #$03
		sta ram_58
	endif

	if (player_chunk_pos_fine = #$28)
		lda #$04
		sta ram_58
	endif

	if (player_chunk_pos_fine = #50)
		lda #$05
		sta ram_58
	endif

	rts
	