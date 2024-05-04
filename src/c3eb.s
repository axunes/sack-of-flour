.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_c3eb:
	jsr sub_db8e
	
	if (ram_53 = #1)
		jsr sub_c47d
		rts
	endif

	if (ram_53 = #3)
		jsr sub_c414
		rts
	endif

	jsr sub_c44b
	rts
