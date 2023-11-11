.include "inc/nes.inc"

; $9978 is start of level 1 music I think
.repeat $100, I
	.charmap I, I
.endrepeat

.segment "HEADER"
	INES_MAPPER = 4
	INES_PRG_ROM_SIZE = $8
	INES_CHR_ROM_SIZE = $4
	INES_MIRROR = 1
	.include "inc/header.inc"

.include "src/memory.s"

.segment "PRG0"
	.include "prg0.s"
.segment "PRG1"
	.include "prg1.s"
.segment "PRG2"
	.include "prg2.s"
.segment "PRG3"
	.include "prg3.s"
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
	.include "src/prge.s"
	
.segment "PRGF"
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
	.byte $D3, $D4, $D5, $D6, $D7, $D8
	game_over_text:
	.byte $47, $41, $4D, $45, $20, $4F, $56, $45, $52
	end_screen_text:
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
	.include "src/prgf.s"
	konami_code_values: .byte $20, $20, $10, $10, $08, $04, $08, $04, $40, $80

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
