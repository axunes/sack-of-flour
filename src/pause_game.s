.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

pause_game:
	;FIXME
	; pausing shit?

	; repeatedly mute all channels until start is lifted
	do
		lda #$00
		sta $4015
		jsr get_controller_buttons
	while (button_start_down <> #0)

	; wait until start pressed
	do
		jsr get_controller_buttons
	while (button_start_down = #0)

	; wait until it's lifted again?
	do
		jsr get_controller_buttons
	while (button_start_down <> #0)

	lda #$0f
	sta $4015
	rts
