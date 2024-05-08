.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGF"

sub_e5eb: ; init music?
	lda #$00
	sta ram_8e
	lda #$00
	sta ram_8f
	lda #$1f
	sta APU_CHANCTRL
	lda #$00
	sta ram_90
	lda ram_07
	asl a
	asl a
	sta ram_91
	ldx ram_91
	lda music_start,x
	sta ram_88+0
	sta music_pointer
	inx
	lda music_start,x
	sta ram_88+1
	sta music_pointer+1
	inx
	lda music_start,x
	sta ram_8a+0
	inx
	lda music_start,x
	sta ram_8a+1
	rts
