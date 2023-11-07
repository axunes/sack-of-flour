	.include "nes.inc"

.segment "HEADER"
	.byte $4E, $45, $53, $1A, $08, $04, $41, $00, $00, $00, $00, $00, $00, $00, $00, $00

.segment "ZP"
.repeat $ff, i
.ident(.sprintf("ram_%04x", i)): .res 1
.endrepeat

.segment "PRG0"
	.incbin "SOF_v1d.nes", $00010, $2000
.segment "PRG1"
	.incbin "SOF_v1d.nes", $02010, $2000
.segment "PRG2"
	.incbin "SOF_v1d.nes", $04010, $2000
.segment "PRG3"
	.incbin "SOF_v1d.nes", $06010, $2000
.segment "PRG4"
	.incbin "SOF_v1d.nes", $08010, $2000
.segment "PRG5"
	.incbin "SOF_v1d.nes", $0A010, $2000
.segment "PRG6"
	.incbin "SOF_v1d.nes", $0C010, $2000
.segment "PRG7"
	.incbin "SOF_v1d.nes", $0E010, $2000
.segment "PRG8"
	.incbin "SOF_v1d.nes", $10010, $2000
.segment "PRG9"
	.incbin "SOF_v1d.nes", $12010, $2000
.segment "PRGA"
	.incbin "SOF_v1d.nes", $14010, $2000
.segment "PRGB"
	.incbin "SOF_v1d.nes", $16010, $2000
.segment "PRGC"
	.incbin "SOF_v1d.nes", $18010, $2000
.segment "PRGD"
	.incbin "SOF_v1d.nes", $1A010, $2000

.segment "PRGE"
.org $c000
	jsr $c35a
	jsr $c236
	jsr $db8e
	jsr $db8e
	jsr $f5dd
	jsr $dbda
	lda #$30
	sta PpuControl_2000
	lda #$04
	sta PpuMask_2001
	jsr $dc26
	jsr $c1c2
	jsr $db8e
	lda #$30
	sta PpuControl_2000
	lda #$1c
	sta PpuMask_2001
	lda #$00
	sta ram_0006
	jsr $c26a
	lda #$00
	sta ram_0007
	jsr $e5eb
	lda #$03
	sta ram_0008
	jsr $dc71
	jsr $cabb
	jsr $d539
	jsr $c7ec
	jsr $d2bb
	jsr $e8ed
	jsr $c24e
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	beq $c069
	jsr $e679
	jsr $c17f
	jsr $e816
	jsr $db8e
	jsr $db61
	lda #$00
	sta ram_0009
	lda ram_000b
	cmp ram_0009
	beq $c085
	jmp $c0e9
	lda #$fc
	sta ram_0009
	lda ram_000c
	and #$fc
	cmp ram_0009
	bne $c0aa
	jsr $c9e2
	lda #$02
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bne $c0a7
	jmp $c04a
	jmp $c0cd
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $c0ca
	lda #$00
	sta ram_0009
	lda ram_000d
	cmp ram_0009
	bne $c0ca
	jsr $cab7
	.byte $4C, $CD, $C0
	jmp $c04a
	lda #$00
	sta ram_0009
	lda ram_0008
	cmp ram_0009
	bne $c0e3
	jsr $da95
	jsr $c3eb
	jmp $c000
	jsr $cabb
	jmp $c04a
	jsr $e7f4
	jmp $c0ef
	jsr $c241
	lda #$1e
	sta ram_000e
	jsr $db8e
	jsr $d5ed
	dec ram_000e
	lda #$00
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $c110
	jmp $c0f7
	jsr $d5c3
	lda #$01
	sta ram_000f
	jsr $db8e
	jsr $d2bb
	jsr $db61
	lda ram_000c
	sec
	sbc #$03
	sta ram_000c
	lda #$00
	sta ram_0009
	lda ram_000c
	and #$f8
	cmp ram_0009
	beq $c13c
	jmp $c118
	lda #$1e
	sta ram_000e
	jsr $db8e
	jsr $d5ed
	dec ram_000e
	lda #$00
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $c15a
	jmp $c141
	jmp $c15d
	inc ram_0006
	lda #$05
	sta ram_0009
	lda ram_0006
	cmp ram_0009
	bne $c170
	jmp $d8b7
	jsr $c26a
	jsr $c1c2
	jsr $dc71
	jsr $cabb
	jmp $c04a
	lda ram_0004
	pha
	lda #$0d
	pha
	lda ram_0010
	clc
	adc ram_0086
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_0004
	lda ram_0005
	pha
	lda #$11
	pha
	lda ram_0012
	clc
	adc ram_005b
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_0005
	rts
	lda #$00
	sta ram_0013
	lda #$00
	sta ram_0014
	lda #$00
	sta ram_0015
	lda #$00
	sta ram_0016
	lda #$00
	sta ram_0017
	lda #$00
	sta ram_0018
	lda #$00
	sta ram_0019
	lda #$00
	sta ram_001a
	lda #$00
	sta ram_001b
	lda #$01
	sta ram_001c
	lda #$00
	sta ram_000e
	lda #$00
	sta ram_001d
	lda #$00
	sta ram_001e
	lda #$00
	sta ram_001f
	lda #$00
	sta ram_0020
	lda #$00
	sta ram_0021
	lda #$10
	sta ram_0022
	lda #$00
	sta ram_000b
	lda #$00
	sta ram_0023
	lda #$20
	sta ram_0024
	lda #$00
	sta ram_0025
	lda #$00
	sta ram_0026
	lda #$00
	sta ram_0027
	rts
	lda #$00
	sta ApuStatus_4015
	lda #$1f
	sta ApuStatus_4015
	rts
	ldx #$00
	lda #$00
	sta Sq0Duty_4000,x
	inx
	cpx #$10
	bne $c245
	rts
	lda #$0f
	sta ram_0009
	lda ram_0022
	cmp ram_0009
	bpl $c25c
	rts
	ldx ram_0022
	lda #$f5
	sta $0300,x
	inc ram_0022
	jmp $c24e
	lda ram_0006
	asl a
	sta ram_0028
	lda #$06
	sta $8000
	lda ram_0028
	sta $8001
	lda #$07
	sta $8000
	lda ram_0028
	clc
	adc #$01
	sta $8001
	rts
	lda #$00
	sta $8000
	lda #$08
	sta $8001
	lda #$01
	sta $8000
	lda #$0a
	sta $8001
	lda ram_0006
	asl a
	asl a
	clc
	adc #$0c
	sta ram_0028
	lda #$02
	sta $8000
	lda ram_0028
	sta $8001
	lda #$03
	sta $8000
	lda ram_0028
	clc
	adc #$01
	sta $8001
	lda #$04
	sta $8000
	lda ram_0028
	clc
	adc #$02
	sta $8001
	lda #$05
	sta $8000
	lda ram_0028
	clc
	adc #$03
	sta $8001
	rts
	lda #$00
	sta $8000
	lda #$04
	sta $8001
	lda #$01
	sta $8000
	lda #$06
	sta $8001
	lda #$02
	sta $8000
	lda #$04
	sta $8001
	lda #$03
	sta $8000
	lda #$05
	sta $8001
	lda #$04
	sta $8000
	lda #$06
	sta $8001
	lda #$05
	sta $8000
	lda #$07
	sta $8001
	rts
	lda #$00
	sta $8000
	lda #$00
	sta $8001
	lda #$01
	sta $8000
	lda #$02
	sta $8001
	lda #$02
	sta $8000
	lda #$00
	sta $8001
	lda #$03
	sta $8000
	lda #$01
	sta $8001
	lda #$04
	sta $8000
	lda #$02
	sta $8001
	lda #$05
	sta $8000
	lda #$03
	sta $8001
	rts
	jmp $c31d
	.byte $60
	jsr $dc6b
	jsr $db8e
	jsr $dbc3
	jsr $dc26
	jsr $db8e
	ldx #$00
	lda #$f5
	sta ram_002a,x
	sta ram_0032,x
	sta ram_0042,x
	sta ram_004a,x
	sta ram_003a,x
	inx
	cpx #$08
	bne $c371
	lda #$07
	sta ram_0052
	lda #$0b
	sta ram_0029
	jsr $db8e
	lda #$07
	sta ram_0052
	jsr $db8e
	jsr $c4b4
	jsr $db8e
	jsr $c5aa
	jsr $db8e
	jsr $c6a0
	dec ram_0052
	lda #$ff
	sta ram_0009
	lda ram_0052
	cmp ram_0009
	beq $c3bc
	jmp $c397
	lda #$00
	sta ram_0052
	jsr $db8e
	jsr $c706
	inc ram_0052
	lda #$05
	sta ram_0009
	lda ram_0052
	cmp ram_0009
	beq $c3da
	jmp $c3c1
	jsr $db8e
	jsr $c414
	lda #$00
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	rts
	jsr $db8e
	lda #$01
	sta ram_0009
	lda ram_0053
	cmp ram_0009
	bne $c3ff
	jsr $c47d
	rts
	lda #$03
	sta ram_0009
	lda ram_0053
	cmp ram_0009
	bne $c410
	jsr $c414
	rts
	jsr $c44b
	rts
	lda #$55
	sta ram_0054
	lda #$00
	sta ram_0053
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda $8004,x
	sta PpuData_2007
	inc ram_000e
	lda #$20
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bne $c447
	rts
	jmp $c42d
	.byte $60
	lda #$01
	clc
	adc ram_0053
	sta ram_0053
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta ram_000e
	lda #$0e
	sta PpuData_2007
	inc ram_000e
	lda #$20
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bne $c479
	rts
	jmp $c463
	.byte $60
	lda #$aa
	sta ram_0054
	lda #$02
	sta ram_0053
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda $8024,x
	sta PpuData_2007
	inc ram_000e
	lda #$20
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bne $c4b0
	rts
	jmp $c496
	.byte $60
	lda ram_0052
	and #$07
	sta ram_0055
	ldx ram_0055
	lda ram_002a,x
	sta ram_0011
	lda ram_0052
	sta ram_0009
	lda ram_0011
	cmp ram_0009
	bne $c4d4
	rts
	ldx ram_0055
	lda ram_0052
	sta ram_002a,x
	lda ram_0052
	asl a
	tax
	lda $e13a,x
	sta ram_0000
	inx
	lda $e13a,x
	sta ram_0001
	ldx ram_0055
	lda $e10a,x
	sta ram_0056
	ldx ram_0055
	lda $e112,x
	sta ram_0057
	ldy #$00
	ldx #$00
	lda ram_0056
	sta PpuAddr_2006
	lda ram_0057
	sta PpuAddr_2006
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	dey
	dey
	dey
	clc
	lda ram_0057
	adc #$20
	sta ram_0057
	lda ram_0056
	adc #$00
	sta ram_0056
	lda ram_0056
	sta PpuAddr_2006
	lda ram_0057
	sta PpuAddr_2006
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	clc
	cpy #$20
	beq $c5a9
	clc
	lda ram_0057
	adc #$20
	sta ram_0057
	lda ram_0056
	adc #$00
	sta ram_0056
	jmp $c505
	rts
	lda ram_0052
	and #$07
	sta ram_0055
	ldx ram_0055
	lda ram_0032,x
	sta ram_0011
	lda ram_0052
	sta ram_0009
	lda ram_0011
	cmp ram_0009
	bne $c5ca
	rts
	ldx ram_0055
	lda ram_0052
	sta ram_0032,x
	lda ram_0052
	asl a
	tax
	lda $e13a,x
	sta ram_0000
	inx
	lda $e13a,x
	sta ram_0001
	ldx ram_0055
	lda $e11a,x
	sta ram_0056
	ldx ram_0055
	lda $e122,x
	sta ram_0057
	ldy #$20
	ldx #$00
	lda ram_0056
	sta PpuAddr_2006
	lda ram_0057
	sta PpuAddr_2006
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	dey
	dey
	dey
	clc
	lda ram_0057
	adc #$20
	sta ram_0057
	lda ram_0056
	adc #$00
	sta ram_0056
	lda ram_0056
	sta PpuAddr_2006
	lda ram_0057
	sta PpuAddr_2006
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	lda ($00),y
	adc #$10
	sta PpuData_2007
	adc #$01
	sta PpuData_2007
	iny
	clc
	cpy #$3c
	beq $c69f
	clc
	lda ram_0057
	adc #$20
	sta ram_0057
	lda ram_0056
	adc #$00
	sta ram_0056
	jmp $c5fb
	rts
	lda ram_0052
	and #$07
	sta ram_0055
	ldx ram_0055
	lda ram_003a,x
	sta ram_0011
	lda ram_0052
	sta ram_0009
	lda ram_0011
	cmp ram_0009
	bne $c6c0
	rts
	ldx ram_0055
	lda ram_0052
	sta ram_003a,x
	ldx ram_0055
	lda $e12a,x
	sta ram_0056
	ldx ram_0055
	lda $e132,x
	sta ram_0057
	ldy #$3c
	lda ram_0056
	sta PpuAddr_2006
	lda ram_0057
	sta PpuAddr_2006
	lda ($00),y
	sta PpuData_2007
	iny
	lda ($00),y
	sta PpuData_2007
	iny
	cpy #$4c
	beq $c705
	clc
	lda ram_0057
	adc #$08
	sta ram_0057
	jmp $c6dd
	rts
	lda ram_0052
	and #$07
	sta ram_0055
	ldx ram_0055
	lda ram_0042,x
	sta ram_0011
	lda ram_0052
	sta ram_0009
	lda ram_0011
	cmp ram_0009
	bne $c726
	rts
	ldx ram_0055
	lda ram_0052
	sta ram_0042,x
	lda ram_0052
	asl a
	tax
	lda $e13a,x
	sta ram_0000
	inx
	lda $e13a,x
	sta ram_0001
	ldy #$4c
	clc
	lda ram_0052
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_0026
	tax
	lda ($00),y
	iny
	sta ram_0011
	and #$03
	sta $0400,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0400,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0400,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0400,x
	lsr ram_0011
	lsr ram_0011
	inx
	cpy #$54
	bne $c750
	ldy #$54
	clc
	lda ram_0052
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ram_0026
	tax
	lda ($00),y
	iny
	sta ram_0011
	and #$03
	sta $0200,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0200,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0200,x
	lsr ram_0011
	lsr ram_0011
	inx
	lda ram_0011
	and #$03
	sta $0200,x
	lsr ram_0011
	lsr ram_0011
	inx
	cpy #$5c
	bne $c7a2
	nop
	nop
	nop
	nop
	nop
	nop
	rts
	lda #$00
	sta ram_0058
	lda #$00
	sta ram_0059
	lda #$00
	sta ram_0012
	lda #$00
	sta ram_005a
	lda #$00
	sta ram_0009
	lda ram_001a
	cmp ram_0009
	beq $c810
	jsr $c99e
	lda #$00
	sta ram_0009
	lda ram_0015
	cmp ram_0009
	beq $c820
	jsr $dd2d
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $c850
	lda #$00
	sta ram_0009
	lda ram_001c
	cmp ram_0009
	bne $c83d
	jsr $d204
	.byte $A9, $01, $8D, $09, $00, $AD, $1C, $00
	.byte $CD, $09, $00, $D0, $03, $20, $55, $D2
	.byte $4C, $84, $C9
	lda #$00
	sta ram_0009
	lda ram_0016
	cmp ram_0009
	beq $c862
	lda #$01
	sta ram_0012
	lda #$00
	sta ram_0009
	lda ram_0017
	cmp ram_0009
	beq $c88c
	lda #$01
	sta ram_001c
	jsr $cbaa
	lda #$00
	sta ram_0009
	lda ram_0014
	cmp ram_0009
	beq $c887
	jsr $cbaa
	lda #$01
	sta ram_0059
	lda #$00
	sta ram_0009
	lda ram_0018
	cmp ram_0009
	beq $c8b6
	lda #$00
	sta ram_001c
	jsr $ccfa
	lda #$00
	sta ram_0009
	lda ram_0014
	cmp ram_0009
	beq $c8b1
	jsr $ccfa
	lda #$01
	sta ram_0059
	lda #$00
	sta ram_0009
	lda ram_0013
	cmp ram_0009
	bne $c8dd
	lda #$00
	sta ram_0009
	lda ram_005b
	cmp ram_0009
	beq $c8d5
	lda #$0a
	sta ram_0010
	lda #$00
	sta ram_005b
	jmp $c984
	lda #$00
	sta ram_0009
	lda ram_0013
	cmp ram_0009
	beq $c90c
	lda #$01
	sta ram_0009
	lda ram_005c
	cmp ram_0009
	bne $c90c
	lda #$23
	sta ram_0010
	lda #$01
	sta ram_000f
	lda #$01
	sta ram_005a
	jsr $d5d8
	.byte $4C, $84, $C9
	lda #$00
	sta ram_0009
	lda ram_0013
	cmp ram_0009
	beq $c92c
	lda #$00
	sta ram_0009
	lda ram_005b
	cmp ram_0009
	beq $c92c
	dec ram_005b
	jmp $c984
	lda #$00
	sta ram_0009
	lda ram_0013
	cmp ram_0009
	beq $c984
	lda #$00
	sta ram_0009
	lda ram_005d
	cmp ram_0009
	beq $c984
	jsr $d584
	lda #$01
	sta ram_000f
	lda #$28
	sta ram_0010
	lda #$03
	sta ram_0009
	lda ram_0006
	cmp ram_0009
	bne $c965
	lda #$2d
	sta ram_0010
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $c977
	lda #$26
	sta ram_0010
	lda #$00
	sta ram_005d
	lda #$0f
	sta ram_005b
	jmp $c984
	jsr $cb8c
	lda #$00
	sta ram_0009
	lda ram_000d
	cmp ram_0009
	beq $c997
	dec ram_000d
	jsr $ee7e
	jsr $d4d9
	rts
	.byte $A9, $00, $8D, $15, $40, $20, $39, $D5
	.byte $A9, $00, $8D, $09, $00, $AD, $1A, $00
	.byte $CD, $09, $00, $F0, $03, $4C, $9E, $C9
	.byte $20, $39, $D5, $A9, $00, $8D, $09, $00
	.byte $AD, $1A, $00, $CD, $09, $00, $D0, $03
	.byte $4C, $B6, $C9, $20, $39, $D5, $A9, $00
	.byte $8D, $09, $00, $AD, $1A, $00, $CD, $09
	.byte $00, $F0, $03, $4C, $C9, $C9, $A9, $0F
	.byte $8D, $15, $40, $60
	lda $805c
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $c9f3
	jmp $ca36
	lda $805d
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $ca04
	jmp $ca36
	lda $805e
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $ca15
	jmp $ca36
	lda #$00
	sta ram_000e
	jsr $db8e
	jsr $d5ed
	inc ram_000e
	lda #$1e
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $ca33
	jmp $ca1a
	jmp $cab7
	jsr $dc26
	lda $805f
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	beq $ca6c
	jsr $e679
	jsr $d204
	jsr $d204
	jsr $d204
	jsr $db8e
	lda #$00
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	beq $ca66
	jsr $d629
	jsr $d5ed
	jmp $ca39
	lda #$02
	sta ram_000c
	rts
	lda #$00
	sta ram_0009
	lda ram_000d
	cmp ram_0009
	beq $ca80
	rts
	lda #$96
	sta ram_000d
	lda #$01
	sta ram_000f
	lda #$0a
	sta ram_0010
	dec ram_000a
	lda #$ff
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $caa4
	lda #$00
	sta ram_000a
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $cab6
	lda #$37
	sta ram_0010
	rts
	dec ram_0008
	rts
	jsr $c241
	jsr $dbc3
	jsr $dbda
	lda #$03
	sta ram_000a
	lda #$64
	sta ram_000d
	lda #$01
	sta ram_001c
	lda #$0a
	sta ram_000c
	lda #$00
	sta ram_005f
	lda #$02
	sta ram_005e
	lda #$01
	sta ram_0009
	lda ram_0027
	cmp ram_0009
	bne $caf5
	lda $8059
	sta ram_005e
	lda #$00
	sta ram_0010
	lda #$00
	sta ram_000f
	lda #$ff
	sta ram_0060
	jsr $d825
	lda #$00
	sta ram_0061
	jsr $db8e
	inc ram_0061
	lda #$78
	sta ram_0009
	lda ram_0061
	cmp ram_0009
	bpl $cb22
	jmp $cb0c
	lda #$00
	sta ram_0061
	jsr $dbc3
	jsr $c35e
	lda #$00
	sta ram_0007
	jsr $e5eb
	lda #$0f
	sta ApuStatus_4015
	lda #$00
	sta ram_001e
	lda #$00
	sta ram_001f
	lda #$00
	sta ram_0020
	lda #$00
	sta ram_0021
	lda ram_0020
	sta ram_0009
	lda ram_005e
	sec
	sbc #$06
	cmp ram_0009
	bmi $cb75
	jsr $d6e5
	lda #$00
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	beq $cb72
	jsr $d629
	jmp $cb4e
	jsr $c28b
	jsr $db8e
	jsr $e7c4
	lda #$00
	sta ram_005d
	lda #$00
	sta ram_0025
	jsr $d2bb
	rts
	ldx ram_0010
	lda $e040,x
	sta ram_0062
	lda #$01
	sta ram_0009
	lda ram_000f
	cmp ram_0009
	bne $cba6
	jmp $ce4a
	.byte $60
	jmp $d023
	.byte $60
	lda #$03
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $cbba
	jmp $d204
	lda ram_005e
	asl a
	asl a
	asl a
	clc
	adc #$08
	sta ram_0063
	lda #$7f
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bmi $cc2b
	lda #$81
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bpl $cc2b
	ldx ram_0063
	lda $0200,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cbfa
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cc0a
	jmp $d204
	lda ram_0063
	clc
	adc #$06
	tax
	lda $0400,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cc28
	rts
	jmp $d204
	lda #$7f
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bpl $cc97
	lda ram_000c
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0400,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cc66
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cc76
	jmp $d204
	lda ram_0066
	sec
	sbc #$01
	tax
	lda $0400,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cc94
	rts
	jmp $d204
	lda ram_000c
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0200,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $ccc8
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $ccd8
	jmp $d204
	lda ram_0066
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $ccf6
	rts
	jsr $d204
	rts
	lda #$00
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	beq $cd0a
	jmp $d255
	lda ram_005e
	sec
	sbc #$01
	asl a
	asl a
	asl a
	sta ram_0063
	lda #$7f
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bmi $cd7b
	lda #$81
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bpl $cd7b
	ldx ram_0063
	lda $0200,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cd4a
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cd5a
	jmp $d255
	lda ram_0063
	clc
	adc #$06
	tax
	lda $0400,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cd78
	rts
	jmp $d255
	lda #$7f
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bpl $cde7
	lda ram_000c
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0400,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cdb6
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cdc6
	jmp $d255
	lda ram_0066
	sec
	sbc #$01
	tax
	lda $0400,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cde4
	rts
	jmp $d255
	lda ram_000c
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0200,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $ce18
	rts
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $ce28
	jmp $d255
	lda ram_0066
	sec
	sbc #$01
	tax
	lda $0200,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $ce46
	rts
	jmp $d255
	.byte $60
	lda #$00
	sta ram_0009
	lda ram_000c
	and #$f8
	cmp ram_0009
	bne $ce6f
	dec ram_0010
	lda #$00
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bne $ce6e
	lda #$00
	sta ram_000f
	rts
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $ce9f
	jsr $c241
	.byte $AD, $0C, $00, $38, $ED, $62, $00, $8D
	.byte $0C, $00, $CE, $10, $00, $A9, $00, $8D
	.byte $09, $00, $AD, $10, $00, $CD, $09, $00
	.byte $D0, $05, $A9, $00, $8D, $0F, $00, $60
	lda ram_005e
	asl a
	asl a
	asl a
	sta ram_0063
	lda #$97
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bmi $ceb8
	jmp $cf71
	lda ram_000c
	pha
	lda #$e8
	sec
	sbc ram_0062
	sta ram_0011
	pla
	clc
	adc ram_0011
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cef7
	lda ram_000c
	pha
	lda #$ef
	sec
	sbc ram_0062
	sta ram_0011
	pla
	clc
	adc ram_0011
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0400,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cf1d
	jmp $d01a
	lda #$00
	sta ram_0064
	lda #$04
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $cf3e
	beq $cf3e
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0400,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cf51
	jmp $d01a
	lda ram_000c
	sec
	sbc ram_0062
	sta ram_000c
	dec ram_0010
	lda #$00
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bne $cf70
	lda #$00
	sta ram_000f
	rts
	lda ram_000c
	clc
	adc #$79
	sec
	sbc ram_0062
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $cfa0
	lda ram_000c
	clc
	adc #$7f
	sec
	sbc ram_0062
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0200,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $cfc6
	jmp $d01a
	lda #$00
	sta ram_0064
	lda #$04
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $cfe7
	beq $cfe7
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0200,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $cffa
	jmp $d01a
	lda ram_000c
	sec
	sbc ram_0062
	sta ram_000c
	dec ram_0010
	lda #$00
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bne $d019
	lda #$00
	sta ram_000f
	rts
	lda #$00
	sta ram_000f
	jsr $dc92
	rts
	lda #$00
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $d05d
	lda ram_000c
	clc
	adc ram_0062
	sta ram_000c
	lda #$00
	sta ram_0009
	lda ram_0062
	cmp ram_0009
	beq $d04c
	lda #$00
	sta ram_000f
	lda #$3c
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bpl $d05c
	inc ram_0010
	rts
	lda ram_005e
	asl a
	asl a
	asl a
	sta ram_0063
	lda #$e8
	sta ram_0009
	lda ram_000c
	and #$f8
	cmp ram_0009
	bne $d080
	lda ram_000c
	clc
	adc ram_0062
	sta ram_000c
	rts
	lda #$f0
	sta ram_0009
	lda ram_000c
	and #$f0
	cmp ram_0009
	bne $d09a
	lda ram_000c
	clc
	adc ram_0062
	sta ram_000c
	rts
	lda #$7f
	sta ram_0009
	lda ram_000c
	cmp ram_0009
	bmi $d0aa
	jmp $d144
	lda ram_000c
	clc
	adc ram_0062
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0400,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $d0de
	jmp $d1e1
	lda #$00
	sta ram_0064
	lda #$04
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $d0ff
	beq $d0ff
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0400,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $d112
	jmp $d1e1
	lda ram_000c
	clc
	adc ram_0062
	sta ram_000c
	lda #$00
	sta ram_0009
	lda ram_0062
	cmp ram_0009
	beq $d12e
	lda #$00
	sta ram_000f
	lda #$3c
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bpl $d13e
	inc ram_0010
	lda #$00
	sta ram_005d
	rts
	lda ram_000c
	clc
	adc ram_0062
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0200,x
	sta ram_0067
	lda #$00
	sta ram_0009
	lda ram_0067
	and ram_0054
	cmp ram_0009
	beq $d17b
	jmp $d1e1
	lda #$00
	sta ram_0064
	lda #$04
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $d19c
	beq $d19c
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0200,x
	sta ram_0064
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $d1af
	jmp $d1e1
	lda ram_000c
	clc
	adc ram_0062
	sta ram_000c
	lda #$00
	sta ram_0009
	lda ram_0062
	cmp ram_0009
	beq $d1cb
	lda #$00
	sta ram_000f
	lda #$3c
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bpl $d1db
	inc ram_0010
	lda #$00
	sta ram_005d
	rts
	lda #$02
	sta ram_000f
	lda #$11
	sta ram_0009
	lda ram_0010
	cmp ram_0009
	bmi $d1f9
	lda #$0c
	sta ram_0010
	rts
	lda #$00
	sta ram_0010
	lda #$01
	sta ram_005d
	rts
	lda $8058
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $d213
	rts
	lda $8059
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $d226
	lda #$01
	sta ram_0027
	inc ram_005f
	lda #$10
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bne $d23e
	lda #$00
	sta ram_005f
	inc ram_005e
	lda #$0a
	sta ram_0009
	lda ram_005e
	sec
	sbc ram_0020
	cmp ram_0009
	bmi $d254
	beq $d254
	jsr $d6e5
	rts
	lda #$00
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $d270
	lda #$08
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $d270
	rts
	lda $805a
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $d28c
	lda #$01
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $d28c
	rts
	dec ram_005f
	lda #$ff
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bne $d2a4
	lda #$0f
	sta ram_005f
	dec ram_005e
	lda #$06
	sta ram_0009
	lda ram_005e
	sec
	sbc ram_0020
	cmp ram_0009
	bpl $d2ba
	beq $d2ba
	jsr $d773
	rts
	lda #$20
	sta ram_0024
	inc ram_0025
	lda #$00
	sta ram_0009
	lda ram_0025
	and #$08
	cmp ram_0009
	beq $d2d7
	lda #$28
	sta ram_0024
	lda #$00
	sta ram_0009
	lda ram_0059
	cmp ram_0009
	bne $d2e9
	lda #$00
	sta ram_0025
	lda #$02
	sta ram_0009
	lda ram_000f
	cmp ram_0009
	beq $d2fb
	lda #$30
	sta ram_0024
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $d30d
	lda #$38
	sta ram_0024
	lda ram_000c
	sec
	sbc #$20
	sta ram_0068
	lda ram_005e
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_005f
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sec
	sbc #$01
	sta ram_0069
	lda #$01
	sta ram_006a
	lda #$00
	sta ram_0009
	lda ram_000d
	cmp ram_0009
	beq $d351
	lda ram_000d
	and #$03
	sta ram_006a
	lda #$00
	sta ram_0009
	lda ram_005a
	cmp ram_0009
	beq $d391
	lda ram_0069
	clc
	adc #$04
	sta ram_006b
	lda ram_000c
	sec
	sbc #$02
	sta ram_006c
	lda #$03
	sta ram_006d
	lda #$00
	sta ram_0009
	lda ram_001b
	and #$02
	cmp ram_0009
	beq $d389
	lda #$43
	sta ram_006d
	lda #$1e
	sta ram_006e
	jsr $f4f5
	lda #$01
	sta ram_0009
	lda ram_001c
	cmp ram_0009
	bne $d3a1
	jmp $d3a4
	jmp $d43a
	ldx #$00
	lda ram_0068
	sta $0300,x
	ldx #$01
	lda ram_0024
	sta $0300,x
	ldx #$02
	lda ram_006a
	sta $0300,x
	ldx #$03
	lda ram_0069
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc ram_0068
	sta $0300,x
	ldx #$05
	lda #$02
	clc
	adc ram_0024
	sta $0300,x
	ldx #$06
	lda ram_006a
	sta $0300,x
	ldx #$07
	lda ram_0069
	sta $0300,x
	ldx #$08
	lda ram_0068
	sta $0300,x
	ldx #$09
	lda #$04
	clc
	adc ram_0024
	sta $0300,x
	ldx #$0a
	lda ram_006a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc ram_0069
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc ram_0068
	sta $0300,x
	ldx #$0d
	lda #$06
	clc
	adc ram_0024
	sta $0300,x
	ldx #$0e
	lda ram_006a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc ram_0069
	sta $0300,x
	rts
	lda ram_006a
	clc
	adc #$40
	sta ram_006a
	ldx #$00
	lda ram_0068
	sta $0300,x
	ldx #$01
	lda #$04
	clc
	adc ram_0024
	sta $0300,x
	ldx #$02
	lda ram_006a
	sta $0300,x
	ldx #$03
	lda ram_0069
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc ram_0068
	sta $0300,x
	ldx #$05
	lda #$06
	clc
	adc ram_0024
	sta $0300,x
	ldx #$06
	lda ram_006a
	sta $0300,x
	ldx #$07
	lda ram_0069
	sta $0300,x
	ldx #$08
	lda ram_0068
	sta $0300,x
	ldx #$09
	lda ram_0024
	sta $0300,x
	ldx #$0a
	lda ram_006a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc ram_0069
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc ram_0068
	sta $0300,x
	ldx #$0d
	lda #$02
	clc
	adc ram_0024
	sta $0300,x
	ldx #$0e
	lda ram_006a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc ram_0069
	sta $0300,x
	rts
	lda #$00
	sta ram_000e
	lda ram_000a
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bmi $d4ed
	rts
	ldx ram_0022
	lda #$08
	sta $0300,x
	lda #$01
	clc
	adc ram_0022
	tax
	lda #$02
	sta $0300,x
	lda #$02
	clc
	adc ram_0022
	tax
	lda #$02
	sta $0300,x
	lda #$03
	clc
	adc ram_0022
	tax
	lda #$10
	pha
	lda ram_000e
	asl a
	asl a
	asl a
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta $0300,x
	lda ram_0022
	clc
	adc #$04
	sta ram_0022
	inc ram_000e
	jmp $d4de
	.byte $60, $60
	lda #$01
	sta Ctrl1_4016
	lda #$00
	sta Ctrl1_4016
	lda Ctrl1_4016
	and #$01
	sta ram_0013
	lda Ctrl1_4016
	and #$01
	sta ram_0014
	lda Ctrl1_4016
	and #$01
	sta ram_0019
	lda Ctrl1_4016
	and #$01
	sta ram_001a
	lda Ctrl1_4016
	and #$01
	sta ram_0015
	lda Ctrl1_4016
	and #$01
	sta ram_0016
	lda Ctrl1_4016
	and #$01
	sta ram_0018
	lda Ctrl1_4016
	and #$01
	sta ram_0017
	rts
	lda #$9f
	sta Sq1Duty_4004
	lda #$8c
	sta Sq1Sweep_4005
	lda #$4d
	sta Sq1Timer_4006
	lda #$95
	sta Sq1Length_4007
	rts
	.byte $A9, $9F, $8D, $00, $40, $A9, $84, $8D
	.byte $01, $40, $A9, $D3, $8D, $02, $40, $A9
	.byte $FC, $8D, $03, $40, $60, $A9, $88, $8D
	.byte $00, $40, $A9, $48, $8D, $01, $40, $A9
	.byte $25, $8D, $02, $40, $A9, $4B, $8D, $03
	.byte $40, $60
	lda #$0b
	sta NoiseVolume_400C
	lda #$ff
	sta $400d
	lda #$ff
	sta NoisePeriod_400E
	lda #$08
	sta NoiseLength_400F
	rts
	.byte $A9, $0F, $8D, $0C, $40, $A9, $FF, $8D
	.byte $0D, $40, $A9, $F9, $8D, $0E, $40, $A9
	.byte $08, $8D, $0F, $40, $60
	lda #$00
	sta ram_0009
	lda ram_001e
	and #$04
	cmp ram_0009
	beq $d609
	lda #$31
	sta PpuControl_2000
	lda #$1c
	sta PpuMask_2001
	jmp $d613
	lda #$30
	sta PpuControl_2000
	lda #$1c
	sta PpuMask_2001
	lda ram_001e
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc ram_001f
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	rts
	lda #$00
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d637
	rts
	lda #$06
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bmi $d647
	jmp $d696
	lda ram_001e
	clc
	adc #$05
	sta ram_0052
	lda #$01
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d660
	jsr $c4b4
	lda #$03
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d670
	jsr $c5aa
	lda #$04
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d680
	jsr $c6a0
	lda #$05
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d690
	jsr $c706
	lda #$00
	sta ram_0058
	rts
	lda ram_001e
	sec
	sbc #$01
	sta ram_0052
	lda #$06
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d6af
	jsr $c4b4
	lda #$08
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d6bf
	jsr $c5aa
	lda #$09
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d6cf
	jsr $c6a0
	lda #$0a
	sta ram_0009
	lda ram_0058
	cmp ram_0009
	bne $d6df
	jsr $c706
	lda #$00
	sta ram_0058
	rts
	lda $805b
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bne $d6f9
	lda #$01
	sta ram_000b
	rts
	inc ram_0021
	lda #$10
	sta ram_0009
	lda ram_0021
	cmp ram_0009
	bne $d711
	lda #$00
	sta ram_0021
	inc ram_0020
	lda #$3f
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d727
	lda #$00
	sta ram_001f
	inc ram_001e
	rts
	inc ram_001f
	lda #$0a
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d73c
	lda #$01
	sta ram_0058
	lda #$1e
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d74e
	lda #$03
	sta ram_0058
	lda #$28
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d760
	lda #$04
	sta ram_0058
	lda #$32
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d772
	lda #$05
	sta ram_0058
	rts
	lda #$00
	sta ram_0009
	lda ram_001e
	cmp ram_0009
	bne $d78e
	lda #$01
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bpl $d78e
	rts
	lda $805b
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bne $d79d
	rts
	dec ram_0021
	lda #$ff
	sta ram_0009
	lda ram_0021
	cmp ram_0009
	bne $d7b5
	lda #$0f
	sta ram_0021
	dec ram_0020
	lda #$00
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d7cb
	lda #$3f
	sta ram_001f
	dec ram_001e
	rts
	dec ram_001f
	lda #$00
	sta ram_0009
	lda ram_001e
	cmp ram_0009
	bne $d7dc
	rts
	lda #$08
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d7ee
	lda #$06
	sta ram_0058
	lda #$1c
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d800
	lda #$08
	sta ram_0058
	lda #$26
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d812
	lda #$09
	sta ram_0058
	lda #$30
	sta ram_0009
	lda ram_001f
	cmp ram_0009
	bne $d824
	lda #$0a
	sta ram_0058
	rts
	jsr $dae9
	lda #$21
	sta PpuAddr_2006
	lda #$08
	sta PpuAddr_2006
	ldx #$00
	lda $bfb8,x
	sta PpuData_2007
	inx
	cpx #$20
	bne $d834
	lda #$21
	sta PpuAddr_2006
	lda #$68
	sta PpuAddr_2006
	ldx #$00
	lda $bfd8,x
	sta PpuData_2007
	inx
	cpx #$20
	bne $d84b
	jsr $db8e
	lda ram_0008
	sta ram_000e
	lda #$22
	sta PpuAddr_2006
	lda #$04
	sta PpuAddr_2006
	lda #$ee
	sta PpuData_2007
	lda #$ef
	sta PpuData_2007
	dec ram_000e
	lda #$00
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $d886
	jmp $d869
	lda ram_0008
	sta ram_000e
	lda #$22
	sta PpuAddr_2006
	lda #$24
	sta PpuAddr_2006
	lda #$fe
	sta PpuData_2007
	lda #$ff
	sta PpuData_2007
	dec ram_000e
	lda #$00
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $d8b3
	jmp $d896
	jsr $db09
	rts
	.byte $20, $E9, $DA, $20, $8E, $DB, $A9, $20
	.byte $00, $8D, $06, $20, $A9, $48, $8D, $06, $20
	.byte $A9, $00, $8D, $0E, $00, $AE, $0E, $00
	.byte $BD, $01, $E4, $8D, $07, $20, $EE, $0E
	.byte $00, $A9, $0F, $8D, $09, $00, $AD, $0E
	.byte $00, $CD, $09, $00, $F0, $03, $4C, $CC
	.byte $D8, $20, $8E, $DB, $A9, $20, $8D, $06
	.byte $20, $A9, $AB, $8D, $06, $20, $A9, $00
	.byte $8D, $0E, $00, $AE, $0E, $00, $BD, $10
	.byte $E4, $8D, $07, $20, $EE, $0E, $00, $A9
	.byte $08, $8D, $09, $00, $AD, $0E, $00, $CD
	.byte $09, $00, $F0, $03, $4C, $FA, $D8, $20
	.byte $8E, $DB, $A9, $21, $8D, $06, $20, $A9
	.byte $01, $8D, $06, $20, $A9, $00, $8D, $0E
	.byte $00, $AE, $0E, $00, $BD, $19, $E4, $8D
	.byte $07, $20, $EE, $0E, $00, $A9, $1E, $8D
	.byte $09, $00, $AD, $0E, $00, $CD, $09, $00
	.byte $F0, $03, $4C, $28, $D9, $20, $8E, $DB
	.byte $A9, $21, $8D, $06, $20, $A9, $61, $8D
	.byte $06, $20, $A9, $00, $8D, $0E, $00, $AE
	.byte $0E, $00, $BD, $37, $E4, $8D, $07, $20
	.byte $EE, $0E, $00, $A9, $1E, $8D, $09, $00
	.byte $AD, $0E, $00, $CD, $09, $00, $F0, $03
	.byte $4C, $56, $D9, $20, $8E, $DB, $A9, $21
	.byte $8D, $06, $20, $A9, $A1, $8D, $06, $20
	.byte $A9, $00, $8D, $0E, $00, $AE, $0E, $00
	.byte $BD, $55, $E4, $8D, $07, $20, $EE, $0E
	.byte $00, $A9, $1E, $8D, $09, $00, $AD, $0E
	.byte $00, $CD, $09, $00, $F0, $03, $4C, $84
	.byte $D9, $20, $8E, $DB, $A9, $21, $8D, $06
	.byte $20, $A9, $E1, $8D, $06, $20, $A9, $00
	.byte $8D, $0E, $00, $AE, $0E, $00, $BD, $73
	.byte $E4, $8D, $07, $20, $EE, $0E, $00, $A9
	.byte $1E, $8D, $09, $00, $AD, $0E, $00, $CD
	.byte $09, $00, $F0, $03, $4C, $B2, $D9, $20
	.byte $8E, $DB, $A9, $22, $8D, $06, $20, $A9
	.byte $21, $8D, $06, $20, $A9, $00, $8D, $0E
	.byte $00, $AE, $0E, $00, $BD, $91, $E4, $8D
	.byte $07, $20, $EE, $0E, $00, $A9, $1E, $8D
	.byte $09, $00, $AD, $0E, $00, $CD, $09, $00
	.byte $F0, $03, $4C, $E0, $D9, $20, $8E, $DB
	.byte $A9, $22, $8D, $06, $20, $A9, $61, $8D
	.byte $06, $20, $A9, $00, $8D, $0E, $00, $AE
	.byte $0E, $00, $BD, $AF, $E4, $8D, $07, $20
	.byte $EE, $0E, $00, $A9, $1E, $8D, $09, $00
	.byte $AD, $0E, $00, $CD, $09, $00, $F0, $03
	.byte $4C, $0E, $DA, $20, $8E, $DB, $A9, $22
	.byte $8D, $06, $20, $A9, $A1, $8D, $06, $20
	.byte $A9, $00, $8D, $0E, $00, $AE, $0E, $00
	.byte $BD, $CD, $E4, $8D, $07, $20, $EE, $0E
	.byte $00, $A9, $1E, $8D, $09, $00, $AD, $0E
	.byte $00, $CD, $09, $00, $F0, $03, $4C, $3C
	.byte $DA, $20, $09, $DB, $20, $41, $C2, $A9
	.byte $00, $8D, $05, $20, $A9, $00, $8D, $05
	.byte $20, $20, $8E, $DB, $20, $39, $D5, $A9
	.byte $00, $8D, $09, $00, $AD, $1A, $00, $CD
	.byte $09, $00, $D0, $03, $4C, $68, $DA, $20
	.byte $8E, $DB, $20, $39, $D5, $A9, $00, $8D
	.byte $09, $00, $AD, $1A, $00, $CD, $09, $00
	.byte $F0, $03, $4C, $7E, $DA, $60
	jsr $dae9
	lda #$21
	sta PpuAddr_2006
	lda #$08
	sta PpuAddr_2006
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda $e3f8,x
	sta PpuData_2007
	inc ram_000e
	lda #$09
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $dac3
	jmp $daa7
	jsr $db09
	jsr $c241
	lda #$c8
	sta ram_0071
	jsr $dad2
	rts
	jsr $db8e
	dec ram_0071
	lda #$00
	sta ram_0009
	lda ram_0071
	cmp ram_0009
	beq $dae8
	jmp $dad2
	rts
	jsr $db80
	jsr $c2e0
	jsr $db8e
	jsr $dbda
	jsr $db8e
	jsr $dc26
	jsr $db8e
	lda #$00
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	rts
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda $e25a,x
	sta PpuData_2007
	inc ram_000e
	lda #$10
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bne $db32
	rts
	jmp $db18
	.byte $A9, $3F, $8D, $06, $20, $A9, $00, $8D
	.byte $06, $20, $A9, $00, $8D, $0E, $00, $AE
	.byte $0E, $00, $BD, $00, $E0, $8D, $07, $20
	.byte $EE, $0E, $00, $A9, $20, $8D, $09, $00
	.byte $AD, $0E, $00, $CD, $09, $00, $D0, $01
	.byte $60, $4C, $44, $DB
	jsr $d629
	jsr $d5ed
	lda #$03
	sta SpriteDma_4014
	lda #$10
	sta ram_0022
	rts
	.byte $20, $8E, $DB, $A9, $30, $8D, $00, $20
	.byte $A9, $1C, $8D, $01, $20, $60
	jsr $db8e
	lda #$20
	sta PpuControl_2000
	lda #$1c
	sta PpuMask_2001
	rts
	lda PpuStatus_2002
	bpl $db8e
	lda PpuStatus_2002
	bmi $db93
	lda #$00
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	inc ram_001b
	rts
	.byte $AD, $02, $20, $10, $FB, $AD, $02, $20
	.byte $30, $FB, $AD, $02, $20, $10, $FB, $EE
	.byte $1B, $00, $60
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$0e
	ldy $0020
	sta PpuData_2007
	dey
	cpy #$00
	bne $dbd2
	jsr $db8e
	lda #$20
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	jsr $dc1b
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	jsr $dc1b
	jsr $db8e
	lda #$22
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	jsr $dc1b
	jsr $db8e
	lda #$23
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	jsr $dc1b
	rts
	ldx #$00
	sta PpuData_2007
	inx
	cpx #$00
	bne $dc1d
	rts
	lda #$00
	sta ram_0066
	lda #$00
	sta OamAddr_2003
	lda #$f5
	sta OamData_2004
	inc ram_0066
	lda #$00
	sta ram_0009
	lda ram_0066
	cmp ram_0009
	beq $dc48
	jmp $dc30
	rts
	.byte $A9, $00, $8D, $66, $00, $AE, $66, $00
	.byte $A9, $F5, $9D, $00, $03, $EE, $66, $00
	.byte $A9, $00, $8D, $09, $00, $AD, $66, $00
	.byte $CD, $09, $00, $F0, $03, $4C, $4E, $DC
	.byte $60, $40
	lda #$05
	sta ram_007e
	rts
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda #$00
	sta ram_0072,x
	inc ram_000e
	lda #$0c
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $dc91
	jmp $dc76
	rts
	lda #$00
	sta ram_007f
	ldx ram_007f
	lda ram_0072,x
	sta ram_0080
	lda #$00
	sta ram_0009
	lda ram_0080
	cmp ram_0009
	beq $dcb0
	jmp $dd19
	ldx ram_007f
	lda $8070,x
	sta ram_0081
	ldx ram_007f
	lda $807c,x
	sta ram_0082
	lda ram_0082
	sta ram_0009
	lda ram_000c
	sec
	sbc #$20
	lsr a
	lsr a
	lsr a
	lsr a
	cmp ram_0009
	beq $dcda
	jmp $dd19
	lda ram_0081
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $dcf8
	lda #$06
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $dcf8
	jmp $ddd8
	lda ram_0081
	sta ram_0009
	lda ram_005e
	clc
	adc #$01
	cmp ram_0009
	bne $dd19
	lda #$0a
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $dd19
	jmp $ddd8
	inc ram_007f
	lda #$0c
	sta ram_0009
	lda ram_007f
	cmp ram_0009
	beq $dd2c
	jmp $dc97
	rts
	lda #$00
	sta ram_0083
	ldx ram_0083
	lda $8044,x
	sta ram_0084
	ldx ram_0083
	lda $8049,x
	sta ram_0085
	lda ram_0085
	sta ram_0009
	lda ram_000c
	sec
	sbc #$02
	lsr a
	lsr a
	lsr a
	lsr a
	cmp ram_0009
	beq $dd5c
	jmp $dd9b
	lda ram_0084
	sta ram_0009
	lda ram_005e
	cmp ram_0009
	bne $dd7a
	lda #$04
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $dd7a
	jmp $ddb0
	lda ram_0084
	sta ram_0009
	lda ram_005e
	clc
	adc #$01
	cmp ram_0009
	bne $dd9b
	lda #$0c
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bmi $dd9b
	jmp $ddb0
	inc ram_0083
	lda ram_007e
	sta ram_0009
	lda ram_0083
	cmp ram_0009
	bpl $ddaf
	jmp $dd32
	rts
	jsr $c3eb
	lda #$00
	sta ram_0086
	jsr $db8e
	jsr $e679
	jsr $de0d
	inc ram_0086
	lda #$15
	sta ram_0009
	lda ram_0086
	cmp ram_0009
	beq $ddd4
	jmp $ddb8
	jsr $c3eb
	rts
	ldx ram_007f
	lda #$01
	sta ram_0072,x
	ldx #$05
	lda #$08
	sta ram_00a4,x
	ldx #$05
	lda ram_0082
	asl a
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta ram_009e,x
	ldx #$05
	lda ram_0081
	sta ram_0092,x
	ldx #$05
	lda #$00
	sta ram_0098,x
	ldx #$05
	lda #$01
	sta ram_00aa,x
	rts
	lda #$00
	sta ram_000e
	lda #$00
	sta ram_0087
	inc ram_0087
	lda #$40
	sta ram_0009
	lda ram_0087
	cmp ram_0009
	beq $de2a
	jmp $de17
	inc ram_000e
	lda #$11
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	beq $de3d
	jmp $de12
	rts
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF
.segment "PRGF"
	.byte $28, $38, $37, $08, $28, $21
	.byte $37, $38, $28, $38, $01, $08, $28, $21
	.byte $37, $01, $27, $0E, $16, $03, $00, $0E
	.byte $20, $10, $00, $0E, $39, $18, $00, $0A
	.byte $0B, $0C, $18, $38, $37, $08, $18, $0E
	.byte $38, $37, $18, $38, $01, $08, $18, $0E
	.byte $38, $01, $18, $28, $20, $03, $00, $28
	.byte $20, $10, $00, $28, $39, $18, $00, $0A
	.byte $0B, $0C
	.byte $00, $00, $00, $00, $01, $00, $00, $01
	.byte $00, $01, $00, $01, $01, $01, $01, $01
	.byte $01, $01, $01, $01, $01, $02, $01, $02
	.byte $01, $02, $02, $01, $02, $02, $02, $02
	.byte $02, $02, $03, $02, $02, $03, $02, $03
	.byte $02, $03, $03, $03, $03, $03, $03, $03
	.byte $03, $03, $03, $04, $03, $04, $03, $04
	.byte $04, $03, $04, $04, $04
	.byte $04, $04, $04, $00, $00, $00, $00, $00
	.byte $00, $01, $00, $00, $01, $00, $00, $01
	.byte $00, $01, $00, $01, $01, $00, $01, $01
	.byte $00, $01, $01, $01, $01, $01, $01, $01
	.byte $01, $01, $01, $02, $01, $01, $02, $01
	.byte $01, $02, $01, $02, $01, $02, $02, $01
	.byte $02, $02, $01, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $03
	.byte $03, $03, $03, $03, $03, $00, $00, $00
	.byte $00, $01, $00, $00, $01, $00, $01, $01
	.byte $00, $01, $01, $01, $01, $01, $02, $01
	.byte $01, $02, $01, $02, $01, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $03, $02, $03
	.byte $02, $03, $03, $03, $02, $03, $03, $03
	.byte $03, $03, $03, $04, $03, $03, $04, $04
	.byte $04, $03, $04, $04, $04, $04, $04, $04
	.byte $04, $04, $04, $04, $04, $04, $04, $04
	.byte $04, $04, $04, $04, $04
	.byte $20, $20, $20, $20, $24, $24, $24, $24
	.byte $00, $08, $10, $18, $00, $08, $10, $18
	.byte $22, $22, $22, $22, $26, $26, $26, $26
	.byte $00, $08, $10, $18, $00, $08, $10, $18
	.byte $23, $23, $23, $23, $27, $27, $27, $27
	.byte $C0, $C2, $C4, $C6, $C0, $C2, $C4, $C6
	.byte $00, $81, $6C, $81, $D8, $81, $44, $82
	.byte $B0, $82, $1C, $83, $88, $83, $F4, $83
	.byte $60, $84, $CC, $84, $38, $85, $A4, $85
	.byte $10, $86, $7C, $86, $E8, $86, $54, $87
	.byte $C0, $87, $2C, $88, $98, $88, $04, $89
	.byte $70, $89, $DC, $89, $48, $8A, $B4, $8A
	.byte $20, $8B, $8C, $8B, $F8, $8B, $64, $8C
	.byte $D0, $8C, $3C, $8D, $A8, $8D, $14, $8E
	.byte $80, $8E, $EC, $8E, $58, $8F, $C4, $8F
	.byte $30, $90, $9C, $90, $08, $91, $74, $91
	.byte $E0, $91, $4C, $92, $B8, $92, $24, $93
	.byte $90, $93, $FC, $93, $68, $94, $D4, $94
	.byte $40, $95, $AC, $95, $18, $96, $84, $96
	.byte $F0, $96, $5C, $97, $C8, $97, $34, $98
	.byte $A0, $98, $0C, $99, $78, $99, $E4, $99
	.byte $50, $9A
	.byte $BC, $9A, $28, $9B, $94, $9B, $00, $9C
	.byte $6C, $9C, $D8, $9C, $44, $9D, $B0, $9D
	.byte $1C, $9E, $88, $9E, $F4, $9E, $60, $9F
	.byte $CC, $9F, $38, $A0, $A4, $A0, $10, $A1
	.byte $7C, $A1, $E8, $A1, $54, $A2, $C0, $A2
	.byte $2C, $A3, $98, $A3, $04, $A4, $70, $A4
	.byte $DC, $A4, $48, $A5, $B4, $A5, $20, $A6
	.byte $8C, $A6, $F8, $A6, $64, $A7, $D0, $A7
	.byte $3C, $A8, $A8, $A8, $14, $A9, $80, $A9
	.byte $EC, $A9, $58, $AA, $C4, $AA, $30, $AB
	.byte $9C, $AB, $08, $AC, $74, $AC, $E0, $AC
	.byte $4C, $AD, $B8, $AD, $24, $AE, $90, $AE
	.byte $FC, $AE, $68, $AF, $D4, $AF, $40, $B0
	.byte $AC, $B0, $18, $B1, $84, $B1, $F0, $B1
	.byte $5C, $B2, $C8, $B2, $34, $B3, $A0, $B3
	.byte $0C, $B4, $78, $B4, $E4, $B4, $50, $B5
	.byte $BC, $B5, $28, $B6, $94, $B6
	.byte $0E, $30, $21, $11, $0E, $1A, $2A, $1A
	.byte $00, $01, $02, $03, $00, $01, $02, $03
	.byte $0E, $27, $0E, $0E, $00, $0D, $10, $03
	.byte $00, $07, $08, $09, $00, $0A, $0B
	.byte $0C
	.byte $0E, $30, $11, $21, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $09, $01, $02, $03, $04, $05, $06, $07
	.byte $08, $00, $0A, $0B, $0C, $0D, $0E, $0F
	.byte $10, $11, $12, $13, $14, $15, $16, $17
	.byte $18, $00, $00, $00, $00, $00, $00, $00
	.byte $20, $21, $22, $23, $24, $25, $26, $27
	.byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
	.byte $30, $31, $32, $33, $34, $35, $36, $37
	.byte $38, $00, $00, $00, $00, $00, $00, $00
	.byte $40, $41, $42, $43, $44, $45, $46, $47
	.byte $48, $49, $4A, $4B, $4C, $4D, $4E, $4F
	.byte $50, $51, $52, $53, $54, $55, $56, $57
	.byte $58, $00, $00, $00, $00, $00, $00, $00
	.byte $60, $61, $62, $63, $64, $65, $66, $67
	.byte $68, $69, $6A, $6B, $6C, $6D, $6E, $6F
	.byte $70, $71, $72, $73, $74, $75, $76, $77
	.byte $78, $00, $00, $00, $00, $00, $00, $00
	.byte $80, $81, $82, $83, $84, $85, $86, $87
	.byte $88, $00, $00, $00, $00, $00, $8E, $8F
	.byte $90, $91, $92, $93, $94, $95, $96, $97
	.byte $98, $00, $00, $00, $00, $00, $00, $00
	.byte $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7
	.byte $A8, $A9, $00, $00, $00, $00, $AE, $00
	.byte $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7
	.byte $B8, $1A, $1B, $1C, $1D, $1E, $1F, $8A
	.byte $8B, $8C, $8D, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $3A, $3B, $3C, $3D, $3E, $3F, $AA
	.byte $AB, $AC, $AD, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $5A, $5B, $5C, $5D, $5E, $5F
	.byte $CA, $CB, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $7A, $7B, $7C, $7D, $7E, $7F
	.byte $EA, $EB, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $00, $00, $00, $00, $00, $00, $00
	.byte $00, $CC, $CD, $CE, $CF, $D0, $D1, $D2
	.byte $D3, $D4, $D5, $D6, $D7, $D8, $47, $41
	.byte $4D, $45, $20, $4F, $56, $45, $52
	.byte $43, $4F, $4E, $47, $52, $41, $54, $55
	.byte $4C, $41, $54, $49, $4F, $4E, $53, $46
	.byte $52, $4F, $4D, $20, $54, $48, $45, $20
	.byte $20, $20, $20, $20, $20, $53, $4F, $46
	.byte $20, $44, $45, $56, $45, $4C, $4F, $50
	.byte $4D, $45, $4E, $54, $20, $54, $45, $41
	.byte $4D, $20, $20, $20, $20, $20, $4C, $45
	.byte $41, $44, $20, $43, $4F, $44, $45, $52
	.byte $20, $20, $20, $20, $20, $20, $20, $20
	.byte $20, $20, $20, $20, $42, $4F, $42, $20
	.byte $52, $4F, $53, $54, $53, $55, $50, $50
	.byte $4F, $52, $54, $20, $20, $20, $20, $20
	.byte $20, $20, $20, $4D, $41, $54, $54, $20
	.byte $4C, $4F, $4E, $47, $4E, $45, $43, $4B
	.byte $45, $52, $41, $52, $54, $20, $44, $45
	.byte $53, $49, $47, $4E, $20, $20, $20, $20
	.byte $20, $20, $20, $20, $41, $4E, $44, $52
	.byte $45, $57, $20, $4B, $4C, $45, $49, $4E
	.byte $4D, $55, $53, $49, $43, $20, $20, $20
	.byte $20, $20, $20, $20, $20, $20, $20, $20
	.byte $20, $20, $20, $20, $20, $4D, $41, $52
	.byte $4B, $20, $48, $41, $4C, $4C, $4C, $45
	.byte $56, $45, $4C, $20, $44, $45, $53, $49
	.byte $47, $4E, $20, $20, $20, $20, $20, $20
	.byte $4D, $49, $4B, $45, $20, $52, $41, $49
	.byte $53, $4D, $41, $4E, $46, $41, $43, $55
	.byte $4C, $54, $59, $20, $41, $44, $56, $49
	.byte $53, $4F, $52, $20, $20, $20, $4D, $41
	.byte $52, $4B, $20, $53, $54, $45, $48, $4C
	.byte $49, $4B
	.byte $04, $04, $04, $04, $04, $04, $04, $04
	.byte $04, $04, $04, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $06, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $04, $04
	.byte $04, $04, $04, $04, $04, $04, $04, $04
	.byte $04, $03, $03, $03, $03, $03, $03, $03
	.byte $03, $03, $03, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $03, $03
	.byte $03, $03, $03, $03, $03, $03, $03, $03
	.byte $04, $04, $04, $04, $04, $04, $04, $04
	.byte $04, $04, $04, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $06, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $05, $05
	.byte $05, $05, $05, $05, $05, $05, $04, $04
	.byte $04, $04, $04, $04, $04, $04, $04, $04
	.byte $04, $03, $03, $03, $03, $03, $03, $03
	.byte $03, $03, $03, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $02, $02
	.byte $02, $02, $02, $02, $02, $02, $03, $03
	.byte $03, $03, $03, $03, $03, $03, $03, $03
	lda #$00
	sta ram_008e
	lda #$00
	sta ram_008f
	lda #$1f
	sta ApuStatus_4015
	lda #$00
	sta ram_0090
	lda ram_0007
	asl a
	asl a
	sta ram_0091
	ldx ram_0091
	lda $8000,x
	sta ram_0088
	sta ram_0002
	inx
	lda $8000,x
	sta ram_0089
	sta ram_0003
	inx
	lda $8000,x
	sta ram_008a
	inx
	lda $8000,x
	sta ram_008b
	rts
	iny
	lda ($02),y
	sta ram_008e
	clc
	lda ram_0002
	adc #$02
	sta ram_0002
	sta ram_008c
	lda ram_0003
	adc #$00
	sta ram_0003
	sta ram_008d
	jmp $e679
	dec ram_008e
	lda ram_008e
	cmp #$00
	beq $e665
	lda ram_008c
	sta ram_0002
	lda ram_008d
	sta ram_0003
	jmp $e679
	clc
	lda ram_0002
	adc #$01
	sta ram_0002
	lda ram_0003
	adc #$00
	sta ram_0003
	jmp $e679
	lda #$00
	sta ram_0009
	lda ram_008f
	cmp ram_0009
	beq $e68a
	dec ram_008f
	rts
	ldy #$00
	lda ($02),y
	cmp #$ff
	beq $e62c
	cmp #$fe
	beq $e64c
	sta ram_008f
	iny
	lda ($02),y
	sta ram_0090
	iny
	lda #$00
	sta ram_0009
	lda ram_0090
	and #$03
	cmp ram_0009
	bne $e6b2
	jmp $e6dc
	lda #$03
	sta ram_0009
	lda ram_0090
	and #$03
	cmp ram_0009
	bne $e6c4
	jmp $e6c4
	lda ($02),y
	sta Sq0Duty_4000
	iny
	lda ($02),y
	sta Sq0Sweep_4001
	iny
	lda ($02),y
	sta Sq0Timer_4002
	iny
	lda ($02),y
	sta Sq0Length_4003
	iny
	lda #$00
	sta ram_0009
	lda ram_0090
	and #$0c
	cmp ram_0009
	bne $e6ee
	jmp $e718
	lda #$0c
	sta ram_0009
	lda ram_0090
	and #$0c
	cmp ram_0009
	bne $e700
	jmp $e700
	lda ($02),y
	sta Sq1Duty_4004
	iny
	lda ($02),y
	sta Sq1Sweep_4005
	iny
	lda ($02),y
	sta Sq1Timer_4006
	iny
	lda ($02),y
	sta Sq1Length_4007
	iny
	lda #$00
	sta ram_0009
	lda ram_0090
	and #$30
	cmp ram_0009
	bne $e72a
	jmp $e754
	lda #$30
	sta ram_0009
	lda ram_0090
	and #$30
	cmp ram_0009
	bne $e73c
	jmp $e73c
	lda ($02),y
	sta TrgLinear_4008
	iny
	lda ($02),y
	sta $4009
	iny
	lda ($02),y
	sta TrgTimer_400A
	iny
	lda ($02),y
	sta TrgLength_400B
	iny
	lda #$00
	sta ram_0009
	lda ram_0090
	and #$c0
	cmp ram_0009
	bne $e766
	jmp $e790
	lda #$c0
	sta ram_0009
	lda ram_0090
	and #$c0
	cmp ram_0009
	bne $e778
	jmp $e778
	lda ($02),y
	sta NoiseVolume_400C
	iny
	lda ($02),y
	sta $400d
	iny
	lda ($02),y
	sta NoisePeriod_400E
	iny
	lda ($02),y
	sta NoiseLength_400F
	iny
	tya
	sta ram_0011
	clc
	lda ram_0002
	adc ram_0011
	sta ram_0002
	lda ram_0003
	adc #$00
	sta ram_0003
	clc
	lda ram_0002
	cmp $008a
	bne $e7c3
	lda ram_0003
	cmp $008b
	bne $e7c3
	lda ram_0088
	sta ram_0002
	lda ram_0089
	sta ram_0003
	rts
	ldx #$00
	lda #$00
	sta ram_00a4,x
	ldx #$01
	lda #$00
	sta ram_00a4,x
	ldx #$02
	lda #$00
	sta ram_00a4,x
	ldx #$03
	lda #$00
	sta ram_00a4,x
	ldx #$04
	lda #$00
	sta ram_00a4,x
	ldx #$05
	lda #$00
	sta ram_00a4,x
	lda #$05
	sta ram_00b0
	rts
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda #$00
	sta ram_00a4,x
	inc ram_000e
	lda ram_00b0
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bpl $e815
	jmp $e7f9
	rts
	lda #$01
	sta ram_0009
	lda ram_0004
	cmp ram_0009
	beq $e824
	rts
	lda #$00
	sta ram_000e
	ldx ram_000e
	lda ram_00a4,x
	sta ram_00b1
	lda #$00
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e842
	jmp $e85e
	inc ram_000e
	lda ram_00b0
	sta ram_0009
	lda ram_000e
	cmp ram_0009
	bpl $e858
	beq $e858
	jmp $e829
	.byte $60, $A9, $00, $8D, $0E, $00
	lda ram_0005
	and #$0f
	sta ram_00b1
	ldx ram_00b1
	lda $8060,x
	sta ram_00b1
	lda #$06
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e87f
	jmp $e8b0
	ldx ram_000e
	lda ram_00b1
	sta ram_00a4,x
	ldx ram_000e
	lda #$07
	sta ram_009e,x
	ldx ram_000e
	lda #$00
	sta ram_0098,x
	ldx ram_000e
	lda ram_005e
	clc
	adc #$05
	sta ram_0092,x
	ldx ram_000e
	lda #$ff
	sta ram_00aa,x
	inc ram_0004
	rts
	lda #$00
	sta ram_0009
	lda ram_000c
	and #$f0
	cmp ram_0009
	bne $e8c0
	rts
	ldx ram_000e
	lda ram_00b1
	sta ram_00a4,x
	ldx ram_000e
	lda ram_000c
	sec
	sbc #$11
	sta ram_009e,x
	ldx ram_000e
	lda #$00
	sta ram_0098,x
	ldx ram_000e
	lda ram_005e
	clc
	adc #$0a
	sta ram_0092,x
	jsr $d5c3
	rts
	lda #$ff
	sta ram_00b2
	inc ram_00b2
	ldx ram_00b2
	lda ram_00a4,x
	sta ram_00b1
	lda #$02
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e90e
	jsr $e960
	lda #$03
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e91e
	jsr $e960
	lda #$04
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e92e
	jsr $ec12
	lda #$06
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e93e
	jsr $edca
	lda #$08
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $e94e
	jsr $e960
	lda ram_00b0
	sta ram_0009
	lda ram_00b2
	cmp ram_0009
	bpl $e95f
	jmp $e8f2
	rts
	ldx ram_00b2
	lda ram_00aa,x
	sta ram_00b3
	ldx ram_00b2
	lda ram_0092,x
	sta ram_00b4
	ldx ram_00b2
	lda ram_0098,x
	sta ram_00b5
	ldx ram_00b2
	lda ram_009e,x
	sta ram_00b6
	lda ram_00b4
	clc
	adc #$02
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bmi $e998
	jmp $ee75
	lda ram_00b4
	sta ram_0009
	lda ram_0020
	clc
	adc #$12
	cmp ram_0009
	bpl $e9ac
	jmp $ee75
	lda #$00
	sta ram_00b7
	lda #$03
	sta ram_0062
	jsr $f2cd
	lda #$00
	sta ram_0009
	lda ram_001b
	and #$01
	cmp ram_0009
	beq $e9cb
	jmp $ea9f
	lda #$ff
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $e9ed
	lda #$01
	sta ram_0009
	lda ram_00b7
	cmp ram_0009
	bne $e9ea
	lda #$02
	sta ram_00b3
	jmp $ea41
	lda #$01
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ea17
	lda #$00
	sta ram_0064
	jsr $f083
	lda #$00
	sta ram_0009
	lda ram_0064
	cmp ram_0009
	beq $ea14
	lda #$02
	sta ram_00b3
	jmp $ea41
	lda #$02
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ea41
	lda #$00
	sta ram_0067
	jsr $f193
	lda #$00
	sta ram_0009
	lda ram_0067
	cmp ram_0009
	beq $ea3e
	lda #$01
	sta ram_00b3
	jmp $ea41
	lda #$fc
	sta ram_0009
	lda ram_00b6
	and #$fc
	cmp ram_0009
	bne $ea53
	jmp $ee75
	lda ram_00b4
	clc
	adc #$05
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bmi $ea67
	jmp $ee75
	lda ram_00b4
	sta ram_0009
	lda ram_0020
	clc
	adc #$15
	cmp ram_0009
	bpl $ea7b
	jmp $ee75
	ldx ram_00b2
	lda ram_00b3
	sta ram_00aa,x
	ldx ram_00b2
	lda ram_00b4
	sta ram_0092,x
	ldx ram_00b2
	lda ram_00b5
	sta ram_0098,x
	ldx ram_00b2
	lda ram_00b6
	sta ram_009e,x
	lda #$08
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $eaaf
	jmp $ebb7
	lda #$03
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $eabf
	jmp $eb32
	lda #$02
	sta ram_006d
	lda #$0a
	sta ram_006e
	lda ram_0020
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bmi $eb31
	beq $eb31
	lda ram_0020
	clc
	adc #$10
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bpl $eb31
	beq $eb31
	ldx ram_00b2
	lda ram_009e,x
	sec
	sbc #$10
	sta ram_006c
	lda ram_00b4
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_00b5
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_006b
	lda #$00
	sta ram_0009
	lda ram_001b
	and #$10
	cmp ram_0009
	beq $eb2e
	lda #$42
	sta ram_006d
	jmp $f44f
	.byte $60
	jmp $f3db
	rts
	lda ram_0020
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bmi $ebb6
	beq $ebb6
	lda ram_0020
	clc
	adc #$10
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bpl $ebb6
	beq $ebb6
	lda #$00
	sta ram_006d
	lda #$40
	sta ram_006e
	lda #$00
	sta ram_0009
	lda ram_001b
	and #$10
	cmp ram_0009
	beq $eb73
	lda #$48
	sta ram_006e
	ldx ram_00b2
	lda ram_009e,x
	sec
	sbc #$20
	sta ram_006c
	lda ram_00b4
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_00b5
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_006b
	lda #$01
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ebb3
	lda #$40
	sta ram_006d
	jmp $f4dc
	.byte $60
	jmp $f4c3
	rts
	lda #$02
	sta ram_006d
	lda #$02
	sta ram_006e
	lda ram_0020
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bmi $ec11
	beq $ec11
	lda ram_0020
	clc
	adc #$10
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bpl $ec11
	beq $ec11
	ldx ram_00b2
	lda ram_009e,x
	sec
	sbc #$10
	sta ram_006c
	lda ram_00b4
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_00b5
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_006b
	jmp $f4f5
	rts
	ldx ram_00b2
	lda ram_00aa,x
	sta ram_00b3
	ldx ram_00b2
	lda ram_0092,x
	sta ram_00b4
	ldx ram_00b2
	lda ram_0098,x
	sta ram_00b5
	ldx ram_00b2
	lda ram_009e,x
	sta ram_00b6
	lda ram_00b4
	clc
	adc #$02
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bmi $ec4a
	jmp $ee75
	lda ram_00b4
	sta ram_0009
	lda ram_0020
	clc
	adc #$12
	cmp ram_0009
	bpl $ec5e
	jmp $ee75
	lda #$00
	sta ram_00b7
	lda #$02
	sta ram_0062
	jsr $f2cd
	lda #$ff
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ec8d
	lda #$01
	sta ram_0009
	lda ram_00b7
	cmp ram_0009
	bne $ec8a
	lda #$01
	sta ram_00b3
	jmp $ed11
	lda ram_005e
	sta ram_0009
	lda ram_00b4
	clc
	adc #$02
	cmp ram_0009
	bpl $eca5
	beq $eca5
	lda #$01
	sta ram_00b3
	lda ram_005e
	sta ram_0009
	lda ram_00b4
	sec
	sbc #$02
	cmp ram_0009
	bmi $ecbd
	beq $ecbd
	lda #$02
	sta ram_00b3
	lda #$01
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ece7
	lda #$00
	sta ram_0064
	jsr $f083
	lda #$00
	sta ram_0009
	lda ram_0064
	cmp ram_0009
	beq $ece4
	lda #$02
	sta ram_00b3
	jmp $ed11
	lda #$02
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $ed11
	lda #$00
	sta ram_0067
	jsr $f193
	lda #$00
	sta ram_0009
	lda ram_0067
	cmp ram_0009
	beq $ed0e
	lda #$01
	sta ram_00b3
	jmp $ed11
	lda #$fc
	sta ram_0009
	lda ram_00b6
	and #$fc
	cmp ram_0009
	bne $ed23
	jmp $ee75
	ldx ram_00b2
	lda ram_00b3
	sta ram_00aa,x
	ldx ram_00b2
	lda ram_00b4
	sta ram_0092,x
	ldx ram_00b2
	lda ram_00b5
	sta ram_0098,x
	ldx ram_00b2
	lda ram_00b6
	sta ram_009e,x
	lda #$00
	sta ram_006d
	lda ram_001b
	and #$0c
	sta ram_006e
	lda ram_006e
	clc
	adc #$0e
	sta ram_006e
	lda ram_0020
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bmi $edc1
	lda ram_0020
	clc
	adc #$10
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bpl $edc1
	beq $edc1
	ldx ram_00b2
	lda ram_009e,x
	sec
	sbc #$10
	sta ram_006c
	lda ram_00b4
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_00b5
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_006b
	lda #$01
	sta ram_0009
	lda ram_00b3
	cmp ram_0009
	bne $edbe
	lda #$40
	sta ram_006d
	jmp $f44f
	.byte $60
	jmp $f3db
	lda #$f5
	sta ram_006c
	jmp $f3db
	.byte $60
	ldx ram_00b2
	lda ram_00aa,x
	sta ram_00b3
	ldx ram_00b2
	lda ram_0092,x
	sta ram_00b4
	ldx ram_00b2
	lda ram_0098,x
	sta ram_00b5
	ldx ram_00b2
	lda ram_009e,x
	sta ram_00b6
	lda ram_00b4
	clc
	adc #$02
	sta ram_0009
	lda ram_0020
	cmp ram_0009
	bmi $ee02
	jmp $ee75
	jsr $f29b
	jsr $f29b
	ldx ram_00b2
	lda ram_00b4
	sta ram_0092,x
	ldx ram_00b2
	lda ram_00b5
	sta ram_0098,x
	lda ram_0020
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bmi $ee74
	beq $ee74
	lda ram_0020
	clc
	adc #$10
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bpl $ee74
	beq $ee74
	lda #$02
	sta ram_006d
	lda #$04
	sta ram_006e
	ldx ram_00b2
	lda ram_009e,x
	sec
	sbc #$10
	sta ram_006c
	lda ram_00b4
	sec
	sbc ram_0020
	asl a
	asl a
	asl a
	asl a
	pha
	lda ram_00b5
	sec
	sbc ram_0021
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_006b
	jmp $f52f
	rts
	ldx ram_00b2
	lda #$00
	sta ram_00a4,x
	rts
	lda #$00
	sta ram_00b2
	ldx ram_00b2
	lda ram_00a4,x
	sta ram_00b1
	lda #$00
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $ee9c
	jmp $f015
	ldx ram_00b2
	lda ram_009e,x
	sta ram_00b6
	lda #$0e
	sta ram_00b8
	lda #$08
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $eebc
	lda #$08
	sta ram_00b8
	lda #$03
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $eece
	lda #$16
	sta ram_00b8
	lda ram_000c
	sta ram_0009
	lda ram_00b6
	sec
	sbc ram_00b8
	cmp ram_0009
	bmi $eee3
	jmp $f015
	lda ram_00b6
	sta ram_0009
	lda ram_000c
	sec
	sbc #$18
	cmp ram_0009
	bmi $eef7
	jmp $f015
	lda #$00
	sta ram_0009
	lda ram_0012
	cmp ram_0009
	beq $ef18
	lda ram_00b6
	sta ram_0009
	lda ram_000c
	sec
	sbc #$10
	cmp ram_0009
	bmi $ef18
	jmp $f015
	lda #$00
	sta ram_00b9
	lda #$00
	sta ram_00b7
	ldx ram_00b2
	lda ram_0092,x
	sta ram_00b4
	ldx ram_00b2
	lda ram_0098,x
	sta ram_00b5
	lda ram_005e
	sta ram_0009
	lda ram_00b4
	cmp ram_0009
	bne $ef47
	lda #$01
	sta ram_00b9
	lda ram_00b4
	sta ram_0009
	lda ram_005e
	clc
	adc #$01
	cmp ram_0009
	bne $ef6d
	lda ram_005f
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bpl $ef6d
	beq $ef6d
	lda #$01
	sta ram_00b9
	lda ram_005e
	sta ram_0009
	lda ram_00b4
	clc
	adc #$01
	cmp ram_0009
	bne $ef93
	lda ram_00b5
	sta ram_0009
	lda ram_005f
	cmp ram_0009
	bpl $ef93
	beq $ef93
	lda #$01
	sta ram_00b9
	lda #$00
	sta ram_0009
	lda ram_00b9
	cmp ram_0009
	bne $efa3
	jmp $f015
	lda ram_00b6
	sta ram_0009
	lda ram_000c
	pha
	lda ram_00b8
	sec
	sbc #$05
	sta ram_0011
	pla
	clc
	adc ram_0011
	cmp ram_0009
	bpl $efc5
	lda #$01
	sta ram_00b7
	lda #$08
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $efd5
	jmp $f067
	lda #$02
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $efe5
	jmp $f02d
	lda #$03
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $eff5
	jmp $f02d
	lda #$04
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $f005
	jmp $f02d
	lda #$06
	sta ram_0009
	lda ram_00b1
	cmp ram_0009
	bne $f015
	jmp $f063
	inc ram_00b2
	lda ram_00b0
	clc
	adc #$01
	sta ram_0009
	lda ram_00b2
	cmp ram_0009
	bpl $f02c
	jmp $ee83
	rts
	lda #$00
	sta ram_0009
	lda ram_00b7
	cmp ram_0009
	beq $f05f
	ldx ram_00b2
	lda #$00
	sta ram_00a4,x
	lda #$01
	sta ram_000f
	lda #$14
	sta ram_0010
	lda #$00
	sta ram_0009
	lda ram_0013
	cmp ram_0009
	beq $f05e
	lda #$37
	sta ram_0010
	rts
	jsr $ca72
	rts
	jsr $ca72
	rts
	ldx ram_00b2
	lda #$00
	sta ram_00a4,x
	inc ram_000a
	lda #$06
	sta ram_0009
	lda ram_000a
	cmp ram_0009
	bne $f082
	dec ram_000a
	rts
	lda #$02
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bpl $f093
	jmp $f2b4
	lda #$08
	pha
	lda ram_00b4
	asl a
	asl a
	asl a
	sta ram_0011
	pla
	clc
	adc ram_0011
	sta ram_0063
	lda ram_00b6
	and #$0f
	sta ram_00ba
	lda #$7f
	sta ram_0009
	lda ram_00b6
	cmp ram_0009
	bpl $f126
	lda ram_00b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	tax
	lda $0400,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f0e7
	jmp $f3c9
	lda #$0f
	sta ram_0009
	lda ram_00ba
	cmp ram_0009
	bne $f0f7
	jmp $f2b4
	lda ram_0063
	pha
	lda ram_0065
	sec
	sbc #$01
	sta ram_0011
	pla
	clc
	adc ram_0011
	tax
	lda $0400,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_00bb
	and ram_0054
	cmp ram_0009
	beq $f123
	jmp $f3c9
	jmp $f2b4
	lda ram_00b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	tax
	lda $0200,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f154
	jmp $f3c9
	lda #$0f
	sta ram_0009
	lda ram_00ba
	cmp ram_0009
	bne $f164
	jmp $f2b4
	lda ram_0063
	pha
	lda ram_0065
	sec
	sbc #$01
	sta ram_0011
	pla
	clc
	adc ram_0011
	tax
	lda $0200,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_00bb
	and ram_0054
	cmp ram_0009
	beq $f190
	jmp $f3c9
	jmp $f2b4
	lda #$00
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	beq $f1a3
	jmp $f29b
	lda ram_00b4
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta ram_0063
	lda ram_00b6
	and #$0f
	sta ram_00ba
	lda #$7f
	sta ram_0009
	lda ram_00b6
	cmp ram_0009
	bpl $f22e
	lda ram_00b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	tax
	lda $0400,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f1ef
	jmp $f3cf
	lda #$0f
	sta ram_0009
	lda ram_00ba
	cmp ram_0009
	bne $f1ff
	jmp $f29b
	lda ram_0063
	pha
	lda ram_0065
	sec
	sbc #$01
	sta ram_0011
	pla
	clc
	adc ram_0011
	tax
	lda $0400,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_00bb
	and ram_0054
	cmp ram_0009
	beq $f22b
	jmp $f3cf
	jmp $f29b
	lda ram_00b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	tax
	lda $0200,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f25c
	jmp $f3cf
	lda #$0f
	sta ram_0009
	lda ram_00ba
	cmp ram_0009
	bne $f26c
	jmp $f29b
	lda ram_0063
	pha
	lda ram_0065
	sec
	sbc #$01
	sta ram_0011
	pla
	clc
	adc ram_0011
	tax
	lda $0200,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_00bb
	and ram_0054
	cmp ram_0009
	beq $f298
	jmp $f3cf
	jmp $f29b
	dec ram_00b5
	lda #$ff
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bne $f2b3
	lda #$0f
	sta ram_00b5
	dec ram_00b4
	rts
	inc ram_00b5
	lda #$10
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bne $f2cc
	lda #$00
	sta ram_00b5
	inc ram_00b4
	rts
	lda ram_00b4
	asl a
	asl a
	asl a
	sta ram_0063
	lda #$7f
	sta ram_0009
	lda ram_00b6
	cmp ram_0009
	bpl $f350
	beq $f350
	lda ram_00b6
	clc
	adc ram_0062
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0400,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f319
	jmp $f3d5
	lda #$00
	sta ram_00bb
	lda #$04
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bmi $f33a
	beq $f33a
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0400,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_0064
	and ram_0054
	cmp ram_0009
	beq $f34d
	jmp $f3d5
	jmp $f3be
	lda ram_00b6
	clc
	adc ram_0062
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta ram_0065
	lda ram_0063
	clc
	adc ram_0065
	sta ram_0066
	ldx ram_0066
	lda $0200,x
	sta ram_0086
	lda #$00
	sta ram_0009
	lda ram_0086
	and ram_0054
	cmp ram_0009
	beq $f387
	jmp $f3d5
	lda #$00
	sta ram_00bb
	lda #$04
	sta ram_0009
	lda ram_00b5
	cmp ram_0009
	bmi $f3a8
	beq $f3a8
	lda ram_0066
	clc
	adc #$08
	tax
	lda $0200,x
	sta ram_00bb
	lda #$00
	sta ram_0009
	lda ram_00bb
	and ram_0054
	cmp ram_0009
	beq $f3bb
	jmp $f3d5
	jmp $f3be
	lda ram_00b6
	clc
	adc ram_0062
	sta ram_00b6
	rts
	lda #$01
	sta ram_0064
	rts
	lda #$01
	sta ram_0067
	rts
	lda #$01
	sta ram_00b7
	rts
	ldx ram_0022
	lda ram_006c
	sta $0300,x
	lda #$01
	clc
	adc ram_0022
	tax
	lda ram_006e
	sta $0300,x
	lda #$02
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$03
	clc
	adc ram_0022
	tax
	lda ram_006b
	sta $0300,x
	lda #$04
	clc
	adc ram_0022
	tax
	lda ram_006c
	sta $0300,x
	lda #$05
	clc
	adc ram_0022
	tax
	lda ram_006e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$07
	clc
	adc ram_0022
	tax
	lda ram_006b
	clc
	adc #$08
	sta $0300,x
	lda ram_0022
	clc
	adc #$08
	sta ram_0022
	rts
	ldx ram_0022
	lda ram_006c
	sta $0300,x
	lda #$01
	clc
	adc ram_0022
	tax
	lda ram_006e
	sta $0300,x
	lda #$02
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$03
	clc
	adc ram_0022
	tax
	lda #$08
	clc
	adc ram_006b
	sta $0300,x
	lda #$04
	clc
	adc ram_0022
	tax
	lda ram_006c
	sta $0300,x
	lda #$05
	clc
	adc ram_0022
	tax
	lda ram_006e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$07
	clc
	adc ram_0022
	tax
	lda ram_006b
	sta $0300,x
	lda ram_0022
	clc
	adc #$08
	sta ram_0022
	rts
	jsr $f3db
	lda ram_006c
	clc
	adc #$10
	sta ram_006c
	lda ram_006e
	clc
	adc #$04
	sta ram_006e
	jsr $f3db
	rts
	jsr $f44f
	lda ram_006c
	clc
	adc #$10
	sta ram_006c
	lda ram_006e
	clc
	adc #$04
	sta ram_006e
	jsr $f44f
	rts
	ldx ram_0022
	lda ram_006c
	sta $0300,x
	lda #$01
	clc
	adc ram_0022
	tax
	lda ram_006e
	sta $0300,x
	lda #$02
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$03
	clc
	adc ram_0022
	tax
	lda ram_006b
	sta $0300,x
	lda ram_0022
	clc
	adc #$04
	sta ram_0022
	rts
	ldx ram_0022
	lda ram_006c
	sta $0300,x
	lda #$01
	clc
	adc ram_0022
	tax
	lda ram_006e
	sta $0300,x
	lda #$02
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$03
	clc
	adc ram_0022
	tax
	lda ram_006b
	sec
	sbc #$08
	sta $0300,x
	lda #$04
	clc
	adc ram_0022
	tax
	lda ram_006c
	sta $0300,x
	lda #$05
	clc
	adc ram_0022
	tax
	lda ram_006e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$07
	clc
	adc ram_0022
	tax
	lda ram_006b
	sta $0300,x
	lda #$08
	clc
	adc ram_0022
	tax
	lda ram_006c
	sta $0300,x
	lda #$09
	clc
	adc ram_0022
	tax
	lda ram_006e
	clc
	adc #$04
	sta $0300,x
	lda #$0a
	clc
	adc ram_0022
	tax
	lda ram_006d
	sta $0300,x
	lda #$0b
	clc
	adc ram_0022
	tax
	lda ram_006b
	clc
	adc #$08
	sta $0300,x
	lda ram_0022
	clc
	adc #$0c
	sta ram_0022
	rts
	jsr $db80
	jsr $db8e
	jsr $c31d
	jsr $dbc3
	jsr $dbda
	jsr $db8e
	jsr $db8e
	jsr $f6d3
	lda #$00
	sta ram_00bc
	lda #$5a
	sta ram_00bd
	lda #$56
	sta ram_00be
	lda #$ff
	sta ram_00bf
	lda #$01
	sta ram_00c0
	lda #$00
	sta ram_00c1
	lda #$00
	sta ram_005c
	lda #$00
	sta ram_00c2
	jsr $f7e2
	jsr $f7ee
	jsr $f7e8
	jsr $f7e2
	jsr $f7ee
	lda #$00
	sta ram_0009
	lda ram_00c2
	cmp ram_0009
	beq $f698
	jsr $f6e9
	.byte $AD, $BE, $00, $18, $6D, $BF, $00, $8D
	.byte $BE, $00, $AD, $BD, $00, $18, $6D, $C0
	.byte $00, $8D, $BD, $00, $A9, $32, $8D, $09
	.byte $00, $AD, $BE, $00, $CD, $09, $00, $D0
	.byte $05, $A9, $01, $8D, $BF, $00, $A9, $82
	.byte $8D, $09, $00, $AD, $BE, $00, $CD, $09
	.byte $00, $D0, $05, $A9, $FF, $8D, $BF, $00
	.byte $A9, $46, $8D, $09, $00, $AD, $BD, $00
	.byte $CD, $09, $00, $D0, $05, $A9, $01, $8D
	.byte $C0, $00, $A9, $6E, $8D, $09, $00, $AD
	.byte $BD, $00, $CD, $09, $00, $D0, $05, $A9
	.byte $FF, $8D, $C0, $00
	lda ram_0004
	clc
	adc #$03
	sta ram_0004
	lda ram_0005
	clc
	adc #$07
	sta ram_0005
	jsr $f836
	lda #$00
	sta ram_0009
	lda ram_0019
	cmp ram_0009
	beq $f6bf
	lda #$01
	sta ram_00c2
	lda #$00
	sta ram_0009
	lda ram_001a
	cmp ram_0009
	beq $f6cf
	jmp $f6d2
	jmp $f61d
	rts
	jsr $dc26
	jsr $db8e
	jsr $f71c
	jsr $db8e
	jsr $f7a8
	jsr $db8e
	jsr $db8e
	rts
	.byte $A9, $00, $8D, $03, $20, $A0, $F0, $AD
	.byte $BD, $00, $8D, $69, $00, $AD, $BE, $00
	.byte $8D, $04, $20, $E8, $98, $8D, $04, $20
	.byte $E8, $A9, $20, $8D, $04, $20, $E8, $AD
	.byte $69, $00, $8D, $04, $20, $18, $69, $08
	.byte $8D, $69, $00, $E8, $C8, $C8, $C0, $00
	.byte $D0, $DB, $60
	jsr $db8e
	lda #$20
	sta PpuAddr_2006
	lda #$c4
	sta PpuAddr_2006
	ldx #$00
	lda $e2b2,x
	sta PpuData_2007
	inx
	cpx #$80
	bne $f72b
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$44
	sta PpuAddr_2006
	ldx #$80
	lda $e2b2,x
	sta PpuData_2007
	inx
	cpx #$b9
	bne $f745
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$ab
	sta PpuAddr_2006
	ldx #$00
	lda $e36b,x
	sta PpuData_2007
	inx
	cpx #$80
	bne $f75f
	jsr $db8e
	lda #$22
	sta PpuAddr_2006
	lda #$c9
	sta PpuAddr_2006
	ldx #$00
	lda $e3eb,x
	sta PpuData_2007
	inx
	cpx #$0d
	bne $f779
	jsr $db8e
	lda #$23
	sta PpuAddr_2006
	lda #$c0
	sta PpuAddr_2006
	ldx #$00
	lda #$00
	sta PpuData_2007
	inx
	cpx #$18
	bne $f795
	lda #$55
	sta PpuData_2007
	inx
	cpx #$40
	bne $f79f
	rts
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta ram_0066
	ldx ram_0066
	lda $e23a,x
	sta PpuData_2007
	inc ram_0066
	lda #$1f
	sta ram_0009
	lda ram_0066
	cmp ram_0009
	bpl $f7d3
	jmp $f7b7
	rts
	.byte $AC, $11, $00, $A9, $00, $8D, $07, $20
	.byte $88, $C0, $00, $D0, $F8, $60
	lda PpuStatus_2002
	bpl $f7e2
	rts
	lda PpuStatus_2002
	bmi $f7e8
	rts
	lda PpuStatus_2002
	and #$10
	bne $f7ee
	ldy #$c8
	lda PpuStatus_2002
	and #$10
	bne $f7f7
	lda #$00
	sta PpuScroll_2005
	sta PpuScroll_2005
	dey
	cpy #$00
	bne $f7f7
	ldx ram_001d
	ldy #$ff
	lda PpuStatus_2002
	and #$10
	bne $f810
	lda $e4eb,x
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	inx
	dey
	cpy #$00
	bne $f810
	inc ram_001d
	lda #$00
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	rts
	jsr $f8b1
	lda #$0a
	sta ram_0009
	lda ram_00c1
	cmp ram_0009
	bmi $f85d
	lda #$00
	sta ram_0009
	lda ram_005c
	cmp ram_0009
	beq $f854
	rts
	.byte $A9, $01, $8D, $5C, $00, $20, $D8, $D5
	.byte $60
	lda #$00
	sta ram_0009
	lda ram_00c3
	cmp ram_0009
	beq $f880
	lda #$00
	sta ram_0009
	lda ram_00c4
	cmp ram_0009
	bne $f880
	lda #$00
	sta ram_00c3
	inc ram_00c1
	rts
	lda #$00
	sta ram_0009
	lda ram_00c4
	cmp ram_0009
	bne $f88e
	rts
	ldx ram_00c1
	lda $f908,x
	sta ram_00c5
	lda ram_00c5
	sta ram_0009
	lda ram_00c4
	cmp ram_0009
	bne $f8ab
	lda #$01
	sta ram_00c3
	rts
	lda #$00
	sta ram_00c1
	rts
	jsr $d539
	lda ram_0013
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0014
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0015
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0016
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0018
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0017
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_0019
	sta ram_00c4
	lda ram_00c4
	asl a
	clc
	adc ram_001a
	sta ram_00c4
	rts
	.byte $20
	.byte $20, $10, $10, $08, $04, $08, $04, $40
	.byte $80, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.byte $FF
	
	.addr $C000, $C00, $DC6A

	.segment "CHR0"
	.incbin "SOF_v1d.nes", $20010, $2000

	.segment "CHR1"
	.incbin "SOF_v1d.nes", $22010, $2000

	.segment "CHR2"
	.incbin "SOF_v1d.nes", $24010, $2000

	.segment "CHR3"
	.incbin "SOF_v1d.nes", $26010, $2000
