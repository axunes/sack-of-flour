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

label_e62c: ; this is some weird ass flow control
	iny
	lda (<music_pointer),y
	sta ram_8e
	clc
	lda music_pointer
	adc #$02
	sta music_pointer
	sta ram_8c+0
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	sta ram_8c+1
	jmp sub_e679
label_e64c:
	dec ram_8e
	lda ram_8e
	cmp #$00
	beq :+
	lda ram_8c+0
	sta music_pointer
	lda ram_8c+1
	sta music_pointer+1
	jmp sub_e679
:	clc
	lda music_pointer
	adc #$01
	sta music_pointer
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	jmp sub_e679
sub_e679:
	lda #$00
	sta temp
	lda ram_8f
	cmp temp
	beq :+
	dec ram_8f
	rts
:	ldy #$00
	lda (<music_pointer),y
	cmp #$ff
	beq label_e62c
	cmp #$fe
	beq label_e64c
	sta ram_8f
	iny
	lda (<music_pointer),y
	sta ram_90
	iny
	lda #$00
	sta temp
	lda ram_90
	and #$03
	cmp temp
	bne :+
	jmp label_e6dc
:	lda #$03
	sta temp
	lda ram_90
	and #$03
	cmp temp
	bne :+
	jmp :+
	; this is some music shit right here I can tell you that much
:	lda (<music_pointer),y
	sta APU_PULSE1CTRL
	iny
	lda (<music_pointer),y
	sta APU_PULSE1RAMP
	iny
	lda (<music_pointer),y
	sta APU_PULSE1FTUNE
	iny
	lda (<music_pointer),y
	sta APU_PULSE1CTUNE
	iny
label_e6dc:
	lda #$00
	sta temp
	lda ram_90
	and #$0c
	cmp temp
	bne :+
	jmp label_e718
:	lda #$0c
	sta temp
	lda ram_90
	and #$0c
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_PULSE2CTRL
	iny
	lda (<music_pointer),y
	sta APU_PULSE2RAMP
	iny
	lda (<music_pointer),y
	sta APU_PULSE2FTUNE
	iny
	lda (<music_pointer),y
	sta APU_PULSE2STUNE
	iny
label_e718:
	lda #$00
	sta temp
	lda ram_90
	and #$30
	cmp temp
	bne :+
	jmp label_e754
:	lda #$30
	sta temp
	lda ram_90
	and #$30
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_TRICTRL1
	iny
	lda (<music_pointer),y
	sta $4009
	iny
	lda (<music_pointer),y
	sta APU_TRIFREQ1
	iny
	lda (<music_pointer),y
	sta APU_TRIFREQ2
	iny
label_e754:
	lda #$00
	sta temp
	lda ram_90
	and #$c0
	cmp temp
	bne :+
	jmp label_e790
:	lda #$c0
	sta temp
	lda ram_90
	and #$c0
	cmp temp
	bne :+
	jmp :+
:	lda (<music_pointer),y
	sta APU_NOISECTRL
	iny
	lda (<music_pointer),y
	sta $400d
	iny
	lda (<music_pointer),y
	sta APU_NOISEFREQ1
	iny
	lda (<music_pointer),y
	sta APU_NOISEFREQ2
	iny
label_e790:
	tya
	sta ram_11
	clc
	lda music_pointer
	adc ram_11
	sta music_pointer
	lda music_pointer+1
	adc #$00
	sta music_pointer+1
	clc
	lda music_pointer
	cmp ram_8a+0
	bne :+
	lda music_pointer+1
	cmp ram_8a+1
	bne :+
	lda ram_88+0
	sta music_pointer
	lda ram_88+1
	sta music_pointer+1
:	rts
