.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d825: ; do level title shit
	jsr sub_dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda level_title,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne :-
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$68
	sta PPU_VRAM_ADDR2
	ldx #$00
:	lda level_name,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne :-
	jsr sub_db8e
	lda player_lives
	sta idx
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$04
	sta PPU_VRAM_ADDR2
label_d869:
	lda #$ee
	sta PPU_VRAM_IO
	lda #$ef
	sta PPU_VRAM_IO
	dec idx
	lda #$00
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d869
:	lda player_lives
	sta idx
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$24
	sta PPU_VRAM_ADDR2
label_d896:
	lda #$fe
	sta PPU_VRAM_IO
	lda #$ff
	sta PPU_VRAM_IO
	dec idx
	lda #$00
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d896
:	jsr sub_db09
	rts
