.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

enable_sound_channels:
	; all channels off
	mb APU_CHANCTRL = #0
	; all channels on
	mb APU_CHANCTRL = #(STATUS_DMC_ENABLED | STATUS_NOISE_ENABLED | STATUS_TRIANGLE_ENABLED | STATUS_PULSE2_ENABLED | STATUS_PULSE1_ENABLED)
	rts
