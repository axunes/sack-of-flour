.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_cb8c:
	ldx player_velocity
	lda player_gravity_table, x
	sta ram_62

	if (player_fall_state = #1)
		jmp sub_ce4a
		rts
	endif

	jmp sub_d023
	rts
