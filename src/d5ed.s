.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d5ed:
	lda #$00
	sta temp
	lda player_chunk_pos
	and #$04
	cmp temp
	beq :+
	lda #$31
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	jmp label_d613
:	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2

label_d613:
	mb a = player_chunk_pos << 6
	mb PPU_VRAM_ADDR1 = a + player_chunk_pos_fine
	mb PPU_VRAM_ADDR1 = #0
	rts
