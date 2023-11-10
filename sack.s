.include "inc/nes.inc"

; $9978 is start of level 1 music I think


.segment "HEADER"
	INES_MAPPER = 4
	INES_PRG_ROM_SIZE = $8
	INES_CHR_ROM_SIZE = $4
	INES_MIRROR = 1
	.include "inc/header.inc"

.include "src/memory.s"

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
	reset:
	nmi:
	jsr label_c35a
	jsr label_c236
	jsr label_db8e
	jsr label_db8e
	jsr label_f5dd
	jsr label_dbda
	lda #$30
	sta PPU_CTRL1
	lda #$04
	sta PPU_CTRL2
	jsr $dc26
	jsr $c1c2
	jsr label_db8e
	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda #$00
	sta a: $06
	jsr $c26a
	lda #$00
	sta a: $07
	jsr $e5eb
	lda #$03
	sta a: player_lives
	jsr $dc71
	jsr $cabb
	jsr $d539
	jsr $c7ec
	jsr $d2bb
	jsr $e8ed
	jsr $c24e

	; if player_health is 0, KILL?
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	beq $c069
	jsr $e679
	jsr $c17f
	jsr $e816
	jsr label_db8e
	jsr $db61
	lda #$00
	sta a: temp
	lda a: $0b
	cmp a: temp
	beq $c085
	jmp $c0e9
	lda #$fc
	sta a: temp
	lda a: $0c
	and #$fc
	cmp a: temp
	bne $c0aa
	jsr $c9e2
	lda #$02
	sta a: temp
	lda a: $0c
	cmp a: temp
	bne $c0a7
	jmp $c04a
	jmp $c0cd
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $c0ca
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	bne $c0ca
	jsr $cab7
	jmp $c0cd
	jmp $c04a
	lda #$00
	sta a: temp
	lda a: player_lives
	cmp a: temp
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
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $c110
	jmp $c0f7
	jsr $d5c3
	lda #$01
	sta a: player_fall_state
	jsr label_db8e
	jsr $d2bb
	jsr $db61
	lda a: $0c
	sec
	sbc #$03
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	beq $c13c
	jmp $c118
	lda #$1e
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $c15a
	jmp $c141
	jmp $c15d
	inc a: $06
	lda #$05
	sta a: temp
	lda a: $06
	cmp a: temp
	bne $c170
	jmp $d8b7
	jsr $c26a
	jsr $c1c2
	jsr $dc71
	jsr $cabb
	jmp $c04a
	lda a: $04
	pha
	lda #$0d
	pha
	lda a: player_velocity
	clc
	adc a: $86
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $04
	lda a: $05
	pha
	lda #$11
	pha
	lda a: $12
	clc
	adc a: $5b
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $05
	rts
	lda #$00
	sta a: button_a_down
	lda #$00
	sta a: button_b_down
	lda #$00
	sta a: button_up_down
	lda #$00
	sta a: button_down_down
	lda #$00
	sta a: button_right_down
	lda #$00
	sta a: button_left_down
	lda #$00
	sta a: button_select_down
	lda #$00
	sta a: button_start_down
	lda #$00
	sta a: $1b
	lda #$01
	sta a: player_direction
	lda #$00
	sta a: $0e
	lda #$00
	sta a: title_screen_wave_timer
	lda #$00
	sta a: $1e
	lda #$00
	sta a: $1f
	lda #$00
	sta a: $20
	lda #$00
	sta a: $21
	lda #$10
	sta a: $22
	lda #$00
	sta a: $0b
	lda #$00
	sta a: $23
	lda #$20
	sta a: $24
	lda #$00
	sta a: $25
	lda #$00
	sta a: $26
	lda #$00
	sta a: $27
	rts
	label_c236:
		lda #$00
		sta APU_CHANCTRL
		lda #$1f
		sta APU_CHANCTRL
		rts
	ldx #$00
	lda #$00
	sta APU_PULSE1CTRL,x
	inx
	cpx #$10
	bne $c245
	rts
	lda #$0f
	sta a: temp
	lda a: $22
	cmp a: temp
	bpl $c25c
	rts
	ldx a: $22
	lda #$f5
	sta $0300,x
	inc a: $22
	jmp $c24e
	lda a: $06
	asl a
	sta a: $28
	lda #$06
	sta $8000
	lda a: $28
	sta $8001
	lda #$07
	sta $8000
	lda a: $28
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
	lda a: $06
	asl a
	asl a
	clc
	adc #$0c
	sta a: $28
	lda #$02
	sta $8000
	lda a: $28
	sta $8001
	lda #$03
	sta $8000
	lda a: $28
	clc
	adc #$01
	sta $8001
	lda #$04
	sta $8000
	lda a: $28
	clc
	adc #$02
	sta $8001
	lda #$05
	sta $8000
	lda a: $28
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
	label_c35a:
		jmp $c31d
		rts
	jsr $dc6b
	jsr label_db8e
	jsr $dbc3
	jsr $dc26
	jsr label_db8e
	ldx #$00
	lda #$f5
	sta a: $2a,x
	sta a: $32,x
	sta a: $42,x
	sta a: $4a,x
	sta a: $3a,x
	inx
	cpx #$08
	bne $c371
	lda #$07
	sta a: $52
	lda #$0b
	sta a: $29
	jsr label_db8e
	lda #$07
	sta a: $52
	jsr label_db8e
	jsr $c4b4
	jsr label_db8e
	jsr $c5aa
	jsr label_db8e
	jsr $c6a0
	dec a: $52
	lda #$ff
	sta a: temp
	lda a: $52
	cmp a: temp
	beq $c3bc
	jmp $c397
	lda #$00
	sta a: $52
	jsr label_db8e
	jsr $c706
	inc a: $52
	lda #$05
	sta a: temp
	lda a: $52
	cmp a: temp
	beq $c3da
	jmp $c3c1
	jsr label_db8e
	jsr $c414
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	jsr label_db8e
	lda #$01
	sta a: temp
	lda a: $53
	cmp a: temp
	bne $c3ff
	jsr $c47d
	rts
	lda #$03
	sta a: temp
	lda a: $53
	cmp a: temp
	bne $c410
	jsr $c414
	rts
	jsr $c44b
	rts
	lda #$55
	sta a: $54
	lda #$00
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $8004,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $c447
	rts
	jmp $c42d
	rts
	lda #$01
	clc
	adc a: $53
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	lda #$0e
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $c479
	rts
	jmp $c463
	rts
	lda #$aa
	sta a: $54
	lda #$02
	sta a: $53
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $8024,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $c4b0
	rts
	jmp $c496
	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $2a,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne $c4d4
	rts
	ldx a: $55
	lda a: $52
	sta a: $2a,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldx a: $55
	lda $e10a,x
	sta a: $56
	ldx a: $55
	lda $e112,x
	sta a: $57
	ldy #$00
	ldx #$00
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$20
	beq $c5a9
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	jmp $c505
	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $32,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne $c5ca
	rts
	ldx a: $55
	lda a: $52
	sta a: $32,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldx a: $55
	lda $e11a,x
	sta a: $56
	ldx a: $55
	lda $e122,x
	sta a: $57
	ldy #$20
	ldx #$00
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	dey
	dey
	dey
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	adc #$10
	sta PPU_VRAM_IO
	adc #$01
	sta PPU_VRAM_IO
	iny
	clc
	cpy #$3c
	beq $c69f
	clc
	lda a: $57
	adc #$20
	sta a: $57
	lda a: $56
	adc #$00
	sta a: $56
	jmp $c5fb
	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $3a,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne $c6c0
	rts
	ldx a: $55
	lda a: $52
	sta a: $3a,x
	ldx a: $55
	lda $e12a,x
	sta a: $56
	ldx a: $55
	lda $e132,x
	sta a: $57
	ldy #$3c
	lda a: $56
	sta PPU_VRAM_ADDR2
	lda a: $57
	sta PPU_VRAM_ADDR2
	lda ($00),y
	sta PPU_VRAM_IO
	iny
	lda ($00),y
	sta PPU_VRAM_IO
	iny
	cpy #$4c
	beq $c705
	clc
	lda a: $57
	adc #$08
	sta a: $57
	jmp $c6dd
	rts
	lda a: $52
	and #$07
	sta a: $55
	ldx a: $55
	lda a: $42,x
	sta a: $11
	lda a: $52
	sta a: temp
	lda a: $11
	cmp a: temp
	bne $c726
	rts
	ldx a: $55
	lda a: $52
	sta a: $42,x
	lda a: $52
	asl a
	tax
	lda $e13a,x
	sta a: $00
	inx
	lda $e13a,x
	sta a: $01
	ldy #$4c
	clc
	lda a: $52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta a: $26
	tax
	lda ($00),y
	iny
	sta a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0400,x
	lsr a: $11
	lsr a: $11
	inx
	cpy #$54
	bne $c750
	ldy #$54
	clc
	lda a: $52
	asl a
	asl a
	asl a
	asl a
	asl a
	sta a: $26
	tax
	lda ($00),y
	iny
	sta a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
	inx
	lda a: $11
	and #$03
	sta $0200,x
	lsr a: $11
	lsr a: $11
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
	sta a: $58
	lda #$00
	sta a: player_is_moving_h
	lda #$00
	sta a: $12
	lda #$00
	sta a: $5a
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $c810
	jsr $c99e
	lda #$00
	sta a: temp
	lda a: button_up_down
	cmp a: temp
	beq $c820
	jsr $dd2d
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $c850
	lda #$00
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne $c83d
	jsr $d204
	lda #$01
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne $c84d
	jsr $d255
	jmp $c984
	lda #$00
	sta a: temp
	lda a: button_down_down
	cmp a: temp
	beq $c862
	lda #$01
	sta a: $12
	lda #$00
	sta a: temp
	lda a: button_right_down
	cmp a: temp
	beq $c88c
	lda #$01
	sta a: player_direction
	jsr $cbaa
	lda #$00
	sta a: temp
	lda a: button_b_down
	cmp a: temp
	beq $c887
	jsr $cbaa
	lda #$01
	sta a: player_is_moving_h
	lda #$00
	sta a: temp
	lda a: button_left_down
	cmp a: temp
	beq $c8b6
	lda #$00
	sta a: player_direction
	jsr $ccfa
	lda #$00
	sta a: temp
	lda a: button_b_down
	cmp a: temp
	beq $c8b1
	jsr $ccfa
	lda #$01
	sta a: player_is_moving_h
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	bne $c8dd
	lda #$00
	sta a: temp
	lda a: $5b
	cmp a: temp
	beq $c8d5
	lda #$0a
	sta a: player_velocity
	lda #$00
	sta a: $5b
	jmp $c984
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq $c90c
	lda #$01
	sta a: temp
	lda a: $5c
	cmp a: temp
	bne $c90c
	lda #$23
	sta a: player_velocity
	lda #$01
	sta a: player_fall_state
	lda #$01
	sta a: $5a
	jsr $d5d8
	jmp $c984
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq $c92c
	lda #$00
	sta a: temp
	lda a: $5b
	cmp a: temp
	beq $c92c
	dec a: $5b
	jmp $c984
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq $c984
	lda #$00
	sta a: temp
	lda a: $5d
	cmp a: temp
	beq $c984
	jsr $d584
	lda #$01
	sta a: player_fall_state
	lda #$28
	sta a: player_velocity
	lda #$03
	sta a: temp
	lda a: $06
	cmp a: temp
	bne $c965
	lda #$2d
	sta a: player_velocity
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $c977
	lda #$26
	sta a: player_velocity
	lda #$00
	sta a: $5d
	lda #$0f
	sta a: $5b
	jmp $c984
	jsr $cb8c
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq $c997
	dec a: i_frames
	jsr $ee7e
	jsr $d4d9
	rts
	;FIXME
	; pausing shit?
	lda #$00
	sta $4015
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $c9b6
	jmp $c99e
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	bne $c9c9
	jmp $c9b6
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $c9dc
	jmp $c9c9
	lda #$0f
	sta $4015
	rts
	lda $805c
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $c9f3
	jmp $ca36
	lda $805d
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $ca04
	jmp $ca36
	lda $805e
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $ca15
	jmp $ca36
	lda #$00
	sta a: $0e
	jsr label_db8e
	jsr $d5ed
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $ca33
	jmp $ca1a
	jmp $cab7
	jsr $dc26
	lda $805f
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	beq $ca6c
	jsr $e679
	jsr $d204
	jsr $d204
	jsr $d204
	jsr label_db8e
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	beq $ca66
	jsr $d629
	jsr $d5ed
	jmp $ca39
	lda #$02
	sta a: $0c
	rts
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq $ca80
	rts
	lda #$96
	sta a: i_frames
	lda #$01
	sta a: player_fall_state
	lda #$0a
	sta a: player_velocity
	dec a: player_health
	lda #$ff
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $caa4
	lda #$00
	sta a: player_health
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $cab6
	lda #$37
	sta a: player_velocity
	rts
	; take a life
	dec a: player_lives
	rts
	jsr $c241
	jsr $dbc3
	jsr label_dbda
	; set health to 3
	lda #$03
	sta a: player_health
	lda #$64
	sta a: i_frames
	lda #$01
	sta a: player_direction
	lda #$0a
	sta a: $0c
	lda #$00
	sta a: player_pos_x2
	lda #$02
	sta a: player_pos_x1
	lda #$01
	sta a: temp
	lda a: $27
	cmp a: temp
	bne $caf5
	lda $8059
	sta a: player_pos_x1
	lda #$00
	sta a: player_velocity
	lda #$00
	sta a: player_fall_state
	lda #$ff
	sta a: $60
	jsr $d825
	lda #$00
	sta a: $61
	jsr label_db8e
	inc a: $61
	lda #$78
	sta a: temp
	lda a: $61
	cmp a: temp
	bpl $cb22
	jmp $cb0c
	lda #$00
	sta a: $61
	jsr $dbc3
	jsr $c35e
	lda #$00
	sta a: $07
	jsr $e5eb
	lda #$0f
	sta APU_CHANCTRL
	lda #$00
	sta a: $1e
	lda #$00
	sta a: $1f
	lda #$00
	sta a: $20
	lda #$00
	sta a: $21
	lda a: $20
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc #$06
	cmp a: temp
	bmi $cb75
	jsr $d6e5
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	beq $cb72
	jsr $d629
	jmp $cb4e
	jsr $c28b
	jsr label_db8e
	jsr init_enemies
	lda #$00
	sta a: $5d
	lda #$00
	sta a: $25
	jsr $d2bb
	rts
	ldx a: player_velocity
	lda $e040,x
	sta a: $62
	lda #$01
	sta a: temp
	lda a: player_fall_state
	cmp a: temp
	bne $cba6
	jmp $ce4a
	rts
	jmp $d023
	rts
	lda #$03
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $cbba
	jmp $d204
	lda a: player_pos_x1
	asl a
	asl a
	asl a
	clc
	adc #$08
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi $cc2b
	lda #$81
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl $cc2b
	ldx a: $63
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cbfa
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cc0a
	jmp $d204
	lda a: $63
	clc
	adc #$06
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cc28
	rts
	jmp $d204
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl $cc97
	lda a: $0c
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cc66
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cc76
	jmp $d204
	lda a: $66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cc94
	rts
	jmp $d204
	lda a: $0c
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $ccc8
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $ccd8
	jmp $d204
	lda a: $66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $ccf6
	rts
	jsr $d204
	rts
	lda #$00
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	beq $cd0a
	jmp $d255
	lda a: player_pos_x1
	sec
	sbc #$01
	asl a
	asl a
	asl a
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi $cd7b
	lda #$81
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl $cd7b
	ldx a: $63
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cd4a
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cd5a
	jmp $d255
	lda a: $63
	clc
	adc #$06
	tax
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cd78
	rts
	jmp $d255
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bpl $cde7
	lda a: $0c
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cdb6
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cdc6
	jmp $d255
	lda a: $66
	sec
	sbc #$01
	tax
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cde4
	rts
	jmp $d255
	lda a: $0c
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $ce18
	rts
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $ce28
	jmp $d255
	lda a: $66
	sec
	sbc #$01
	tax
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $ce46
	rts
	jmp $d255
	rts
	lda #$00
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	bne $ce6f
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne $ce6e
	lda #$00
	sta a: player_fall_state
	rts
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $ce9f
	jsr $c241
	lda a: player_position_y_again
	sec
	sbc a: $62
	sta a: player_position_y_again
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne $ce9e
	lda #$00
	sta a: player_fall_state
	rts

	lda a: player_pos_x1
	asl a
	asl a
	asl a
	sta a: $63
	lda #$97
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi $ceb8
	jmp $cf71
	lda a: $0c
	pha
	lda #$e8
	sec
	sbc a: $62
	sta a: $11
	pla
	clc
	adc a: $11
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cef7
	lda a: $0c
	pha
	lda #$ef
	sec
	sbc a: $62
	sta a: $11
	pla
	clc
	adc a: $11
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cf1d
	jmp $d01a
	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $cf3e
	beq $cf3e
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cf51
	jmp $d01a
	lda a: $0c
	sec
	sbc a: $62
	sta a: $0c
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne $cf70
	lda #$00
	sta a: player_fall_state
	rts
	lda a: $0c
	clc
	adc #$79
	sec
	sbc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $cfa0
	lda a: $0c
	clc
	adc #$7f
	sec
	sbc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $cfc6
	jmp $d01a
	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $cfe7
	beq $cfe7
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $cffa
	jmp $d01a
	lda a: $0c
	sec
	sbc a: $62
	sta a: $0c
	dec a: player_velocity
	lda #$00
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bne $d019
	lda #$00
	sta a: player_fall_state
	rts
	lda #$00
	sta a: player_fall_state
	jsr $dc92
	rts
	lda #$00
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $d05d
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq $d04c
	lda #$00
	sta a: player_fall_state
	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl $d05c
	inc a: player_velocity
	rts
	lda a: player_pos_x1
	asl a
	asl a
	asl a
	sta a: $63
	lda #$e8
	sta a: temp
	lda a: $0c
	and #$f8
	cmp a: temp
	bne $d080
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	rts
	lda #$f0
	sta a: temp
	lda a: $0c
	and #$f0
	cmp a: temp
	bne $d09a
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	rts
	lda #$7f
	sta a: temp
	lda a: $0c
	cmp a: temp
	bmi $d0aa
	jmp $d144
	lda a: $0c
	clc
	adc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $d0de
	jmp $d1e1
	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $d0ff
	beq $d0ff
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $d112
	jmp $d1e1
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq $d12e
	lda #$00
	sta a: player_fall_state
	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl $d13e
	inc a: player_velocity
	lda #$00
	sta a: $5d
	rts
	lda a: $0c
	clc
	adc a: $62
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $67
	lda #$00
	sta a: temp
	lda a: $67
	and a: $54
	cmp a: temp
	beq $d17b
	jmp $d1e1
	lda #$00
	sta a: $64
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $d19c
	beq $d19c
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $64
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $d1af
	jmp $d1e1
	lda a: $0c
	clc
	adc a: $62
	sta a: $0c
	lda #$00
	sta a: temp
	lda a: $62
	cmp a: temp
	beq $d1cb
	lda #$00
	sta a: player_fall_state
	lda #$3c
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bpl $d1db
	inc a: player_velocity
	lda #$00
	sta a: $5d
	rts
	lda #$02
	sta a: player_fall_state
	lda #$11
	sta a: temp
	lda a: player_velocity
	cmp a: temp
	bmi $d1f9
	lda #$0c
	sta a: player_velocity
	rts
	lda #$00
	sta a: player_velocity
	lda #$01
	sta a: $5d
	rts
	lda $8058
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $d213
	rts
	lda $8059
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $d226
	lda #$01
	sta a: $27
	inc a: player_pos_x2
	lda #$10
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bne $d23e
	lda #$00
	sta a: player_pos_x2
	inc a: player_pos_x1
	lda #$0a
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc a: $20
	cmp a: temp
	bmi $d254
	beq $d254
	jsr $d6e5
	rts
	lda #$00
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $d270
	lda #$08
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $d270
	rts
	lda $805a
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $d28c
	lda #$01
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $d28c
	rts
	dec a: player_pos_x2
	lda #$ff
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bne $d2a4
	lda #$0f
	sta a: player_pos_x2
	dec a: player_pos_x1
	lda #$06
	sta a: temp
	lda a: player_pos_x1
	sec
	sbc a: $20
	cmp a: temp
	bpl $d2ba
	beq $d2ba
	jsr $d773
	rts
	lda #$20
	sta a: $24
	inc a: $25
	lda #$00
	sta a: temp
	lda a: $25
	and #$08
	cmp a: temp
	beq $d2d7
	lda #$28
	sta a: $24
	lda #$00
	sta a: temp
	lda a: player_is_moving_h
	cmp a: temp
	bne $d2e9
	lda #$00
	sta a: $25
	lda #$02
	sta a: temp
	lda a: player_fall_state
	cmp a: temp
	beq $d2fb
	lda #$30
	sta a: $24
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $d30d
	lda #$38
	sta a: $24
	lda a: $0c
	sec
	sbc #$20
	sta a: player_offset_y
	lda a: player_pos_x1
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: player_pos_x2
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sec
	sbc #$01
	sta a: player_offset_x
	lda #$01
	sta a: $6a
	lda #$00
	sta a: temp
	lda a: i_frames
	cmp a: temp
	beq $d351
	lda a: i_frames
	and #$03
	sta a: $6a
	lda #$00
	sta a: temp
	lda a: $5a
	cmp a: temp
	beq $d391
	lda a: player_offset_x
	clc
	adc #$04
	sta a: $6b
	lda a: $0c
	sec
	sbc #$02
	sta a: $6c
	lda #$03
	sta a: $6d
	lda #$00
	sta a: temp
	lda a: $1b
	and #$02
	cmp a: temp
	beq $d389
	lda #$43
	sta a: $6d
	lda #$1e
	sta a: $6e
	jsr $f4f5
	lda #$01
	sta a: temp
	lda a: player_direction
	cmp a: temp
	bne $d3a1
	jmp $d3a4
	jmp $d43a
	ldx #$00
	lda a: player_offset_y
	sta $0300,x
	ldx #$01
	lda a: $24
	sta $0300,x
	ldx #$02
	lda a: $6a
	sta $0300,x
	ldx #$03
	lda a: player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$05
	lda #$02
	clc
	adc a: $24
	sta $0300,x
	ldx #$06
	lda a: $6a
	sta $0300,x
	ldx #$07
	lda a: player_offset_x
	sta $0300,x
	ldx #$08
	lda a: player_offset_y
	sta $0300,x
	ldx #$09
	lda #$04
	clc
	adc a: $24
	sta $0300,x
	ldx #$0a
	lda a: $6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$06
	clc
	adc a: $24
	sta $0300,x
	ldx #$0e
	lda a: $6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	rts
	lda a: $6a
	clc
	adc #$40
	sta a: $6a
	ldx #$00
	lda a: player_offset_y
	sta $0300,x
	ldx #$01
	lda #$04
	clc
	adc a: $24
	sta $0300,x
	ldx #$02
	lda a: $6a
	sta $0300,x
	ldx #$03
	lda a: player_offset_x
	sta $0300,x
	ldx #$04
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$05
	lda #$06
	clc
	adc a: $24
	sta $0300,x
	ldx #$06
	lda a: $6a
	sta $0300,x
	ldx #$07
	lda a: player_offset_x
	sta $0300,x
	ldx #$08
	lda a: player_offset_y
	sta $0300,x
	ldx #$09
	lda a: $24
	sta $0300,x
	ldx #$0a
	lda a: $6a
	sta $0300,x
	ldx #$0b
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	ldx #$0c
	lda #$10
	clc
	adc a: player_offset_y
	sta $0300,x
	ldx #$0d
	lda #$02
	clc
	adc a: $24
	sta $0300,x
	ldx #$0e
	lda a: $6a
	sta $0300,x
	ldx #$0f
	lda #$08
	clc
	adc a: player_offset_x
	sta $0300,x
	rts
	lda #$00
	sta a: $0e
	lda a: player_health
	sta a: temp
	lda a: $0e
	cmp a: temp
	bmi $d4ed
	rts
	ldx a: $22
	lda #$08
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda #$02
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda #$02
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda #$10
	pha
	lda a: $0e
	asl a
	asl a
	asl a
	sta a: $11
	pla
	clc
	adc a: $11
	sta $0300,x
	lda a: $22
	clc
	adc #$04
	sta a: $22
	inc a: $0e
	jmp $d4de
	rts
	rts
	lda #$01
	sta APU_PAD1
	lda #$00
	sta APU_PAD1
	lda APU_PAD1
	and #$01
	sta a: button_a_down
	lda APU_PAD1
	and #$01
	sta a: button_b_down
	lda APU_PAD1
	and #$01
	sta a: button_select_down
	lda APU_PAD1
	and #$01
	sta a: button_start_down
	lda APU_PAD1
	and #$01
	sta a: button_up_down
	lda APU_PAD1
	and #$01
	sta a: button_down_down
	lda APU_PAD1
	and #$01
	sta a: button_left_down
	lda APU_PAD1
	and #$01
	sta a: button_right_down
	rts
	lda #$9f
	sta APU_PULSE2CTRL
	lda #$8c
	sta APU_PULSE2RAMP
	lda #$4d
	sta APU_PULSE2FTUNE
	lda #$95
	sta APU_PULSE2STUNE
	rts
	; FIXME
	lda #$9f
	sta $4000
	lda #$84
	sta $4001
	lda #$d3
	sta $4002
	lda #$fc
	sta $4003
	rts
	lda #$88
	sta $4000
	lda #$48
	sta $4001
	lda #$25
	sta $4002
	lda #$4b
	sta $4003
	rts

	lda #$0b
	sta APU_NOISECTRL
	lda #$ff
	sta $400d
	lda #$ff
	sta APU_NOISEFREQ1
	lda #$08
	sta APU_NOISEFREQ2
	rts
	; FIXME
	lda #$0f
	sta $400C
	lda #$ff
	sta $400d
	lda #$f9
	sta $400E
	lda #$08
	sta $400F
	rts
	lda #$00
	sta a: temp
	lda a: $1e
	and #$04
	cmp a: temp
	beq $d609
	lda #$31
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	jmp $d613
	lda #$30
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	lda a: $1e
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc a: $1f
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	lda #$00
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d637
	rts
	lda #$06
	sta a: temp
	lda a: $58
	cmp a: temp
	bmi $d647
	jmp $d696
	lda a: $1e
	clc
	adc #$05
	sta a: $52
	lda #$01
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d660
	jsr $c4b4
	lda #$03
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d670
	jsr $c5aa
	lda #$04
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d680
	jsr $c6a0
	lda #$05
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d690
	jsr $c706
	lda #$00
	sta a: $58
	rts
	lda a: $1e
	sec
	sbc #$01
	sta a: $52
	lda #$06
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d6af
	jsr $c4b4
	lda #$08
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d6bf
	jsr $c5aa
	lda #$09
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d6cf
	jsr $c6a0
	lda #$0a
	sta a: temp
	lda a: $58
	cmp a: temp
	bne $d6df
	jsr $c706
	lda #$00
	sta a: $58
	rts
	lda $805b
	sta a: temp
	lda a: $20
	cmp a: temp
	bne $d6f9
	lda #$01
	sta a: $0b
	rts
	inc a: $21
	lda #$10
	sta a: temp
	lda a: $21
	cmp a: temp
	bne $d711
	lda #$00
	sta a: $21
	inc a: $20
	lda #$3f
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d727
	lda #$00
	sta a: $1f
	inc a: $1e
	rts
	inc a: $1f
	lda #$0a
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d73c
	lda #$01
	sta a: $58
	lda #$1e
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d74e
	lda #$03
	sta a: $58
	lda #$28
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d760
	lda #$04
	sta a: $58
	lda #$32
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d772
	lda #$05
	sta a: $58
	rts
	lda #$00
	sta a: temp
	lda a: $1e
	cmp a: temp
	bne $d78e
	lda #$01
	sta a: temp
	lda a: $1f
	cmp a: temp
	bpl $d78e
	rts
	lda $805b
	sta a: temp
	lda a: $20
	cmp a: temp
	bne $d79d
	rts
	dec a: $21
	lda #$ff
	sta a: temp
	lda a: $21
	cmp a: temp
	bne $d7b5
	lda #$0f
	sta a: $21
	dec a: $20
	lda #$00
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d7cb
	lda #$3f
	sta a: $1f
	dec a: $1e
	rts
	dec a: $1f
	lda #$00
	sta a: temp
	lda a: $1e
	cmp a: temp
	bne $d7dc
	rts
	lda #$08
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d7ee
	lda #$06
	sta a: $58
	lda #$1c
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d800
	lda #$08
	sta a: $58
	lda #$26
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d812
	lda #$09
	sta a: $58
	lda #$30
	sta a: temp
	lda a: $1f
	cmp a: temp
	bne $d824
	lda #$0a
	sta a: $58
	rts
	jsr $dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $bfb8,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne $d834
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$68
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $bfd8,x
	sta PPU_VRAM_IO
	inx
	cpx #$20
	bne $d84b
	jsr label_db8e
	lda a: player_lives
	sta a: $0e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$04
	sta PPU_VRAM_ADDR2
	lda #$ee
	sta PPU_VRAM_IO
	lda #$ef
	sta PPU_VRAM_IO
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d886
	jmp $d869
	lda a: player_lives
	sta a: $0e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$24
	sta PPU_VRAM_ADDR2
	lda #$fe
	sta PPU_VRAM_IO
	lda #$ff
	sta PPU_VRAM_IO
	dec a: $0e
	lda #$00
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d8b3
	jmp $d896
	jsr $db09
	rts
	; FIXME
	jsr $dae9
	jsr label_db8e
	lda #$20
	sta $2006
	lda #$48
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e401,x
	sta $2007
	inc a: $0e
	lda #$0f
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d8e8
	jmp $d8cc
	jsr label_db8e
	lda #$20
	sta $2006
	lda #$ab
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e410,x
	sta $2007
	inc a: $0e
	lda #$08
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d916
	jmp $d8fa
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$01
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e419,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d944
	jmp $d928
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e437,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d972
	jmp $d956
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e455,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9a0
	jmp $d984
	jsr label_db8e
	lda #$21
	sta $2006
	lda #$e1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e473,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9ce
	jmp $d9b2
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$21
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e491,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $d9fc
	jmp $d9e0
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e4af,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $da2a
	jmp $da0e
	jsr label_db8e
	lda #$22
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e4cd,x
	sta $2007
	inc a: $0e
	lda #$1e
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $da58
	jmp $da3c
	jsr $db09
	jsr $c241
	lda #$00
	sta $2005
	lda #$00
	sta $2005
	jsr label_db8e
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	bne $da7e
	jmp $da68
	jsr label_db8e
	jsr $d539
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $da94
	jmp $da7e
	rts
	jsr $dae9
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$08
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e3f8,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$09
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $dac3
	jmp $daa7
	jsr $db09
	jsr $c241
	lda #$c8
	sta a: $71
	jsr $dad2
	rts
	jsr label_db8e
	dec a: $71
	lda #$00
	sta a: temp
	lda a: $71
	cmp a: temp
	beq $dae8
	jmp $dad2
	rts
	jsr $db80
	jsr $c2e0
	jsr label_db8e
	jsr label_dbda
	jsr label_db8e
	jsr $dc26
	jsr label_db8e
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e25a,x
	sta PPU_VRAM_IO
	inc a: $0e
	lda #$10
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $db32
	rts
	jmp $db18
	; FIXME
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda $e000,x
	sta $2007
	inc a: $0e
	lda #$20
	sta a: temp
	lda a: $0e
	cmp a: temp
	bne $db5e
	rts
	jmp $db44
	jsr $d629
	jsr $d5ed
	lda #$03
	sta APU_SPR_DMA
	lda #$10
	sta a: $22
	rts ; FIXME
	jsr label_db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
	jsr label_db8e
	lda #$20
	sta PPU_CTRL1
	lda #$1c
	sta PPU_CTRL2
	rts
	label_db8e:
		lda PPU_STATUS
		bpl label_db8e
		lda PPU_STATUS
		bmi $db93
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR1
		lda #$00
		sta PPU_VRAM_ADDR2
		lda #$00
		sta PPU_VRAM_ADDR2
		inc a: $1b
		rts
	; FIXME
	lda $2002
	bpl $dbb0
	lda $2002
	bmi $dbb5
	lda $2002
	bpl $dbba
	inc a: $1b
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$0e
	ldy a: $20
	sta PPU_VRAM_IO
	dey
	cpy #$00
	bne $dbd2
	label_dbda:
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	jsr $dc1b
	rts
	ldx #$00
	sta PPU_VRAM_IO
	inx
	cpx #$00
	bne $dc1d
	rts
	lda #$00
	sta a: $66
	lda #$00
	sta PPU_SPR_ADDR
	lda #$f5
	sta PPU_SPR_IO
	inc a: $66
	lda #$00
	sta a: temp
	lda a: $66
	cmp a: temp
	beq $dc48
	jmp $dc30
	rts
	; FIXME
	lda #$00
	sta a: $66
	ldx a: $66
	lda #$f5
	sta OAM+0,x
	inc a: $66
	lda #$00
	sta a: temp
	lda a: $66
	cmp a: temp
	beq $dc69
	jmp $dc4e
	rts
	irq:
	rti
	lda #$05
	sta a: $7e
	rts
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda #$00
	sta a: $72,x
	inc a: $0e
	lda #$0c
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $dc91
	jmp $dc76
	rts
	lda #$00
	sta a: $7f
	ldx a: $7f
	lda a: $72,x
	sta a: $80
	lda #$00
	sta a: temp
	lda a: $80
	cmp a: temp
	beq $dcb0
	jmp $dd19
	ldx a: $7f
	lda $8070,x
	sta a: $81
	ldx a: $7f
	lda $807c,x
	sta a: $82
	lda a: $82
	sta a: temp
	lda a: $0c
	sec
	sbc #$20
	lsr a
	lsr a
	lsr a
	lsr a
	cmp a: temp
	beq $dcda
	jmp $dd19
	lda a: $81
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $dcf8
	lda #$06
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $dcf8
	jmp $ddd8
	lda a: $81
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $dd19
	lda #$0a
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $dd19
	jmp $ddd8
	inc a: $7f
	lda #$0c
	sta a: temp
	lda a: $7f
	cmp a: temp
	beq $dd2c
	jmp $dc97
	rts
	lda #$00
	sta a: $83
	ldx a: $83
	lda $8044,x
	sta a: $84
	ldx a: $83
	lda $8049,x
	sta a: $85
	lda a: $85
	sta a: temp
	lda a: $0c
	sec
	sbc #$02
	lsr a
	lsr a
	lsr a
	lsr a
	cmp a: temp
	beq $dd5c
	jmp $dd9b
	lda a: $84
	sta a: temp
	lda a: player_pos_x1
	cmp a: temp
	bne $dd7a
	lda #$04
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $dd7a
	jmp $ddb0
	lda a: $84
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $dd9b
	lda #$0c
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bmi $dd9b
	jmp $ddb0
	inc a: $83
	lda a: $7e
	sta a: temp
	lda a: $83
	cmp a: temp
	bpl $ddaf
	jmp $dd32
	rts
	jsr $c3eb
	lda #$00
	sta a: $86
	jsr label_db8e
	jsr $e679
	jsr $de0d
	inc a: $86
	lda #$15
	sta a: temp
	lda a: $86
	cmp a: temp
	beq $ddd4
	jmp $ddb8
	jsr $c3eb
	rts
	ldx a: $7f
	lda #$01
	sta a: $72,x
	ldx #$05
	lda #$08
	sta a: enemy_type,x
	ldx #$05
	lda a: $82
	asl a
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta a: enemy_pos_y,x
	ldx #$05
	lda a: $81
	sta a: enemy_pos_x,x
	ldx #$05
	lda #$00
	sta a: enemy_pos_x2,x
	ldx #$05
	lda #$01
	sta a: $aa,x
	rts
	lda #$00
	sta a: $0e
	lda #$00
	sta a: $87
	inc a: $87
	lda #$40
	sta a: temp
	lda a: $87
	cmp a: temp
	beq $de2a
	jmp $de17
	inc a: $0e
	lda #$11
	sta a: temp
	lda a: $0e
	cmp a: temp
	beq $de3d
	jmp $de12
	rts
	.reloc
	
.segment "PRGF"
	.org $e000
	weird_fucking_data: ; this is probably at least some pitch table stuff
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
	sta a: $8e
	lda #$00
	sta a: $8f
	lda #$1f
	sta APU_CHANCTRL
	lda #$00
	sta a: $90
	lda a: $07
	asl a
	asl a
	sta a: $91
	ldx a: $91
	lda $8000,x
	sta a: $88
	sta a: music_pointer
	inx
	lda $8000,x
	sta a: $89
	sta a: $03
	inx
	lda $8000,x
	sta a: $8a
	inx
	lda $8000,x
	sta a: $8b
	rts
	iny
	lda (music_pointer), y
	sta a: $8e
	clc
	lda a: music_pointer
	adc #$02
	sta a: music_pointer
	sta a: $8c
	lda a: $03
	adc #$00
	sta a: $03
	sta a: $8d
	jmp $e679
	dec a: $8e
	lda a: $8e
	cmp #$00
	beq $e665
	lda a: $8c
	sta a: music_pointer
	lda a: $8d
	sta a: $03
	jmp $e679
	clc
	lda a: music_pointer
	adc #$01
	sta a: music_pointer
	lda a: $03
	adc #$00
	sta a: $03
	jmp $e679
	lda #$00
	sta a: temp
	lda a: $8f
	cmp a: temp
	beq $e68a
	dec a: $8f
	rts
	ldy #$00
	lda (music_pointer), y
	cmp #$ff
	beq $e62c
	cmp #$fe
	beq $e64c
	sta a: $8f
	iny
	lda (music_pointer), y
	sta a: $90
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$03
	cmp a: temp
	bne $e6b2
	jmp $e6dc
	lda #$03
	sta a: temp
	lda a: $90
	and #$03
	cmp a: temp
	bne $e6c4
	jmp $e6c4
	; this is some music shit right here I can tell you that much
	lda (music_pointer), y
	sta APU_PULSE1CTRL
	iny
	lda (music_pointer), y
	sta APU_PULSE1RAMP
	iny
	lda (music_pointer), y
	sta APU_PULSE1FTUNE
	iny
	lda (music_pointer), y
	sta APU_PULSE1CTUNE
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$0c
	cmp a: temp
	bne $e6ee
	jmp $e718
	lda #$0c
	sta a: temp
	lda a: $90
	and #$0c
	cmp a: temp
	bne $e700
	jmp $e700
	lda (music_pointer), y
	sta APU_PULSE2CTRL
	iny
	lda (music_pointer), y
	sta APU_PULSE2RAMP
	iny
	lda (music_pointer), y
	sta APU_PULSE2FTUNE
	iny
	lda (music_pointer), y
	sta APU_PULSE2STUNE
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$30
	cmp a: temp
	bne $e72a
	jmp $e754
	lda #$30
	sta a: temp
	lda a: $90
	and #$30
	cmp a: temp
	bne $e73c
	jmp $e73c
	lda (music_pointer), y
	sta APU_TRICTRL1
	iny
	lda (music_pointer), y
	sta $4009
	iny
	lda (music_pointer), y
	sta APU_TRIFREQ1
	iny
	lda (music_pointer), y
	sta APU_TRIFREQ2
	iny
	lda #$00
	sta a: temp
	lda a: $90
	and #$c0
	cmp a: temp
	bne $e766
	jmp $e790
	lda #$c0
	sta a: temp
	lda a: $90
	and #$c0
	cmp a: temp
	bne $e778
	jmp $e778
	lda (music_pointer), y
	sta APU_NOISECTRL
	iny
	lda (music_pointer), y
	sta $400d
	iny
	lda (music_pointer), y
	sta APU_NOISEFREQ1
	iny
	lda (music_pointer), y
	sta APU_NOISEFREQ2
	iny
	tya
	sta a: $11
	clc
	lda a: music_pointer
	adc a: $11
	sta a: music_pointer
	lda a: $03
	adc #$00
	sta a: $03
	clc
	lda a: music_pointer
	cmp a: $8a
	bne $e7c3
	lda a: $03
	cmp a: $8b
	bne $e7c3
	lda a: $88
	sta a: music_pointer
	lda a: $89
	sta a: $03
	rts
	init_enemies:
		; set all enemy type slots to zero
		ldx #$00
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$01
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$02
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$03
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$04
		lda #EnemyType::none
		sta a: enemy_type,x
		ldx #$05
		lda #EnemyType::none
		sta a: enemy_type,x
		lda #$05
		sta a: $b0
		rts
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda #$00
	sta a: enemy_type,x
	inc a: $0e
	lda a: $b0
	sta a: temp
	lda a: $0e
	cmp a: temp
	bpl $e815
	jmp $e7f9
	rts
	lda #$01
	sta a: temp
	lda a: $04
	cmp a: temp
	beq $e824
	rts
	lda #$00
	sta a: $0e
	ldx a: $0e
	lda a: enemy_type,x
	sta a: $b1
	lda #$00
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e842
	jmp $e85e
	inc a: $0e
	lda a: $b0
	sta a: temp
	lda a: $0e
	cmp a: temp
	bpl $e858
	beq $e858
	jmp $e829
	; FIXME
	rts
	lda #$00
	sta a: $0e
	lda a: $05
	and #$0f
	sta a: $b1
	ldx a: $b1
	lda $8060,x
	sta a: $b1
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne spawn_enemy
	jmp :+
	spawn_enemy:
		ldx a: $0e
		lda a: $b1
		sta a: enemy_type,x
		ldx a: $0e
		lda #$07
		sta a: enemy_pos_y,x
		ldx a: $0e
		lda #$00
		sta a: enemy_pos_x2,x
		ldx a: $0e
		lda a: player_pos_x1
		clc
		adc #$05
		sta a: enemy_pos_x,x
		ldx a: $0e
		lda #$ff
		sta a: $aa,x
		inc a: $04
		rts
	:
		lda #$00
		sta a: temp
		lda a: $0c
		and #$f0
		cmp a: temp
		bne $e8c0
		rts
	ldx a: $0e
	lda a: $b1
	sta a: enemy_type,x
	ldx a: $0e
	lda a: $0c
	sec
	sbc #$11
	sta a: enemy_pos_y,x
	ldx a: $0e
	lda #$00
	sta a: enemy_pos_x2,x
	ldx a: $0e
	lda a: player_pos_x1
	clc
	adc #$0a
	sta a: enemy_pos_x,x
	jsr $d5c3
	rts
	lda #$ff
	sta a: $b2
	inc a: $b2
	ldx a: $b2
	lda a: enemy_type,x
	sta a: $b1
	lda #$02
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e90e
	jsr $e960
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e91e
	jsr $e960
	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e92e
	jsr $ec12
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e93e
	jsr $edca
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $e94e
	jsr $e960
	lda a: $b0
	sta a: temp
	lda a: $b2
	cmp a: temp
	bpl $e95f
	jmp $e8f2
	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi $e998
	jmp purge_enemy
	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$12
	cmp a: temp
	bpl $e9ac
	jmp purge_enemy
	lda #$00
	sta a: $b7
	lda #$03
	sta a: $62
	jsr $f2cd
	lda #$00
	sta a: temp
	lda a: $1b
	and #$01
	cmp a: temp
	beq $e9cb
	jmp $ea9f
	lda #$ff
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $e9ed
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne $e9ea
	lda #$02
	sta a: $b3
	jmp $ea41
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ea17
	lda #$00
	sta a: $64
	jsr $f083
	lda #$00
	sta a: temp
	lda a: $64
	cmp a: temp
	beq $ea14
	lda #$02
	sta a: $b3
	jmp $ea41
	lda #$02
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ea41
	lda #$00
	sta a: $67
	jsr $f193
	lda #$00
	sta a: temp
	lda a: $67
	cmp a: temp
	beq $ea3e
	lda #$01
	sta a: $b3
	jmp $ea41
	lda #$fc
	sta a: temp
	lda a: $b6
	and #$fc
	cmp a: temp
	bne $ea53
	jmp purge_enemy
	lda a: $b4
	clc
	adc #$05
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi $ea67
	jmp purge_enemy
	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$15
	cmp a: temp
	bpl $ea7b
	jmp purge_enemy
	ldx a: $b2
	lda a: $b3
	sta a: $aa,x
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	ldx a: $b2
	lda a: $b6
	sta a: enemy_pos_y,x
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eaaf
	jmp $ebb7
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eabf
	jmp $eb32
	lda #$02
	sta a: $6d
	lda #$0a
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $eb31
	beq $eb31
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $eb31
	beq $eb31
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$00
	sta a: temp
	lda a: $1b
	and #$10
	cmp a: temp
	beq $eb2e
	lda #$42
	sta a: $6d
	jmp $f44f
	rts
	jmp $f3db
	rts
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $ebb6
	beq $ebb6
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $ebb6
	beq $ebb6
	lda #$00
	sta a: $6d
	lda #$40
	sta a: $6e
	lda #$00
	sta a: temp
	lda a: $1b
	and #$10
	cmp a: temp
	beq $eb73
	lda #$48
	sta a: $6e
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$20
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ebb3
	lda #$40
	sta a: $6d
	jmp $f4dc
	rts
	jmp $f4c3
	rts
	lda #$02
	sta a: $6d
	lda #$02
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $ec11
	beq $ec11
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $ec11
	beq $ec11
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	jmp $f4f5
	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi $ec4a
	jmp purge_enemy
	lda a: $b4
	sta a: temp
	lda a: $20
	clc
	adc #$12
	cmp a: temp
	bpl $ec5e
	jmp purge_enemy
	lda #$00
	sta a: $b7
	lda #$02
	sta a: $62
	jsr $f2cd
	lda #$ff
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ec8d
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne $ec8a
	lda #$01
	sta a: $b3
	jmp $ed11
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	clc
	adc #$02
	cmp a: temp
	bpl $eca5
	beq $eca5
	lda #$01
	sta a: $b3
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	sec
	sbc #$02
	cmp a: temp
	bmi $ecbd
	beq $ecbd
	lda #$02
	sta a: $b3
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ece7
	lda #$00
	sta a: $64
	jsr $f083
	lda #$00
	sta a: temp
	lda a: $64
	cmp a: temp
	beq $ece4
	lda #$02
	sta a: $b3
	jmp $ed11
	lda #$02
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $ed11
	lda #$00
	sta a: $67
	jsr $f193
	lda #$00
	sta a: temp
	lda a: $67
	cmp a: temp
	beq $ed0e
	lda #$01
	sta a: $b3
	jmp $ed11
	lda #$fc
	sta a: temp
	lda a: $b6
	and #$fc
	cmp a: temp
	bne $ed23
	jmp purge_enemy
	ldx a: $b2
	lda a: $b3
	sta a: $aa,x
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	ldx a: $b2
	lda a: $b6
	sta a: enemy_pos_y,x
	lda #$00
	sta a: $6d
	lda a: $1b
	and #$0c
	sta a: $6e
	lda a: $6e
	clc
	adc #$0e
	sta a: $6e
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $edc1
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $edc1
	beq $edc1
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne $edbe
	lda #$40
	sta a: $6d
	jmp $f44f
	rts
	jmp $f3db
	lda #$f5
	sta a: $6c
	jmp $f3db
	rts
	ldx a: $b2
	lda a: $aa,x
	sta a: $b3
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda a: $b4
	clc
	adc #$02
	sta a: temp
	lda a: $20
	cmp a: temp
	bmi $ee02
	jmp purge_enemy
	jsr $f29b
	jsr $f29b
	ldx a: $b2
	lda a: $b4
	sta a: enemy_pos_x,x
	ldx a: $b2
	lda a: $b5
	sta a: enemy_pos_x2,x
	lda a: $20
	sta a: temp
	lda a: $b4
	cmp a: temp
	bmi $ee74
	beq $ee74
	lda a: $20
	clc
	adc #$10
	sta a: temp
	lda a: $b4
	cmp a: temp
	bpl $ee74
	beq $ee74
	lda #$02
	sta a: $6d
	lda #$04
	sta a: $6e
	ldx a: $b2
	lda a: enemy_pos_y,x
	sec
	sbc #$10
	sta a: $6c
	lda a: $b4
	sec
	sbc a: $20
	asl a
	asl a
	asl a
	asl a
	pha
	lda a: $b5
	sec
	sbc a: $21
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $6b
	jmp $f52f
	rts
	purge_enemy:
		ldx a: $b2
		lda #$00
		sta a: enemy_type,x
		rts
	lda #$00
	sta a: $b2
	ldx a: $b2
	lda a: enemy_type,x
	sta a: $b1
	lda #$00
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $ee9c
	jmp $f015
	ldx a: $b2
	lda a: enemy_pos_y,x
	sta a: $b6
	lda #$0e
	sta a: $b8
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eebc
	lda #$08
	sta a: $b8
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eece
	lda #$16
	sta a: $b8
	lda a: $0c
	sta a: temp
	lda a: $b6
	sec
	sbc a: $b8
	cmp a: temp
	bmi $eee3
	jmp $f015
	lda a: $b6
	sta a: temp
	lda a: $0c
	sec
	sbc #$18
	cmp a: temp
	bmi $eef7
	jmp $f015
	lda #$00
	sta a: temp
	lda a: $12
	cmp a: temp
	beq $ef18
	lda a: $b6
	sta a: temp
	lda a: $0c
	sec
	sbc #$10
	cmp a: temp
	bmi $ef18
	jmp $f015
	lda #$00
	sta a: $b9
	lda #$00
	sta a: $b7
	ldx a: $b2
	lda a: enemy_pos_x,x
	sta a: $b4
	ldx a: $b2
	lda a: enemy_pos_x2,x
	sta a: $b5
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	cmp a: temp
	bne $ef47
	lda #$01
	sta a: $b9
	lda a: $b4
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne $ef6d
	lda a: player_pos_x2
	sta a: temp
	lda a: $b5
	cmp a: temp
	bpl $ef6d
	beq $ef6d
	lda #$01
	sta a: $b9
	lda a: player_pos_x1
	sta a: temp
	lda a: $b4
	clc
	adc #$01
	cmp a: temp
	bne $ef93
	lda a: $b5
	sta a: temp
	lda a: player_pos_x2
	cmp a: temp
	bpl $ef93
	beq $ef93
	lda #$01
	sta a: $b9
	lda #$00
	sta a: temp
	lda a: $b9
	cmp a: temp
	bne $efa3
	jmp $f015
	lda a: $b6
	sta a: temp
	lda a: $0c
	pha
	lda a: $b8
	sec
	sbc #$05
	sta a: $11
	pla
	clc
	adc a: $11
	cmp a: temp
	bpl $efc5
	lda #$01
	sta a: $b7
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $efd5
	jmp $f067
	lda #$02
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $efe5
	jmp $f02d
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $eff5
	jmp $f02d
	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $f005
	jmp $f02d
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne $f015
	jmp $f063
	inc a: $b2
	lda a: $b0
	clc
	adc #$01
	sta a: temp
	lda a: $b2
	cmp a: temp
	bpl $f02c
	jmp $ee83
	rts
	lda #$00
	sta a: temp
	lda a: $b7
	cmp a: temp
	beq $f05f
	ldx a: $b2
	lda #$00
	sta a: enemy_type,x
	lda #$01
	sta a: player_fall_state
	lda #$14
	sta a: player_velocity
	lda #$00
	sta a: temp
	lda a: button_a_down
	cmp a: temp
	beq $f05e
	lda #$37
	sta a: player_velocity
	rts
	jsr $ca72
	rts
	jsr $ca72
	rts
	ldx a: $b2
	lda #$00
	sta a: enemy_type,x
	; collect heart
	inc a: player_health

	; if player health becomes 6, decrement to max health of 5
	lda #MAX_HEALTH + 1
	sta a: temp
	lda a: player_health
	cmp a: temp
	bne $f082
	dec a: player_health
	rts

	lda #$02
	sta a: temp
	lda a: $b5
	cmp a: temp
	bpl $f093
	jmp $f2b4
	lda #$08
	pha
	lda a: $b4
	asl a
	asl a
	asl a
	sta a: $11
	pla
	clc
	adc a: $11
	sta a: $63
	lda a: $b6
	and #$0f
	sta a: $ba
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f126
	lda a: $b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f0e7
	jmp $f3c9
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f0f7
	jmp $f2b4
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f123
	jmp $f3c9
	jmp $f2b4
	lda a: $b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f154
	jmp $f3c9
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f164
	jmp $f2b4
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f190
	jmp $f3c9
	jmp $f2b4
	lda #$00
	sta a: temp
	lda a: $b5
	cmp a: temp
	beq $f1a3
	jmp $f29b
	lda a: $b4
	asl a
	asl a
	asl a
	sec
	sbc #$08
	sta a: $63
	lda a: $b6
	and #$0f
	sta a: $ba
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f22e
	lda a: $b6
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f1ef
	jmp $f3cf
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f1ff
	jmp $f29b
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f22b
	jmp $f3cf
	jmp $f29b
	lda a: $b6
	sec
	sbc #$70
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	tax
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f25c
	jmp $f3cf
	lda #$0f
	sta a: temp
	lda a: $ba
	cmp a: temp
	bne $f26c
	jmp $f29b
	lda a: $63
	pha
	lda a: $65
	sec
	sbc #$01
	sta a: $11
	pla
	clc
	adc a: $11
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f298
	jmp $f3cf
	jmp $f29b
	dec a: $b5
	lda #$ff
	sta a: temp
	lda a: $b5
	cmp a: temp
	bne $f2b3
	lda #$0f
	sta a: $b5
	dec a: $b4
	rts
	inc a: $b5
	lda #$10
	sta a: temp
	lda a: $b5
	cmp a: temp
	bne $f2cc
	lda #$00
	sta a: $b5
	inc a: $b4
	rts
	lda a: $b4
	asl a
	asl a
	asl a
	sta a: $63
	lda #$7f
	sta a: temp
	lda a: $b6
	cmp a: temp
	bpl $f350
	beq $f350
	lda a: $b6
	clc
	adc a: $62
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0400,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f319
	jmp $f3d5
	lda #$00
	sta a: $bb
	lda #$04
	sta a: temp
	lda a: $b5
	cmp a: temp
	bmi $f33a
	beq $f33a
	lda a: $66
	clc
	adc #$08
	tax
	lda $0400,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $64
	and a: $54
	cmp a: temp
	beq $f34d
	jmp $f3d5
	jmp $f3be
	lda a: $b6
	clc
	adc a: $62
	clc
	adc #$90
	lsr a
	lsr a
	lsr a
	lsr a
	sta a: $65
	lda a: $63
	clc
	adc a: $65
	sta a: $66
	ldx a: $66
	lda $0200,x
	sta a: $86
	lda #$00
	sta a: temp
	lda a: $86
	and a: $54
	cmp a: temp
	beq $f387
	jmp $f3d5
	lda #$00
	sta a: $bb
	lda #$04
	sta a: temp
	lda a: $b5
	cmp a: temp
	bmi $f3a8
	beq $f3a8
	lda a: $66
	clc
	adc #$08
	tax
	lda $0200,x
	sta a: $bb
	lda #$00
	sta a: temp
	lda a: $bb
	and a: $54
	cmp a: temp
	beq $f3bb
	jmp $f3d5
	jmp $f3be
	lda a: $b6
	clc
	adc a: $62
	sta a: $b6
	rts
	lda #$01
	sta a: $64
	rts
	lda #$01
	sta a: $67
	rts
	lda #$01
	sta a: $b7
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	clc
	adc #$08
	sta $0300,x
	lda a: $22
	clc
	adc #$08
	sta a: $22
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda #$08
	clc
	adc a: $6b
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda a: $22
	clc
	adc #$08
	sta a: $22
	rts
	jsr $f3db
	lda a: $6c
	clc
	adc #$10
	sta a: $6c
	lda a: $6e
	clc
	adc #$04
	sta a: $6e
	jsr $f3db
	rts
	jsr $f44f
	lda a: $6c
	clc
	adc #$10
	sta a: $6c
	lda a: $6e
	clc
	adc #$04
	sta a: $6e
	jsr $f44f
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda a: $22
	clc
	adc #$04
	sta a: $22
	rts
	ldx a: $22
	lda a: $6c
	sta $0300,x
	lda #$01
	clc
	adc a: $22
	tax
	lda a: $6e
	sta $0300,x
	lda #$02
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$03
	clc
	adc a: $22
	tax
	lda a: $6b
	sec
	sbc #$08
	sta $0300,x
	lda #$04
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$05
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$02
	sta $0300,x
	lda #$06
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$07
	clc
	adc a: $22
	tax
	lda a: $6b
	sta $0300,x
	lda #$08
	clc
	adc a: $22
	tax
	lda a: $6c
	sta $0300,x
	lda #$09
	clc
	adc a: $22
	tax
	lda a: $6e
	clc
	adc #$04
	sta $0300,x
	lda #$0a
	clc
	adc a: $22
	tax
	lda a: $6d
	sta $0300,x
	lda #$0b
	clc
	adc a: $22
	tax
	lda a: $6b
	clc
	adc #$08
	sta $0300,x
	lda a: $22
	clc
	adc #$0c
	sta a: $22
	rts
	label_f5dd:
	jsr $db80
	jsr label_db8e
	jsr $c31d
	jsr $dbc3
	jsr label_dbda
	jsr label_db8e
	jsr label_db8e
	jsr $f6d3
	lda #$00
	sta a: $bc
	lda #$5a
	sta a: $bd
	lda #$56
	sta a: $be
	lda #$ff
	sta a: $bf
	lda #$01
	sta a: $c0
	lda #$00
	sta a: konami_code_correct_presses
	lda #$00
	sta a: $5c
	lda #$00
	sta a: konami_code_active
	jsr $f7e2
	jsr $f7ee
	jsr $f7e8
	jsr $f7e2
	jsr $f7ee
	lda #$00
	sta a: temp
	lda a: konami_code_active
	cmp a: temp
	beq $f698
	jsr $f6e9
	lda a: $be
	clc
	adc a: $bf
	sta a: $be
	lda a: $bd
	clc
	adc a: $c0
	sta a: $bd
	lda #$32
	sta a: temp
	lda a: $be
	cmp a: temp
	bne $f662
	lda #$01
	sta a: $bf
	lda #$82
	sta a: temp
	lda a: $be
	cmp a: temp
	bne $f674
	lda #$ff
	sta a: $bf
	lda #$46
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne $f686
	lda #$01
	sta a: $c0
	lda #$6e
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne $f698
	lda #$ff
	sta a: $c0
	lda a: $04
	clc
	adc #$03
	sta a: $04
	lda a: $05
	clc
	adc #$07
	sta a: $05
	jsr $f836
	lda #$00
	sta a: temp
	lda a: button_select_down
	cmp a: temp
	beq $f6bf
	lda #$01
	sta a: konami_code_active
	lda #$00
	sta a: temp
	lda a: button_start_down
	cmp a: temp
	beq $f6cf
	jmp $f6d2
	jmp $f61d
	rts
	jsr $dc26
	jsr label_db8e
	jsr $f71c
	jsr label_db8e
	jsr $f7a8
	jsr label_db8e
	jsr label_db8e
	rts
	; FIXME
	lda #$00
	sta $2003
	ldy #$f0
	lda a: $bd
	sta a: player_offset_x
	lda a: $be
	sta $2004
	inx
	tya
	sta $2004
	inx
	lda #$20
	sta $2004
	inx
	lda a: player_offset_x
	sta $2004
	clc
	adc #$08
	sta a: player_offset_x
	inx
	iny
	iny
	cpy #$00
	bne $f6f6
	rts
	jsr label_db8e
	lda #$20
	sta PPU_VRAM_ADDR2
	lda #$c4
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne $f72b
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$44
	sta PPU_VRAM_ADDR2
	ldx #$80
	lda $e2b2,x
	sta PPU_VRAM_IO
	inx
	cpx #$b9
	bne $f745
	jsr label_db8e
	lda #$21
	sta PPU_VRAM_ADDR2
	lda #$ab
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e36b,x
	sta PPU_VRAM_IO
	inx
	cpx #$80
	bne $f75f
	jsr label_db8e
	lda #$22
	sta PPU_VRAM_ADDR2
	lda #$c9
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda $e3eb,x
	sta PPU_VRAM_IO
	inx
	cpx #$0d
	bne $f779
	jsr label_db8e
	lda #$23
	sta PPU_VRAM_ADDR2
	lda #$c0
	sta PPU_VRAM_ADDR2
	ldx #$00
	lda #$00
	sta PPU_VRAM_IO
	inx
	cpx #$18
	bne $f795
	lda #$55
	sta PPU_VRAM_IO
	inx
	cpx #$40
	bne $f79f
	rts
	lda #$3f
	sta PPU_VRAM_ADDR2
	lda #$00
	sta PPU_VRAM_ADDR2
	lda #$00
	sta a: $66
	ldx a: $66
	lda $e23a,x
	sta PPU_VRAM_IO
	inc a: $66
	lda #$1f
	sta a: temp
	lda a: $66
	cmp a: temp
	bpl $f7d3
	jmp $f7b7
	rts
	; FIXME
	ldy a: $11
	lda #$00
	sta $2007
	dey
	cpy #$00
	bne $f7d9
	rts
	lda PPU_STATUS
	bpl $f7e2
	rts
	lda PPU_STATUS
	bmi $f7e8
	rts
	lda PPU_STATUS
	and #$10
	bne $f7ee
	ldy #$c8
	lda PPU_STATUS
	and #$10
	bne $f7f7
	lda #$00
	sta PPU_VRAM_ADDR1
	sta PPU_VRAM_ADDR1
	dey
	cpy #$00
	bne $f7f7
	ldx a: title_screen_wave_timer
	ldy #$ff
	lda PPU_STATUS
	and #$10
	bne $f810
	lda $e4eb,x
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	inx
	dey
	cpy #$00
	bne $f810
	inc a: title_screen_wave_timer
	lda #$00
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	rts
	jsr $f8b1
	lda #$0a
	sta a: temp
	lda a: konami_code_correct_presses
	cmp a: temp
	bmi $f85d
	lda #$00
	sta a: temp
	lda a: $5c
	cmp a: temp
	beq $f854
	rts
	lda #$01
	sta a: $5c
	jsr $d5d8
	rts
	lda #$00
	sta a: temp
	lda a: konami_code_correct_button_down
	cmp a: temp
	beq $f880
	lda #$00
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f880
	lda #$00
	sta a: konami_code_correct_button_down
	inc a: konami_code_correct_presses
	rts
	lda #$00
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f88e
	rts
	ldx a: konami_code_correct_presses
	lda $f908,x
	sta a: $c5
	lda a: $c5
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne $f8ab
	lda #$01
	sta a: konami_code_correct_button_down
	rts
	lda #$00
	sta a: konami_code_correct_presses
	rts
	jsr $d539
	lda a: button_a_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_b_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_up_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_down_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_left_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_right_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_select_down
	sta a: $c4
	lda a: $c4
	asl a
	clc
	adc a: button_start_down
	sta a: $c4
	rts
	konami_code_values: .byte $20, $20, $10, $10, $08, $04, $08, $04, $40, $80
	.reloc

.segment "VECTORS"
	.addr nmi, reset, irq

.segment "CHR0"
	.incbin "SOF_v1d.nes", $20010, $2000

.segment "CHR1"
	.incbin "SOF_v1d.nes", $22010, $2000

.segment "CHR2"
	.incbin "SOF_v1d.nes", $24010, $2000

.segment "CHR3"
	.incbin "SOF_v1d.nes", $26010, $2000
