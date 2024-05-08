.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGE"

sub_d8b7:
	; FIXME
	jsr sub_dae9
	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
:	jsr vsync
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
		jsr vsync
		jsr get_controller_buttons
	while (button_start_down = #0)
label_da7e:
	jsr vsync
	jsr get_controller_buttons
	lda #$00
	sta temp
	lda button_start_down
	cmp temp
	beq :+
	jmp label_da7e
:	rts
