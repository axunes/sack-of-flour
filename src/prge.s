.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d8b7:
	; FIXME
	jsr sub_dae9
	jsr sub_db8e
	lda #$20
	sta $2006
	lda #$48
	sta $2006
	lda #$00
	sta idx
label_d8cc:
	ldx idx
	lda $e401,x
	sta $2007
	inc idx
	lda #$0f
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d8cc
:	jsr sub_db8e
	lda #$20
	sta $2006
	lda #$ab
	sta $2006
	lda #$00
	sta idx
label_d8fa:
	ldx idx
	lda $e410,x
	sta $2007
	inc idx
	lda #$08
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d8fa
:	jsr sub_db8e
	lda #$21
	sta $2006
	lda #$01
	sta $2006
	lda #$00
	sta idx
label_d928:
	ldx idx
	lda $e419,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d928
:	jsr sub_db8e
	lda #$21
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta idx
label_d956:
	ldx idx
	lda $e437,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d956
:	jsr sub_db8e
	lda #$21
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta idx
label_d984:
	ldx idx
	lda $e455,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d984
:	jsr sub_db8e
	lda #$21
	sta $2006
	lda #$e1
	sta $2006
	lda #$00
	sta idx
label_d9b2:
	ldx idx
	lda $e473,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d9b2
:	jsr sub_db8e
	lda #$22
	sta $2006
	lda #$21
	sta $2006
	lda #$00
	sta idx
label_d9e0:
	ldx idx
	lda $e491,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_d9e0
:	jsr sub_db8e
	lda #$22
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta idx
label_da0e:
	ldx idx
	lda $e4af,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_da0e
:	jsr sub_db8e
	lda #$22
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta idx
label_da3c:
	ldx idx
	lda $e4cd,x
	sta $2007
	inc idx
	lda #$1e
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_da3c
:	jsr sub_db09
	jsr nesmus_shut_up
	lda #$00
	sta $2005
	lda #$00
	sta $2005
	do
		jsr sub_db8e
		jsr get_controller_buttons
	while (button_start_down = #0)
label_da7e:
	jsr sub_db8e
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp label_da7e
:	rts
sub_da95:
	jsr sub_dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_daa7:
	ldx idx
	lda game_over_text,x
	sta PPU_VRAM_IO
	inc idx
	lda #$09
	sta temp
	lda idx
	cmp temp
	beq :+
	jmp label_daa7
:	jsr sub_db09
	jsr nesmus_shut_up
	lda #$c8
	sta ram_71
	jsr sub_dad2
	rts
sub_dad2:
	:
	jsr sub_db8e
	dec ram_71
	lda #$00
	sta temp
	lda ram_71
	cmp temp
	beq :+
	jmp :-
:	rts
sub_dae9:
	jsr sub_db80
	jsr sub_c2e0
	jsr sub_db8e
	jsr sub_dbda
	jsr sub_db8e
	jsr sub_dc26
	jsr sub_db8e
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
sub_db09:
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta idx
label_db18:
	ldx idx ; for ?
	lda $e25a,x
	sta PPU_VRAM_IO
	inc idx
	lda #$10
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db18
	; FIXME
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta idx
label_db44:
	ldx idx ; for ?
	lda $e000,x
	sta $2007
	inc idx
	lda #$20
	sta temp
	lda idx
	cmp temp
	bne :+
	rts
:	jmp label_db44
sub_db61:
	jsr sub_d629
	jsr sub_d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta ram_22
	rts ; FIXME
	jsr sub_db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
sub_db80:
	jsr sub_db8e
	lda #$20
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	rts
