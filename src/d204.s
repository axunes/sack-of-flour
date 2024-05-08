.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d204: ; LOOK
	if (player_pos_x1 = $8058) rts
	if (player_pos_x1 = $8059)
		lda #$01
		sta ram_27
	endif

	inc player_pos_x2

	if (player_pos_x2 = #16)
		lda #$00
		sta player_pos_x2
		inc player_pos_x1
	endif

	if (player_pos_x1 - player_chunk_pos_again > #10) jsr sub_d6e5
	rts
