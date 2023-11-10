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
	label_c000: jsr $c35a
	label_c003: jsr $c236
	label_c006: jsr $db8e
	label_c009: jsr $db8e
	label_c00c: jsr $f5dd
	label_c00f: jsr $dbda
	label_c012: lda #$30
	label_c014: sta $2000
	label_c017: lda #$04
	label_c019: sta $2001
	label_c01c: jsr $dc26
	label_c01f: jsr $c1c2
	label_c022: jsr $db8e
	label_c025: lda #$30
	label_c027: sta $2000
	label_c02a: lda #$1c
	label_c02c: sta $2001
	label_c02f: lda #$00
	label_c031: sta $0006
	label_c034: jsr $c26a
	label_c037: lda #$00
	label_c039: sta $0007
	label_c03c: jsr $e5eb
	label_c03f: lda #$03
	label_c041: sta $0008
	label_c044: jsr $dc71
	label_c047: jsr $cabb
	label_c04a: jsr $d539
	label_c04d: jsr $c7ec
	label_c050: jsr $d2bb
	label_c053: jsr $e8ed
	label_c056: jsr $c24e
	label_c059: lda #$00
	label_c05b: sta $0009
	label_c05e: lda $000a
	label_c061: cmp $0009
	label_c064: beq $c069
	label_c066: jsr $e679
	label_c069: jsr $c17f
	label_c06c: jsr $e816
	label_c06f: jsr $db8e
	label_c072: jsr $db61
	label_c075: lda #$00
	label_c077: sta $0009
	label_c07a: lda $000b
	label_c07d: cmp $0009
	label_c080: beq $c085
	label_c082: jmp $c0e9
	label_c085: lda #$fc
	label_c087: sta $0009
	label_c08a: lda $000c
	label_c08d: and #$fc
	label_c08f: cmp $0009
	label_c092: bne label_c0aa
	label_c094: jsr $c9e2
	label_c097: lda #$02
	label_c099: sta $0009
	label_c09c: lda $000c
	label_c09f: cmp $0009
	label_c0a2: bne label_c0a7
	label_c0a4: jmp $c04a
	label_c0a7: jmp $c0cd
	label_c0aa: lda #$00
	label_c0ac: sta $0009
	label_c0af: lda $000a
	label_c0b2: cmp $0009
	label_c0b5: bne label_c0ca
	lda #$00
	sta $0009
	lda $000d
	cmp $0009
	bne label_c0ca
	jsr $cab7
	jmp $c0cd
	label_c0ca: jmp $c04a
	label_c0cd: lda #$00
	label_c0cf: sta $0009
	label_c0d2: lda $0008
	label_c0d5: cmp $0009
	label_c0d8: bne label_c0e3
	label_c0da: jsr $da95
	label_c0dd: jsr $c3eb
	label_c0e0: jmp $c000
	label_c0e3: jsr $cabb
	label_c0e6: jmp $c04a
	label_c0e9: jsr $e7f4
	label_c0ec: jmp $c0ef
	label_c0ef: jsr $c241
	label_c0f2: lda #$1e
	label_c0f4: sta $000e
	label_c0f7: jsr $db8e
	label_c0fa: jsr $d5ed
	label_c0fd: dec $000e
	label_c100: lda #$00
	label_c102: sta $0009
	label_c105: lda $000e
	label_c108: cmp $0009
	label_c10b: beq $c110
	label_c10d: jmp $c0f7
	label_c110: jsr $d5c3
	label_c113: lda #$01
	label_c115: sta $000f
	label_c118: jsr $db8e
	label_c11b: jsr $d2bb
	label_c11e: jsr $db61
	label_c121: lda $000c
	label_c124: sec
	label_c125: sbc #$03
	label_c127: sta $000c
	label_c12a: lda #$00
	label_c12c: sta $0009
	label_c12f: lda $000c
	label_c132: and #$f8
	label_c134: cmp $0009
	label_c137: beq $c13c
	label_c139: jmp $c118
	label_c13c: lda #$1e
	label_c13e: sta $000e
	label_c141: jsr $db8e
	label_c144: jsr $d5ed
	label_c147: dec $000e
	label_c14a: lda #$00
	label_c14c: sta $0009
	label_c14f: lda $000e
	label_c152: cmp $0009
	label_c155: beq $c15a
	label_c157: jmp $c141
	label_c15a: jmp $c15d
	label_c15d: inc $0006
	label_c160: lda #$05
	label_c162: sta $0009
	label_c165: lda $0006
	label_c168: cmp $0009
	label_c16b: bne label_c170
	jmp $d8b7
	label_c170: jsr $c26a
	label_c173: jsr $c1c2
	label_c176: jsr $dc71
	label_c179: jsr $cabb
	label_c17c: jmp $c04a
	label_c17f: lda $0004
	label_c182: pha
	label_c183: lda #$0d
	label_c185: pha
	label_c186: lda $0010
	label_c189: clc
	label_c18a: adc $0086
	label_c18d: sta $0011
	label_c190: pla
	label_c191: clc
	label_c192: adc $0011
	label_c195: sta $0011
	label_c198: pla
	label_c199: clc
	label_c19a: adc $0011
	label_c19d: sta $0004
	label_c1a0: lda $0005
	label_c1a3: pha
	label_c1a4: lda #$11
	label_c1a6: pha
	label_c1a7: lda $0012
	label_c1aa: clc
	label_c1ab: adc $005b
	label_c1ae: sta $0011
	label_c1b1: pla
	label_c1b2: clc
	label_c1b3: adc $0011
	label_c1b6: sta $0011
	label_c1b9: pla
	label_c1ba: clc
	label_c1bb: adc $0011
	label_c1be: sta $0005
	label_c1c1: rts
	label_c1c2: lda #$00
	label_c1c4: sta $0013
	label_c1c7: lda #$00
	label_c1c9: sta $0014
	label_c1cc: lda #$00
	label_c1ce: sta $0015
	label_c1d1: lda #$00
	label_c1d3: sta $0016
	label_c1d6: lda #$00
	label_c1d8: sta $0017
	label_c1db: lda #$00
	label_c1dd: sta $0018
	label_c1e0: lda #$00
	label_c1e2: sta $0019
	label_c1e5: lda #$00
	label_c1e7: sta $001a
	label_c1ea: lda #$00
	label_c1ec: sta $001b
	label_c1ef: lda #$01
	label_c1f1: sta $001c
	label_c1f4: lda #$00
	label_c1f6: sta $000e
	label_c1f9: lda #$00
	label_c1fb: sta $001d
	label_c1fe: lda #$00
	label_c200: sta $001e
	label_c203: lda #$00
	label_c205: sta $001f
	label_c208: lda #$00
	label_c20a: sta $0020
	label_c20d: lda #$00
	label_c20f: sta $0021
	label_c212: lda #$10
	label_c214: sta $0022
	label_c217: lda #$00
	label_c219: sta $000b
	label_c21c: lda #$00
	label_c21e: sta $0023
	label_c221: lda #$20
	label_c223: sta $0024
	label_c226: lda #$00
	label_c228: sta $0025
	label_c22b: lda #$00
	label_c22d: sta $0026
	label_c230: lda #$00
	label_c232: sta $0027
	label_c235: rts
	label_c236: lda #$00
	label_c238: sta $4015
	label_c23b: lda #$1f
	label_c23d: sta $4015
	label_c240: rts
	label_c241: ldx #$00
	label_c243: lda #$00
	label_c245: sta $4000,x
	label_c248: inx
	label_c249: cpx #$10
	label_c24b: bne label_c245
	label_c24d: rts
	label_c24e: lda #$0f
	label_c250: sta $0009
	label_c253: lda $0022
	label_c256: cmp $0009
	label_c259: bpl $c25c
	label_c25b: rts
	label_c25c: ldx $0022
	label_c25f: lda #$f5
	label_c261: sta $0300,x
	label_c264: inc $0022
	label_c267: jmp $c24e
	label_c26a: lda $0006
	label_c26d: asl a
	label_c26e: sta $0028
	label_c271: lda #$06
	label_c273: sta $8000
	label_c276: lda $0028
	label_c279: sta $8001
	label_c27c: lda #$07
	label_c27e: sta $8000
	label_c281: lda $0028
	label_c284: clc
	label_c285: adc #$01
	label_c287: sta $8001
	label_c28a: rts
	label_c28b: lda #$00
	label_c28d: sta $8000
	label_c290: lda #$08
	label_c292: sta $8001
	label_c295: lda #$01
	label_c297: sta $8000
	label_c29a: lda #$0a
	label_c29c: sta $8001
	label_c29f: lda $0006
	label_c2a2: asl a
	label_c2a3: asl a
	label_c2a4: clc
	label_c2a5: adc #$0c
	label_c2a7: sta $0028
	label_c2aa: lda #$02
	label_c2ac: sta $8000
	label_c2af: lda $0028
	label_c2b2: sta $8001
	label_c2b5: lda #$03
	label_c2b7: sta $8000
	label_c2ba: lda $0028
	label_c2bd: clc
	label_c2be: adc #$01
	label_c2c0: sta $8001
	label_c2c3: lda #$04
	label_c2c5: sta $8000
	label_c2c8: lda $0028
	label_c2cb: clc
	label_c2cc: adc #$02
	label_c2ce: sta $8001
	label_c2d1: lda #$05
	label_c2d3: sta $8000
	label_c2d6: lda $0028
	label_c2d9: clc
	label_c2da: adc #$03
	label_c2dc: sta $8001
	label_c2df: rts
	label_c2e0: lda #$00
	label_c2e2: sta $8000
	label_c2e5: lda #$04
	label_c2e7: sta $8001
	label_c2ea: lda #$01
	label_c2ec: sta $8000
	label_c2ef: lda #$06
	label_c2f1: sta $8001
	label_c2f4: lda #$02
	label_c2f6: sta $8000
	label_c2f9: lda #$04
	label_c2fb: sta $8001
	label_c2fe: lda #$03
	label_c300: sta $8000
	label_c303: lda #$05
	label_c305: sta $8001
	label_c308: lda #$04
	label_c30a: sta $8000
	label_c30d: lda #$06
	label_c30f: sta $8001
	label_c312: lda #$05
	label_c314: sta $8000
	label_c317: lda #$07
	label_c319: sta $8001
	label_c31c: rts
	label_c31d: lda #$00
	label_c31f: sta $8000
	label_c322: lda #$00
	label_c324: sta $8001
	label_c327: lda #$01
	label_c329: sta $8000
	label_c32c: lda #$02
	label_c32e: sta $8001
	label_c331: lda #$02
	label_c333: sta $8000
	label_c336: lda #$00
	label_c338: sta $8001
	label_c33b: lda #$03
	label_c33d: sta $8000
	label_c340: lda #$01
	label_c342: sta $8001
	label_c345: lda #$04
	label_c347: sta $8000
	label_c34a: lda #$02
	label_c34c: sta $8001
	label_c34f: lda #$05
	label_c351: sta $8000
	label_c354: lda #$03
	label_c356: sta $8001
	label_c359: rts
	label_c35a: jmp $c31d
	rts
	label_c35e: jsr $dc6b
	label_c361: jsr $db8e
	label_c364: jsr $dbc3
	label_c367: jsr $dc26
	label_c36a: jsr $db8e
	label_c36d: ldx #$00
	label_c36f: lda #$f5
	label_c371: sta $002a,x
	label_c374: sta $0032,x
	label_c377: sta $0042,x
	label_c37a: sta $004a,x
	label_c37d: sta $003a,x
	label_c380: inx
	label_c381: cpx #$08
	label_c383: bne label_c371
	label_c385: lda #$07
	label_c387: sta $0052
	label_c38a: lda #$0b
	label_c38c: sta $0029
	label_c38f: jsr $db8e
	label_c392: lda #$07
	label_c394: sta $0052
	label_c397: jsr $db8e
	label_c39a: jsr $c4b4
	label_c39d: jsr $db8e
	label_c3a0: jsr $c5aa
	label_c3a3: jsr $db8e
	label_c3a6: jsr $c6a0
	label_c3a9: dec $0052
	label_c3ac: lda #$ff
	label_c3ae: sta $0009
	label_c3b1: lda $0052
	label_c3b4: cmp $0009
	label_c3b7: beq $c3bc
	label_c3b9: jmp $c397
	label_c3bc: lda #$00
	label_c3be: sta $0052
	label_c3c1: jsr $db8e
	label_c3c4: jsr $c706
	label_c3c7: inc $0052
	label_c3ca: lda #$05
	label_c3cc: sta $0009
	label_c3cf: lda $0052
	label_c3d2: cmp $0009
	label_c3d5: beq $c3da
	label_c3d7: jmp $c3c1
	label_c3da: jsr $db8e
	label_c3dd: jsr $c414
	label_c3e0: lda #$00
	label_c3e2: sta $2005
	label_c3e5: lda #$00
	label_c3e7: sta $2005
	label_c3ea: rts
	label_c3eb: jsr $db8e
	label_c3ee: lda #$01
	label_c3f0: sta $0009
	label_c3f3: lda $0053
	label_c3f6: cmp $0009
	label_c3f9: bne label_c3ff
	label_c3fb: jsr $c47d
	label_c3fe: rts
	label_c3ff: lda #$03
	label_c401: sta $0009
	label_c404: lda $0053
	label_c407: cmp $0009
	label_c40a: bne label_c410
	label_c40c: jsr $c414
	label_c40f: rts
	label_c410: jsr $c44b
	label_c413: rts
	label_c414: lda #$55
	label_c416: sta $0054
	label_c419: lda #$00
	label_c41b: sta $0053
	label_c41e: lda #$3f
	label_c420: sta $2006
	label_c423: lda #$00
	label_c425: sta $2006
	label_c428: lda #$00
	label_c42a: sta $000e
	label_c42d: ldx $000e
	label_c430: lda $8004,x
	label_c433: sta $2007
	label_c436: inc $000e
	label_c439: lda #$20
	label_c43b: sta $0009
	label_c43e: lda $000e
	label_c441: cmp $0009
	label_c444: bne label_c447
	label_c446: rts
	label_c447: jmp $c42d
	rts
	label_c44b: lda #$01
	label_c44d: clc
	label_c44e: adc $0053
	label_c451: sta $0053
	label_c454: lda #$3f
	label_c456: sta $2006
	label_c459: lda #$00
	label_c45b: sta $2006
	label_c45e: lda #$00
	label_c460: sta $000e
	label_c463: lda #$0e
	label_c465: sta $2007
	label_c468: inc $000e
	label_c46b: lda #$20
	label_c46d: sta $0009
	label_c470: lda $000e
	label_c473: cmp $0009
	label_c476: bne label_c479
	label_c478: rts
	label_c479: jmp $c463
	rts
	label_c47d: lda #$aa
	label_c47f: sta $0054
	label_c482: lda #$02
	label_c484: sta $0053
	label_c487: lda #$3f
	label_c489: sta $2006
	label_c48c: lda #$00
	label_c48e: sta $2006
	label_c491: lda #$00
	label_c493: sta $000e
	label_c496: ldx $000e
	label_c499: lda $8024,x
	label_c49c: sta $2007
	label_c49f: inc $000e
	label_c4a2: lda #$20
	label_c4a4: sta $0009
	label_c4a7: lda $000e
	label_c4aa: cmp $0009
	label_c4ad: bne label_c4b0
	label_c4af: rts
	label_c4b0: jmp $c496
	rts
	label_c4b4: lda $0052
	label_c4b7: and #$07
	label_c4b9: sta $0055
	label_c4bc: ldx $0055
	label_c4bf: lda $002a,x
	label_c4c2: sta $0011
	label_c4c5: lda $0052
	label_c4c8: sta $0009
	label_c4cb: lda $0011
	label_c4ce: cmp $0009
	label_c4d1: bne label_c4d4
	label_c4d3: rts
	label_c4d4: ldx $0055
	label_c4d7: lda $0052
	label_c4da: sta $002a,x
	label_c4dd: lda $0052
	label_c4e0: asl a
	label_c4e1: tax
	label_c4e2: lda $e13a,x
	label_c4e5: sta $0000
	label_c4e8: inx
	label_c4e9: lda $e13a,x
	label_c4ec: sta $0001
	label_c4ef: ldx $0055
	label_c4f2: lda $e10a,x
	label_c4f5: sta $0056
	label_c4f8: ldx $0055
	label_c4fb: lda $e112,x
	label_c4fe: sta $0057
	label_c501: ldy #$00
	label_c503: ldx #$00
	label_c505: lda $0056
	label_c508: sta $2006
	label_c50b: lda $0057
	label_c50e: sta $2006
	label_c511: lda ($00),y
	label_c513: sta $2007
	label_c516: adc #$01
	label_c518: sta $2007
	label_c51b: iny
	label_c51c: lda ($00),y
	label_c51e: sta $2007
	label_c521: adc #$01
	label_c523: sta $2007
	label_c526: iny
	label_c527: lda ($00),y
	label_c529: sta $2007
	label_c52c: adc #$01
	label_c52e: sta $2007
	label_c531: iny
	label_c532: lda ($00),y
	label_c534: sta $2007
	label_c537: adc #$01
	label_c539: sta $2007
	label_c53c: dey
	label_c53d: dey
	label_c53e: dey
	label_c53f: clc
	label_c540: lda $0057
	label_c543: adc #$20
	label_c545: sta $0057
	label_c548: lda $0056
	label_c54b: adc #$00
	label_c54d: sta $0056
	label_c550: lda $0056
	label_c553: sta $2006
	label_c556: lda $0057
	label_c559: sta $2006
	label_c55c: lda ($00),y
	label_c55e: adc #$10
	label_c560: sta $2007
	label_c563: adc #$01
	label_c565: sta $2007
	label_c568: iny
	label_c569: lda ($00),y
	label_c56b: adc #$10
	label_c56d: sta $2007
	label_c570: adc #$01
	label_c572: sta $2007
	label_c575: iny
	label_c576: lda ($00),y
	label_c578: adc #$10
	label_c57a: sta $2007
	label_c57d: adc #$01
	label_c57f: sta $2007
	label_c582: iny
	label_c583: lda ($00),y
	label_c585: adc #$10
	label_c587: sta $2007
	label_c58a: adc #$01
	label_c58c: sta $2007
	label_c58f: iny
	label_c590: clc
	label_c591: cpy #$20
	label_c593: beq $c5a9
	label_c595: clc
	label_c596: lda $0057
	label_c599: adc #$20
	label_c59b: sta $0057
	label_c59e: lda $0056
	label_c5a1: adc #$00
	label_c5a3: sta $0056
	label_c5a6: jmp $c505
	label_c5a9: rts
	label_c5aa: lda $0052
	label_c5ad: and #$07
	label_c5af: sta $0055
	label_c5b2: ldx $0055
	label_c5b5: lda $0032,x
	label_c5b8: sta $0011
	label_c5bb: lda $0052
	label_c5be: sta $0009
	label_c5c1: lda $0011
	label_c5c4: cmp $0009
	label_c5c7: bne label_c5ca
	label_c5c9: rts
	label_c5ca: ldx $0055
	label_c5cd: lda $0052
	label_c5d0: sta $0032,x
	label_c5d3: lda $0052
	label_c5d6: asl a
	label_c5d7: tax
	label_c5d8: lda $e13a,x
	label_c5db: sta $0000
	label_c5de: inx
	label_c5df: lda $e13a,x
	label_c5e2: sta $0001
	label_c5e5: ldx $0055
	label_c5e8: lda $e11a,x
	label_c5eb: sta $0056
	label_c5ee: ldx $0055
	label_c5f1: lda $e122,x
	label_c5f4: sta $0057
	label_c5f7: ldy #$20
	label_c5f9: ldx #$00
	label_c5fb: lda $0056
	label_c5fe: sta $2006
	label_c601: lda $0057
	label_c604: sta $2006
	label_c607: lda ($00),y
	label_c609: sta $2007
	label_c60c: adc #$01
	label_c60e: sta $2007
	label_c611: iny
	label_c612: lda ($00),y
	label_c614: sta $2007
	label_c617: adc #$01
	label_c619: sta $2007
	label_c61c: iny
	label_c61d: lda ($00),y
	label_c61f: sta $2007
	label_c622: adc #$01
	label_c624: sta $2007
	label_c627: iny
	label_c628: lda ($00),y
	label_c62a: sta $2007
	label_c62d: adc #$01
	label_c62f: sta $2007
	label_c632: dey
	label_c633: dey
	label_c634: dey
	label_c635: clc
	label_c636: lda $0057
	label_c639: adc #$20
	label_c63b: sta $0057
	label_c63e: lda $0056
	label_c641: adc #$00
	label_c643: sta $0056
	label_c646: lda $0056
	label_c649: sta $2006
	label_c64c: lda $0057
	label_c64f: sta $2006
	label_c652: lda ($00),y
	label_c654: adc #$10
	label_c656: sta $2007
	label_c659: adc #$01
	label_c65b: sta $2007
	label_c65e: iny
	label_c65f: lda ($00),y
	label_c661: adc #$10
	label_c663: sta $2007
	label_c666: adc #$01
	label_c668: sta $2007
	label_c66b: iny
	label_c66c: lda ($00),y
	label_c66e: adc #$10
	label_c670: sta $2007
	label_c673: adc #$01
	label_c675: sta $2007
	label_c678: iny
	label_c679: lda ($00),y
	label_c67b: adc #$10
	label_c67d: sta $2007
	label_c680: adc #$01
	label_c682: sta $2007
	label_c685: iny
	label_c686: clc
	label_c687: cpy #$3c
	label_c689: beq $c69f
	label_c68b: clc
	label_c68c: lda $0057
	label_c68f: adc #$20
	label_c691: sta $0057
	label_c694: lda $0056
	label_c697: adc #$00
	label_c699: sta $0056
	label_c69c: jmp $c5fb
	label_c69f: rts
	label_c6a0: lda $0052
	label_c6a3: and #$07
	label_c6a5: sta $0055
	label_c6a8: ldx $0055
	label_c6ab: lda $003a,x
	label_c6ae: sta $0011
	label_c6b1: lda $0052
	label_c6b4: sta $0009
	label_c6b7: lda $0011
	label_c6ba: cmp $0009
	label_c6bd: bne label_c6c0
	label_c6bf: rts
	label_c6c0: ldx $0055
	label_c6c3: lda $0052
	label_c6c6: sta $003a,x
	label_c6c9: ldx $0055
	label_c6cc: lda $e12a,x
	label_c6cf: sta $0056
	label_c6d2: ldx $0055
	label_c6d5: lda $e132,x
	label_c6d8: sta $0057
	label_c6db: ldy #$3c
	label_c6dd: lda $0056
	label_c6e0: sta $2006
	label_c6e3: lda $0057
	label_c6e6: sta $2006
	label_c6e9: lda ($00),y
	label_c6eb: sta $2007
	label_c6ee: iny
	label_c6ef: lda ($00),y
	label_c6f1: sta $2007
	label_c6f4: iny
	label_c6f5: cpy #$4c
	label_c6f7: beq $c705
	label_c6f9: clc
	label_c6fa: lda $0057
	label_c6fd: adc #$08
	label_c6ff: sta $0057
	label_c702: jmp $c6dd
	label_c705: rts
	label_c706: lda $0052
	label_c709: and #$07
	label_c70b: sta $0055
	label_c70e: ldx $0055
	label_c711: lda $0042,x
	label_c714: sta $0011
	label_c717: lda $0052
	label_c71a: sta $0009
	label_c71d: lda $0011
	label_c720: cmp $0009
	label_c723: bne label_c726
	label_c725: rts
	label_c726: ldx $0055
	label_c729: lda $0052
	label_c72c: sta $0042,x
	label_c72f: lda $0052
	label_c732: asl a
	label_c733: tax
	label_c734: lda $e13a,x
	label_c737: sta $0000
	label_c73a: inx
	label_c73b: lda $e13a,x
	label_c73e: sta $0001
	label_c741: ldy #$4c
	label_c743: clc
	label_c744: lda $0052
	label_c747: asl a
	label_c748: asl a
	label_c749: asl a
	label_c74a: asl a
	label_c74b: asl a
	label_c74c: sta $0026
	label_c74f: tax
	label_c750: lda ($00),y
	label_c752: iny
	label_c753: sta $0011
	label_c756: and #$03
	label_c758: sta $0400,x
	label_c75b: lsr $0011
	label_c75e: lsr $0011
	label_c761: inx
	label_c762: lda $0011
	label_c765: and #$03
	label_c767: sta $0400,x
	label_c76a: lsr $0011
	label_c76d: lsr $0011
	label_c770: inx
	label_c771: lda $0011
	label_c774: and #$03
	label_c776: sta $0400,x
	label_c779: lsr $0011
	label_c77c: lsr $0011
	label_c77f: inx
	label_c780: lda $0011
	label_c783: and #$03
	label_c785: sta $0400,x
	label_c788: lsr $0011
	label_c78b: lsr $0011
	label_c78e: inx
	label_c78f: cpy #$54
	label_c791: bne label_c750
	label_c793: ldy #$54
	label_c795: clc
	label_c796: lda $0052
	label_c799: asl a
	label_c79a: asl a
	label_c79b: asl a
	label_c79c: asl a
	label_c79d: asl a
	label_c79e: sta $0026
	label_c7a1: tax
	label_c7a2: lda ($00),y
	label_c7a4: iny
	label_c7a5: sta $0011
	label_c7a8: and #$03
	label_c7aa: sta $0200,x
	label_c7ad: lsr $0011
	label_c7b0: lsr $0011
	label_c7b3: inx
	label_c7b4: lda $0011
	label_c7b7: and #$03
	label_c7b9: sta $0200,x
	label_c7bc: lsr $0011
	label_c7bf: lsr $0011
	label_c7c2: inx
	label_c7c3: lda $0011
	label_c7c6: and #$03
	label_c7c8: sta $0200,x
	label_c7cb: lsr $0011
	label_c7ce: lsr $0011
	label_c7d1: inx
	label_c7d2: lda $0011
	label_c7d5: and #$03
	label_c7d7: sta $0200,x
	label_c7da: lsr $0011
	label_c7dd: lsr $0011
	label_c7e0: inx
	label_c7e1: cpy #$5c
	label_c7e3: bne label_c7a2
	label_c7e5: nop
	label_c7e6: nop
	label_c7e7: nop
	label_c7e8: nop
	label_c7e9: nop
	label_c7ea: nop
	label_c7eb: rts
	label_c7ec: lda #$00
	label_c7ee: sta $0058
	label_c7f1: lda #$00
	label_c7f3: sta $0059
	label_c7f6: lda #$00
	label_c7f8: sta $0012
	label_c7fb: lda #$00
	label_c7fd: sta $005a
	label_c800: lda #$00
	label_c802: sta $0009
	label_c805: lda $001a
	label_c808: cmp $0009
	label_c80b: beq $c810
	jsr $c99e
	label_c810: lda #$00
	label_c812: sta $0009
	label_c815: lda $0015
	label_c818: cmp $0009
	label_c81b: beq $c820
	label_c81d: jsr $dd2d
	label_c820: lda #$00
	label_c822: sta $0009
	label_c825: lda $000a
	label_c828: cmp $0009
	label_c82b: bne label_c850
	lda #$00
	sta $0009
	lda $001c
	cmp $0009
	bne label_c83d
	jsr $d204
	lda #$01
	sta $0009
	lda $001c
	cmp $0009
	bne label_c84d
	jsr $d255
	jmp $c984
	label_c850: lda #$00
	label_c852: sta $0009
	label_c855: lda $0016
	label_c858: cmp $0009
	label_c85b: beq $c862
	label_c85d: lda #$01
	label_c85f: sta $0012
	label_c862: lda #$00
	label_c864: sta $0009
	label_c867: lda $0017
	label_c86a: cmp $0009
	label_c86d: beq $c88c
	label_c86f: lda #$01
	label_c871: sta $001c
	label_c874: jsr $cbaa
	label_c877: lda #$00
	label_c879: sta $0009
	label_c87c: lda $0014
	label_c87f: cmp $0009
	label_c882: beq $c887
	label_c884: jsr $cbaa
	label_c887: lda #$01
	label_c889: sta $0059
	label_c88c: lda #$00
	label_c88e: sta $0009
	label_c891: lda $0018
	label_c894: cmp $0009
	label_c897: beq $c8b6
	label_c899: lda #$00
	label_c89b: sta $001c
	label_c89e: jsr $ccfa
	label_c8a1: lda #$00
	label_c8a3: sta $0009
	label_c8a6: lda $0014
	label_c8a9: cmp $0009
	label_c8ac: beq $c8b1
	label_c8ae: jsr $ccfa
	label_c8b1: lda #$01
	label_c8b3: sta $0059
	label_c8b6: lda #$00
	label_c8b8: sta $0009
	label_c8bb: lda $0013
	label_c8be: cmp $0009
	label_c8c1: bne label_c8dd
	label_c8c3: lda #$00
	label_c8c5: sta $0009
	label_c8c8: lda $005b
	label_c8cb: cmp $0009
	label_c8ce: beq $c8d5
	label_c8d0: lda #$0a
	label_c8d2: sta $0010
	label_c8d5: lda #$00
	label_c8d7: sta $005b
	label_c8da: jmp $c984
	label_c8dd: lda #$00
	label_c8df: sta $0009
	label_c8e2: lda $0013
	label_c8e5: cmp $0009
	label_c8e8: beq $c90c
	label_c8ea: lda #$01
	label_c8ec: sta $0009
	label_c8ef: lda $005c
	label_c8f2: cmp $0009
	label_c8f5: bne label_c90c
	lda #$23
	sta $0010
	lda #$01
	sta $000f
	lda #$01
	sta $005a
	jsr $d5d8
	jmp $c984
	label_c90c: lda #$00
	label_c90e: sta $0009
	label_c911: lda $0013
	label_c914: cmp $0009
	label_c917: beq $c92c
	label_c919: lda #$00
	label_c91b: sta $0009
	label_c91e: lda $005b
	label_c921: cmp $0009
	label_c924: beq $c92c
	label_c926: dec $005b
	label_c929: jmp $c984
	label_c92c: lda #$00
	label_c92e: sta $0009
	label_c931: lda $0013
	label_c934: cmp $0009
	label_c937: beq $c984
	label_c939: lda #$00
	label_c93b: sta $0009
	label_c93e: lda $005d
	label_c941: cmp $0009
	label_c944: beq $c984
	label_c946: jsr $d584
	label_c949: lda #$01
	label_c94b: sta $000f
	label_c94e: lda #$28
	label_c950: sta $0010
	label_c953: lda #$03
	label_c955: sta $0009
	label_c958: lda $0006
	label_c95b: cmp $0009
	label_c95e: bne label_c965
	label_c960: lda #$2d
	label_c962: sta $0010
	label_c965: lda #$00
	label_c967: sta $0009
	label_c96a: lda $0012
	label_c96d: cmp $0009
	label_c970: beq $c977
	label_c972: lda #$26
	label_c974: sta $0010
	label_c977: lda #$00
	label_c979: sta $005d
	label_c97c: lda #$0f
	label_c97e: sta $005b
	label_c981: jmp $c984
	label_c984: jsr $cb8c
	label_c987: lda #$00
	label_c989: sta $0009
	label_c98c: lda $000d
	label_c98f: cmp $0009
	label_c992: beq $c997
	label_c994: dec $000d
	label_c997: jsr $ee7e
	label_c99a: jsr $d4d9
	label_c99d: rts
	lda #$00
	sta $4015
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	beq $c9b6
	jmp $c99e
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	bne label_c9c9
	jmp $c9b6
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	beq $c9dc
	jmp $c9c9
	lda #$0f
	sta $4015
	rts
	label_c9e2: lda $805c
	label_c9e5: sta $0009
	label_c9e8: lda $005e
	label_c9eb: cmp $0009
	label_c9ee: bne label_c9f3
	jmp $ca36
	label_c9f3: lda $805d
	label_c9f6: sta $0009
	label_c9f9: lda $005e
	label_c9fc: cmp $0009
	label_c9ff: bne label_ca04
	label_ca01: jmp $ca36
	label_ca04: lda $805e
	label_ca07: sta $0009
	label_ca0a: lda $005e
	label_ca0d: cmp $0009
	label_ca10: bne label_ca15
	jmp $ca36
	label_ca15: lda #$00
	label_ca17: sta $000e
	label_ca1a: jsr $db8e
	label_ca1d: jsr $d5ed
	label_ca20: inc $000e
	label_ca23: lda #$1e
	label_ca25: sta $0009
	label_ca28: lda $000e
	label_ca2b: cmp $0009
	label_ca2e: beq $ca33
	label_ca30: jmp $ca1a
	label_ca33: jmp $cab7
	label_ca36: jsr $dc26
	label_ca39: lda $805f
	label_ca3c: sta $0009
	label_ca3f: lda $005e
	label_ca42: cmp $0009
	label_ca45: beq $ca6c
	label_ca47: jsr $e679
	label_ca4a: jsr $d204
	label_ca4d: jsr $d204
	label_ca50: jsr $d204
	label_ca53: jsr $db8e
	label_ca56: lda #$00
	label_ca58: sta $0009
	label_ca5b: lda $0058
	label_ca5e: cmp $0009
	label_ca61: beq $ca66
	label_ca63: jsr $d629
	label_ca66: jsr $d5ed
	label_ca69: jmp $ca39
	label_ca6c: lda #$02
	label_ca6e: sta $000c
	label_ca71: rts
	label_ca72: lda #$00
	label_ca74: sta $0009
	label_ca77: lda $000d
	label_ca7a: cmp $0009
	label_ca7d: beq $ca80
	label_ca7f: rts
	label_ca80: lda #$96
	label_ca82: sta $000d
	label_ca85: lda #$01
	label_ca87: sta $000f
	label_ca8a: lda #$0a
	label_ca8c: sta $0010
	label_ca8f: dec $000a
	label_ca92: lda #$ff
	label_ca94: sta $0009
	label_ca97: lda $000a
	label_ca9a: cmp $0009
	label_ca9d: bne label_caa4
	lda #$00
	sta $000a
	label_caa4: lda #$00
	label_caa6: sta $0009
	label_caa9: lda $000a
	label_caac: cmp $0009
	label_caaf: bne label_cab6
	lda #$37
	sta $0010
	label_cab6: rts
	label_cab7: dec $0008
	label_caba: rts
	label_cabb: jsr $c241
	label_cabe: jsr $dbc3
	label_cac1: jsr $dbda
	label_cac4: lda #$03
	label_cac6: sta $000a
	label_cac9: lda #$64
	label_cacb: sta $000d
	label_cace: lda #$01
	label_cad0: sta $001c
	label_cad3: lda #$0a
	label_cad5: sta $000c
	label_cad8: lda #$00
	label_cada: sta $005f
	label_cadd: lda #$02
	label_cadf: sta $005e
	label_cae2: lda #$01
	label_cae4: sta $0009
	label_cae7: lda $0027
	label_caea: cmp $0009
	label_caed: bne label_caf5
	label_caef: lda $8059
	label_caf2: sta $005e
	label_caf5: lda #$00
	label_caf7: sta $0010
	label_cafa: lda #$00
	label_cafc: sta $000f
	label_caff: lda #$ff
	label_cb01: sta $0060
	label_cb04: jsr $d825
	label_cb07: lda #$00
	label_cb09: sta $0061
	label_cb0c: jsr $db8e
	label_cb0f: inc $0061
	label_cb12: lda #$78
	label_cb14: sta $0009
	label_cb17: lda $0061
	label_cb1a: cmp $0009
	label_cb1d: bpl $cb22
	label_cb1f: jmp $cb0c
	label_cb22: lda #$00
	label_cb24: sta $0061
	label_cb27: jsr $dbc3
	label_cb2a: jsr $c35e
	label_cb2d: lda #$00
	label_cb2f: sta $0007
	label_cb32: jsr $e5eb
	label_cb35: lda #$0f
	label_cb37: sta $4015
	label_cb3a: lda #$00
	label_cb3c: sta $001e
	label_cb3f: lda #$00
	label_cb41: sta $001f
	label_cb44: lda #$00
	label_cb46: sta $0020
	label_cb49: lda #$00
	label_cb4b: sta $0021
	label_cb4e: lda $0020
	label_cb51: sta $0009
	label_cb54: lda $005e
	label_cb57: sec
	label_cb58: sbc #$06
	label_cb5a: cmp $0009
	label_cb5d: bmi $cb75
	label_cb5f: jsr $d6e5
	label_cb62: lda #$00
	label_cb64: sta $0009
	label_cb67: lda $0058
	label_cb6a: cmp $0009
	label_cb6d: beq $cb72
	label_cb6f: jsr $d629
	label_cb72: jmp $cb4e
	label_cb75: jsr $c28b
	label_cb78: jsr $db8e
	label_cb7b: jsr $e7c4
	label_cb7e: lda #$00
	label_cb80: sta $005d
	label_cb83: lda #$00
	label_cb85: sta $0025
	label_cb88: jsr $d2bb
	label_cb8b: rts
	label_cb8c: ldx $0010
	label_cb8f: lda $e040,x
	label_cb92: sta $0062
	label_cb95: lda #$01
	label_cb97: sta $0009
	label_cb9a: lda $000f
	label_cb9d: cmp $0009
	label_cba0: bne label_cba6
	label_cba2: jmp $ce4a
	rts
	label_cba6: jmp $d023
	rts
	label_cbaa: lda #$03
	label_cbac: sta $0009
	label_cbaf: lda $005f
	label_cbb2: cmp $0009
	label_cbb5: bpl $cbba
	label_cbb7: jmp $d204
	label_cbba: lda $005e
	label_cbbd: asl a
	label_cbbe: asl a
	label_cbbf: asl a
	label_cbc0: clc
	label_cbc1: adc #$08
	label_cbc3: sta $0063
	label_cbc6: lda #$7f
	label_cbc8: sta $0009
	label_cbcb: lda $000c
	label_cbce: cmp $0009
	label_cbd1: bmi $cc2b
	label_cbd3: lda #$81
	label_cbd5: sta $0009
	label_cbd8: lda $000c
	label_cbdb: cmp $0009
	label_cbde: bpl $cc2b
	label_cbe0: ldx $0063
	label_cbe3: lda $0200,x
	label_cbe6: sta $0064
	label_cbe9: lda #$00
	label_cbeb: sta $0009
	label_cbee: lda $0064
	label_cbf1: and $0054
	label_cbf4: cmp $0009
	label_cbf7: beq $cbfa
	label_cbf9: rts
	label_cbfa: lda #$00
	label_cbfc: sta $0009
	label_cbff: lda $0012
	label_cc02: cmp $0009
	label_cc05: beq $cc0a
	label_cc07: jmp $d204
	label_cc0a: lda $0063
	label_cc0d: clc
	label_cc0e: adc #$06
	label_cc10: tax
	label_cc11: lda $0400,x
	label_cc14: sta $0064
	label_cc17: lda #$00
	label_cc19: sta $0009
	label_cc1c: lda $0064
	label_cc1f: and $0054
	label_cc22: cmp $0009
	label_cc25: beq $cc28
	label_cc27: rts
	label_cc28: jmp $d204
	label_cc2b: lda #$7f
	label_cc2d: sta $0009
	label_cc30: lda $000c
	label_cc33: cmp $0009
	label_cc36: bpl $cc97
	label_cc38: lda $000c
	label_cc3b: lsr a
	label_cc3c: lsr a
	label_cc3d: lsr a
	label_cc3e: lsr a
	label_cc3f: sta $0065
	label_cc42: lda $0063
	label_cc45: clc
	label_cc46: adc $0065
	label_cc49: sta $0066
	label_cc4c: ldx $0066
	label_cc4f: lda $0400,x
	label_cc52: sta $0064
	label_cc55: lda #$00
	label_cc57: sta $0009
	label_cc5a: lda $0064
	label_cc5d: and $0054
	label_cc60: cmp $0009
	label_cc63: beq $cc66
	label_cc65: rts
	label_cc66: lda #$00
	label_cc68: sta $0009
	label_cc6b: lda $0012
	label_cc6e: cmp $0009
	label_cc71: beq $cc76
	label_cc73: jmp $d204
	label_cc76: lda $0066
	label_cc79: sec
	label_cc7a: sbc #$01
	label_cc7c: tax
	label_cc7d: lda $0400,x
	label_cc80: sta $0064
	label_cc83: lda #$00
	label_cc85: sta $0009
	label_cc88: lda $0064
	label_cc8b: and $0054
	label_cc8e: cmp $0009
	label_cc91: beq $cc94
	label_cc93: rts
	label_cc94: jmp $d204
	label_cc97: lda $000c
	label_cc9a: sec
	label_cc9b: sbc #$70
	label_cc9d: lsr a
	label_cc9e: lsr a
	label_cc9f: lsr a
	label_cca0: lsr a
	label_cca1: sta $0065
	label_cca4: lda $0063
	label_cca7: clc
	label_cca8: adc $0065
	label_ccab: sta $0066
	label_ccae: ldx $0066
	label_ccb1: lda $0200,x
	label_ccb4: sta $0064
	label_ccb7: lda #$00
	label_ccb9: sta $0009
	label_ccbc: lda $0064
	label_ccbf: and $0054
	label_ccc2: cmp $0009
	label_ccc5: beq $ccc8
	label_ccc7: rts
	label_ccc8: lda #$00
	label_ccca: sta $0009
	label_cccd: lda $0012
	label_ccd0: cmp $0009
	label_ccd3: beq $ccd8
	label_ccd5: jmp $d204
	label_ccd8: lda $0066
	label_ccdb: sec
	label_ccdc: sbc #$01
	label_ccde: tax
	label_ccdf: lda $0200,x
	label_cce2: sta $0064
	label_cce5: lda #$00
	label_cce7: sta $0009
	label_ccea: lda $0064
	label_cced: and $0054
	label_ccf0: cmp $0009
	label_ccf3: beq $ccf6
	label_ccf5: rts
	label_ccf6: jsr $d204
	label_ccf9: rts
	label_ccfa: lda #$00
	label_ccfc: sta $0009
	label_ccff: lda $005f
	label_cd02: cmp $0009
	label_cd05: beq $cd0a
	label_cd07: jmp $d255
	label_cd0a: lda $005e
	label_cd0d: sec
	label_cd0e: sbc #$01
	label_cd10: asl a
	label_cd11: asl a
	label_cd12: asl a
	label_cd13: sta $0063
	label_cd16: lda #$7f
	label_cd18: sta $0009
	label_cd1b: lda $000c
	label_cd1e: cmp $0009
	label_cd21: bmi $cd7b
	label_cd23: lda #$81
	label_cd25: sta $0009
	label_cd28: lda $000c
	label_cd2b: cmp $0009
	label_cd2e: bpl $cd7b
	label_cd30: ldx $0063
	label_cd33: lda $0200,x
	label_cd36: sta $0067
	label_cd39: lda #$00
	label_cd3b: sta $0009
	label_cd3e: lda $0067
	label_cd41: and $0054
	label_cd44: cmp $0009
	label_cd47: beq $cd4a
	label_cd49: rts
	label_cd4a: lda #$00
	label_cd4c: sta $0009
	label_cd4f: lda $0012
	label_cd52: cmp $0009
	label_cd55: beq $cd5a
	jmp $d255
	label_cd5a: lda $0063
	label_cd5d: clc
	label_cd5e: adc #$06
	label_cd60: tax
	label_cd61: lda $0400,x
	label_cd64: sta $0067
	label_cd67: lda #$00
	label_cd69: sta $0009
	label_cd6c: lda $0067
	label_cd6f: and $0054
	label_cd72: cmp $0009
	label_cd75: beq $cd78
	label_cd77: rts
	label_cd78: jmp $d255
	label_cd7b: lda #$7f
	label_cd7d: sta $0009
	label_cd80: lda $000c
	label_cd83: cmp $0009
	label_cd86: bpl $cde7
	label_cd88: lda $000c
	label_cd8b: lsr a
	label_cd8c: lsr a
	label_cd8d: lsr a
	label_cd8e: lsr a
	label_cd8f: sta $0065
	label_cd92: lda $0063
	label_cd95: clc
	label_cd96: adc $0065
	label_cd99: sta $0066
	label_cd9c: ldx $0066
	label_cd9f: lda $0400,x
	label_cda2: sta $0067
	label_cda5: lda #$00
	label_cda7: sta $0009
	label_cdaa: lda $0067
	label_cdad: and $0054
	label_cdb0: cmp $0009
	label_cdb3: beq $cdb6
	label_cdb5: rts
	label_cdb6: lda #$00
	label_cdb8: sta $0009
	label_cdbb: lda $0012
	label_cdbe: cmp $0009
	label_cdc1: beq $cdc6
	label_cdc3: jmp $d255
	label_cdc6: lda $0066
	label_cdc9: sec
	label_cdca: sbc #$01
	label_cdcc: tax
	label_cdcd: lda $0400,x
	label_cdd0: sta $0067
	label_cdd3: lda #$00
	label_cdd5: sta $0009
	label_cdd8: lda $0067
	label_cddb: and $0054
	label_cdde: cmp $0009
	label_cde1: beq $cde4
	label_cde3: rts
	label_cde4: jmp $d255
	label_cde7: lda $000c
	label_cdea: clc
	label_cdeb: adc #$90
	label_cded: lsr a
	label_cdee: lsr a
	label_cdef: lsr a
	label_cdf0: lsr a
	label_cdf1: sta $0065
	label_cdf4: lda $0063
	label_cdf7: clc
	label_cdf8: adc $0065
	label_cdfb: sta $0066
	label_cdfe: ldx $0066
	label_ce01: lda $0200,x
	label_ce04: sta $0067
	label_ce07: lda #$00
	label_ce09: sta $0009
	label_ce0c: lda $0067
	label_ce0f: and $0054
	label_ce12: cmp $0009
	label_ce15: beq $ce18
	label_ce17: rts
	label_ce18: lda #$00
	label_ce1a: sta $0009
	label_ce1d: lda $0012
	label_ce20: cmp $0009
	label_ce23: beq $ce28
	label_ce25: jmp $d255
	label_ce28: lda $0066
	label_ce2b: sec
	label_ce2c: sbc #$01
	label_ce2e: tax
	label_ce2f: lda $0200,x
	label_ce32: sta $0067
	label_ce35: lda #$00
	label_ce37: sta $0009
	label_ce3a: lda $0067
	label_ce3d: and $0054
	label_ce40: cmp $0009
	label_ce43: beq $ce46
	label_ce45: rts
	label_ce46: jmp $d255
	rts
	label_ce4a: lda #$00
	label_ce4c: sta $0009
	label_ce4f: lda $000c
	label_ce52: and #$f8
	label_ce54: cmp $0009
	label_ce57: bne label_ce6f
	label_ce59: dec $0010
	label_ce5c: lda #$00
	label_ce5e: sta $0009
	label_ce61: lda $0010
	label_ce64: cmp $0009
	label_ce67: bne label_ce6e
	label_ce69: lda #$00
	label_ce6b: sta $000f
	label_ce6e: rts
	label_ce6f: lda #$00
	label_ce71: sta $0009
	label_ce74: lda $000a
	label_ce77: cmp $0009
	label_ce7a: bne label_ce9f
	jsr $c241
	lda $000c
	sec
	sbc $0062
	sta $000c
	dec $0010
	lda #$00
	sta $0009
	lda $0010
	cmp $0009
	bne label_ce9e
	lda #$00
	sta $000f
	rts
	label_ce9f: lda $005e
	label_cea2: asl a
	label_cea3: asl a
	label_cea4: asl a
	label_cea5: sta $0063
	label_cea8: lda #$97
	label_ceaa: sta $0009
	label_cead: lda $000c
	label_ceb0: cmp $0009
	label_ceb3: bmi $ceb8
	label_ceb5: jmp $cf71
	label_ceb8: lda $000c
	label_cebb: pha
	label_cebc: lda #$e8
	label_cebe: sec
	label_cebf: sbc $0062
	label_cec2: sta $0011
	label_cec5: pla
	label_cec6: clc
	label_cec7: adc $0011
	label_ceca: lsr a
	label_cecb: lsr a
	label_cecc: lsr a
	label_cecd: lsr a
	label_cece: sta $0065
	label_ced1: lda #$00
	label_ced3: sta $0009
	label_ced6: lda $0012
	label_ced9: cmp $0009
	label_cedc: beq $cef7
	label_cede: lda $000c
	label_cee1: pha
	label_cee2: lda #$ef
	label_cee4: sec
	label_cee5: sbc $0062
	label_cee8: sta $0011
	label_ceeb: pla
	label_ceec: clc
	label_ceed: adc $0011
	label_cef0: lsr a
	label_cef1: lsr a
	label_cef2: lsr a
	label_cef3: lsr a
	label_cef4: sta $0065
	label_cef7: lda $0063
	label_cefa: clc
	label_cefb: adc $0065
	label_cefe: sta $0066
	label_cf01: ldx $0066
	label_cf04: lda $0400,x
	label_cf07: sta $0067
	label_cf0a: lda #$00
	label_cf0c: sta $0009
	label_cf0f: lda $0067
	label_cf12: and $0054
	label_cf15: cmp $0009
	label_cf18: beq $cf1d
	label_cf1a: jmp $d01a
	label_cf1d: lda #$00
	label_cf1f: sta $0064
	label_cf22: lda #$04
	label_cf24: sta $0009
	label_cf27: lda $005f
	label_cf2a: cmp $0009
	label_cf2d: bmi $cf3e
	label_cf2f: beq $cf3e
	label_cf31: lda $0066
	label_cf34: clc
	label_cf35: adc #$08
	label_cf37: tax
	label_cf38: lda $0400,x
	label_cf3b: sta $0064
	label_cf3e: lda #$00
	label_cf40: sta $0009
	label_cf43: lda $0064
	label_cf46: and $0054
	label_cf49: cmp $0009
	label_cf4c: beq $cf51
	label_cf4e: jmp $d01a
	label_cf51: lda $000c
	label_cf54: sec
	label_cf55: sbc $0062
	label_cf58: sta $000c
	label_cf5b: dec $0010
	label_cf5e: lda #$00
	label_cf60: sta $0009
	label_cf63: lda $0010
	label_cf66: cmp $0009
	label_cf69: bne label_cf70
	label_cf6b: lda #$00
	label_cf6d: sta $000f
	label_cf70: rts
	label_cf71: lda $000c
	label_cf74: clc
	label_cf75: adc #$79
	label_cf77: sec
	label_cf78: sbc $0062
	label_cf7b: lsr a
	label_cf7c: lsr a
	label_cf7d: lsr a
	label_cf7e: lsr a
	label_cf7f: sta $0065
	label_cf82: lda #$00
	label_cf84: sta $0009
	label_cf87: lda $0012
	label_cf8a: cmp $0009
	label_cf8d: beq $cfa0
	label_cf8f: lda $000c
	label_cf92: clc
	label_cf93: adc #$7f
	label_cf95: sec
	label_cf96: sbc $0062
	label_cf99: lsr a
	label_cf9a: lsr a
	label_cf9b: lsr a
	label_cf9c: lsr a
	label_cf9d: sta $0065
	label_cfa0: lda $0063
	label_cfa3: clc
	label_cfa4: adc $0065
	label_cfa7: sta $0066
	label_cfaa: ldx $0066
	label_cfad: lda $0200,x
	label_cfb0: sta $0067
	label_cfb3: lda #$00
	label_cfb5: sta $0009
	label_cfb8: lda $0067
	label_cfbb: and $0054
	label_cfbe: cmp $0009
	label_cfc1: beq $cfc6
	label_cfc3: jmp $d01a
	label_cfc6: lda #$00
	label_cfc8: sta $0064
	label_cfcb: lda #$04
	label_cfcd: sta $0009
	label_cfd0: lda $005f
	label_cfd3: cmp $0009
	label_cfd6: bmi $cfe7
	label_cfd8: beq $cfe7
	label_cfda: lda $0066
	label_cfdd: clc
	label_cfde: adc #$08
	label_cfe0: tax
	label_cfe1: lda $0200,x
	label_cfe4: sta $0064
	label_cfe7: lda #$00
	label_cfe9: sta $0009
	label_cfec: lda $0064
	label_cfef: and $0054
	label_cff2: cmp $0009
	label_cff5: beq $cffa
	label_cff7: jmp $d01a
	label_cffa: lda $000c
	label_cffd: sec
	label_cffe: sbc $0062
	label_d001: sta $000c
	label_d004: dec $0010
	label_d007: lda #$00
	label_d009: sta $0009
	label_d00c: lda $0010
	label_d00f: cmp $0009
	label_d012: bne label_d019
	label_d014: lda #$00
	label_d016: sta $000f
	label_d019: rts
	label_d01a: lda #$00
	label_d01c: sta $000f
	label_d01f: jsr $dc92
	label_d022: rts
	label_d023: lda #$00
	label_d025: sta $0009
	label_d028: lda $000a
	label_d02b: cmp $0009
	label_d02e: bne label_d05d
	lda $000c
	clc
	adc $0062
	sta $000c
	lda #$00
	sta $0009
	lda $0062
	cmp $0009
	beq $d04c
	lda #$00
	sta $000f
	lda #$3c
	sta $0009
	lda $0010
	cmp $0009
	bpl $d05c
	inc $0010
	rts
	label_d05d: lda $005e
	label_d060: asl a
	label_d061: asl a
	label_d062: asl a
	label_d063: sta $0063
	label_d066: lda #$e8
	label_d068: sta $0009
	label_d06b: lda $000c
	label_d06e: and #$f8
	label_d070: cmp $0009
	label_d073: bne label_d080
	label_d075: lda $000c
	label_d078: clc
	label_d079: adc $0062
	label_d07c: sta $000c
	label_d07f: rts
	label_d080: lda #$f0
	label_d082: sta $0009
	label_d085: lda $000c
	label_d088: and #$f0
	label_d08a: cmp $0009
	label_d08d: bne label_d09a
	label_d08f: lda $000c
	label_d092: clc
	label_d093: adc $0062
	label_d096: sta $000c
	label_d099: rts
	label_d09a: lda #$7f
	label_d09c: sta $0009
	label_d09f: lda $000c
	label_d0a2: cmp $0009
	label_d0a5: bmi $d0aa
	label_d0a7: jmp $d144
	label_d0aa: lda $000c
	label_d0ad: clc
	label_d0ae: adc $0062
	label_d0b1: lsr a
	label_d0b2: lsr a
	label_d0b3: lsr a
	label_d0b4: lsr a
	label_d0b5: sta $0065
	label_d0b8: lda $0063
	label_d0bb: clc
	label_d0bc: adc $0065
	label_d0bf: sta $0066
	label_d0c2: ldx $0066
	label_d0c5: lda $0400,x
	label_d0c8: sta $0067
	label_d0cb: lda #$00
	label_d0cd: sta $0009
	label_d0d0: lda $0067
	label_d0d3: and $0054
	label_d0d6: cmp $0009
	label_d0d9: beq $d0de
	label_d0db: jmp $d1e1
	label_d0de: lda #$00
	label_d0e0: sta $0064
	label_d0e3: lda #$04
	label_d0e5: sta $0009
	label_d0e8: lda $005f
	label_d0eb: cmp $0009
	label_d0ee: bmi $d0ff
	label_d0f0: beq $d0ff
	label_d0f2: lda $0066
	label_d0f5: clc
	label_d0f6: adc #$08
	label_d0f8: tax
	label_d0f9: lda $0400,x
	label_d0fc: sta $0064
	label_d0ff: lda #$00
	label_d101: sta $0009
	label_d104: lda $0064
	label_d107: and $0054
	label_d10a: cmp $0009
	label_d10d: beq $d112
	label_d10f: jmp $d1e1
	label_d112: lda $000c
	label_d115: clc
	label_d116: adc $0062
	label_d119: sta $000c
	label_d11c: lda #$00
	label_d11e: sta $0009
	label_d121: lda $0062
	label_d124: cmp $0009
	label_d127: beq $d12e
	label_d129: lda #$00
	label_d12b: sta $000f
	label_d12e: lda #$3c
	label_d130: sta $0009
	label_d133: lda $0010
	label_d136: cmp $0009
	label_d139: bpl $d13e
	label_d13b: inc $0010
	label_d13e: lda #$00
	label_d140: sta $005d
	label_d143: rts
	label_d144: lda $000c
	label_d147: clc
	label_d148: adc $0062
	label_d14b: clc
	label_d14c: adc #$90
	label_d14e: lsr a
	label_d14f: lsr a
	label_d150: lsr a
	label_d151: lsr a
	label_d152: sta $0065
	label_d155: lda $0063
	label_d158: clc
	label_d159: adc $0065
	label_d15c: sta $0066
	label_d15f: ldx $0066
	label_d162: lda $0200,x
	label_d165: sta $0067
	label_d168: lda #$00
	label_d16a: sta $0009
	label_d16d: lda $0067
	label_d170: and $0054
	label_d173: cmp $0009
	label_d176: beq $d17b
	label_d178: jmp $d1e1
	label_d17b: lda #$00
	label_d17d: sta $0064
	label_d180: lda #$04
	label_d182: sta $0009
	label_d185: lda $005f
	label_d188: cmp $0009
	label_d18b: bmi $d19c
	label_d18d: beq $d19c
	label_d18f: lda $0066
	label_d192: clc
	label_d193: adc #$08
	label_d195: tax
	label_d196: lda $0200,x
	label_d199: sta $0064
	label_d19c: lda #$00
	label_d19e: sta $0009
	label_d1a1: lda $0064
	label_d1a4: and $0054
	label_d1a7: cmp $0009
	label_d1aa: beq $d1af
	label_d1ac: jmp $d1e1
	label_d1af: lda $000c
	label_d1b2: clc
	label_d1b3: adc $0062
	label_d1b6: sta $000c
	label_d1b9: lda #$00
	label_d1bb: sta $0009
	label_d1be: lda $0062
	label_d1c1: cmp $0009
	label_d1c4: beq $d1cb
	label_d1c6: lda #$00
	label_d1c8: sta $000f
	label_d1cb: lda #$3c
	label_d1cd: sta $0009
	label_d1d0: lda $0010
	label_d1d3: cmp $0009
	label_d1d6: bpl $d1db
	label_d1d8: inc $0010
	label_d1db: lda #$00
	label_d1dd: sta $005d
	label_d1e0: rts
	label_d1e1: lda #$02
	label_d1e3: sta $000f
	label_d1e6: lda #$11
	label_d1e8: sta $0009
	label_d1eb: lda $0010
	label_d1ee: cmp $0009
	label_d1f1: bmi $d1f9
	label_d1f3: lda #$0c
	label_d1f5: sta $0010
	label_d1f8: rts
	label_d1f9: lda #$00
	label_d1fb: sta $0010
	label_d1fe: lda #$01
	label_d200: sta $005d
	label_d203: rts
	label_d204: lda $8058
	label_d207: sta $0009
	label_d20a: lda $005e
	label_d20d: cmp $0009
	label_d210: bne label_d213
	rts
	label_d213: lda $8059
	label_d216: sta $0009
	label_d219: lda $005e
	label_d21c: cmp $0009
	label_d21f: bne label_d226
	label_d221: lda #$01
	label_d223: sta $0027
	label_d226: inc $005f
	label_d229: lda #$10
	label_d22b: sta $0009
	label_d22e: lda $005f
	label_d231: cmp $0009
	label_d234: bne label_d23e
	label_d236: lda #$00
	label_d238: sta $005f
	label_d23b: inc $005e
	label_d23e: lda #$0a
	label_d240: sta $0009
	label_d243: lda $005e
	label_d246: sec
	label_d247: sbc $0020
	label_d24a: cmp $0009
	label_d24d: bmi $d254
	label_d24f: beq $d254
	label_d251: jsr $d6e5
	label_d254: rts
	label_d255: lda #$00
	label_d257: sta $0009
	label_d25a: lda $005e
	label_d25d: cmp $0009
	label_d260: bne label_d270
	label_d262: lda #$08
	label_d264: sta $0009
	label_d267: lda $005f
	label_d26a: cmp $0009
	label_d26d: bpl $d270
	label_d26f: rts
	label_d270: lda $805a
	label_d273: sta $0009
	label_d276: lda $005e
	label_d279: cmp $0009
	label_d27c: bne label_d28c
	label_d27e: lda #$01
	label_d280: sta $0009
	label_d283: lda $005f
	label_d286: cmp $0009
	label_d289: bpl $d28c
	label_d28b: rts
	label_d28c: dec $005f
	label_d28f: lda #$ff
	label_d291: sta $0009
	label_d294: lda $005f
	label_d297: cmp $0009
	label_d29a: bne label_d2a4
	label_d29c: lda #$0f
	label_d29e: sta $005f
	label_d2a1: dec $005e
	label_d2a4: lda #$06
	label_d2a6: sta $0009
	label_d2a9: lda $005e
	label_d2ac: sec
	label_d2ad: sbc $0020
	label_d2b0: cmp $0009
	label_d2b3: bpl $d2ba
	label_d2b5: beq $d2ba
	label_d2b7: jsr $d773
	label_d2ba: rts
	label_d2bb: lda #$20
	label_d2bd: sta $0024
	label_d2c0: inc $0025
	label_d2c3: lda #$00
	label_d2c5: sta $0009
	label_d2c8: lda $0025
	label_d2cb: and #$08
	label_d2cd: cmp $0009
	label_d2d0: beq $d2d7
	label_d2d2: lda #$28
	label_d2d4: sta $0024
	label_d2d7: lda #$00
	label_d2d9: sta $0009
	label_d2dc: lda $0059
	label_d2df: cmp $0009
	label_d2e2: bne label_d2e9
	label_d2e4: lda #$00
	label_d2e6: sta $0025
	label_d2e9: lda #$02
	label_d2eb: sta $0009
	label_d2ee: lda $000f
	label_d2f1: cmp $0009
	label_d2f4: beq $d2fb
	label_d2f6: lda #$30
	label_d2f8: sta $0024
	label_d2fb: lda #$00
	label_d2fd: sta $0009
	label_d300: lda $0012
	label_d303: cmp $0009
	label_d306: beq $d30d
	label_d308: lda #$38
	label_d30a: sta $0024
	label_d30d: lda $000c
	label_d310: sec
	label_d311: sbc #$20
	label_d313: sta $0068
	label_d316: lda $005e
	label_d319: sec
	label_d31a: sbc $0020
	label_d31d: asl a
	label_d31e: asl a
	label_d31f: asl a
	label_d320: asl a
	label_d321: pha
	label_d322: lda $005f
	label_d325: sec
	label_d326: sbc $0021
	label_d329: sta $0011
	label_d32c: pla
	label_d32d: clc
	label_d32e: adc $0011
	label_d331: sec
	label_d332: sbc #$01
	label_d334: sta $0069
	label_d337: lda #$01
	label_d339: sta $006a
	label_d33c: lda #$00
	label_d33e: sta $0009
	label_d341: lda $000d
	label_d344: cmp $0009
	label_d347: beq $d351
	label_d349: lda $000d
	label_d34c: and #$03
	label_d34e: sta $006a
	label_d351: lda #$00
	label_d353: sta $0009
	label_d356: lda $005a
	label_d359: cmp $0009
	label_d35c: beq $d391
	lda $0069
	clc
	adc #$04
	sta $006b
	lda $000c
	sec
	sbc #$02
	sta $006c
	lda #$03
	sta $006d
	lda #$00
	sta $0009
	lda $001b
	and #$02
	cmp $0009
	beq $d389
	lda #$43
	sta $006d
	lda #$1e
	sta $006e
	jsr $f4f5
	label_d391: lda #$01
	label_d393: sta $0009
	label_d396: lda $001c
	label_d399: cmp $0009
	label_d39c: bne label_d3a1
	label_d39e: jmp $d3a4
	label_d3a1: jmp $d43a
	label_d3a4: ldx #$00
	label_d3a6: lda $0068
	label_d3a9: sta $0300,x
	label_d3ac: ldx #$01
	label_d3ae: lda $0024
	label_d3b1: sta $0300,x
	label_d3b4: ldx #$02
	label_d3b6: lda $006a
	label_d3b9: sta $0300,x
	label_d3bc: ldx #$03
	label_d3be: lda $0069
	label_d3c1: sta $0300,x
	label_d3c4: ldx #$04
	label_d3c6: lda #$10
	label_d3c8: clc
	label_d3c9: adc $0068
	label_d3cc: sta $0300,x
	label_d3cf: ldx #$05
	label_d3d1: lda #$02
	label_d3d3: clc
	label_d3d4: adc $0024
	label_d3d7: sta $0300,x
	label_d3da: ldx #$06
	label_d3dc: lda $006a
	label_d3df: sta $0300,x
	label_d3e2: ldx #$07
	label_d3e4: lda $0069
	label_d3e7: sta $0300,x
	label_d3ea: ldx #$08
	label_d3ec: lda $0068
	label_d3ef: sta $0300,x
	label_d3f2: ldx #$09
	label_d3f4: lda #$04
	label_d3f6: clc
	label_d3f7: adc $0024
	label_d3fa: sta $0300,x
	label_d3fd: ldx #$0a
	label_d3ff: lda $006a
	label_d402: sta $0300,x
	label_d405: ldx #$0b
	label_d407: lda #$08
	label_d409: clc
	label_d40a: adc $0069
	label_d40d: sta $0300,x
	label_d410: ldx #$0c
	label_d412: lda #$10
	label_d414: clc
	label_d415: adc $0068
	label_d418: sta $0300,x
	label_d41b: ldx #$0d
	label_d41d: lda #$06
	label_d41f: clc
	label_d420: adc $0024
	label_d423: sta $0300,x
	label_d426: ldx #$0e
	label_d428: lda $006a
	label_d42b: sta $0300,x
	label_d42e: ldx #$0f
	label_d430: lda #$08
	label_d432: clc
	label_d433: adc $0069
	label_d436: sta $0300,x
	label_d439: rts
	label_d43a: lda $006a
	label_d43d: clc
	label_d43e: adc #$40
	label_d440: sta $006a
	label_d443: ldx #$00
	label_d445: lda $0068
	label_d448: sta $0300,x
	label_d44b: ldx #$01
	label_d44d: lda #$04
	label_d44f: clc
	label_d450: adc $0024
	label_d453: sta $0300,x
	label_d456: ldx #$02
	label_d458: lda $006a
	label_d45b: sta $0300,x
	label_d45e: ldx #$03
	label_d460: lda $0069
	label_d463: sta $0300,x
	label_d466: ldx #$04
	label_d468: lda #$10
	label_d46a: clc
	label_d46b: adc $0068
	label_d46e: sta $0300,x
	label_d471: ldx #$05
	label_d473: lda #$06
	label_d475: clc
	label_d476: adc $0024
	label_d479: sta $0300,x
	label_d47c: ldx #$06
	label_d47e: lda $006a
	label_d481: sta $0300,x
	label_d484: ldx #$07
	label_d486: lda $0069
	label_d489: sta $0300,x
	label_d48c: ldx #$08
	label_d48e: lda $0068
	label_d491: sta $0300,x
	label_d494: ldx #$09
	label_d496: lda $0024
	label_d499: sta $0300,x
	label_d49c: ldx #$0a
	label_d49e: lda $006a
	label_d4a1: sta $0300,x
	label_d4a4: ldx #$0b
	label_d4a6: lda #$08
	label_d4a8: clc
	label_d4a9: adc $0069
	label_d4ac: sta $0300,x
	label_d4af: ldx #$0c
	label_d4b1: lda #$10
	label_d4b3: clc
	label_d4b4: adc $0068
	label_d4b7: sta $0300,x
	label_d4ba: ldx #$0d
	label_d4bc: lda #$02
	label_d4be: clc
	label_d4bf: adc $0024
	label_d4c2: sta $0300,x
	label_d4c5: ldx #$0e
	label_d4c7: lda $006a
	label_d4ca: sta $0300,x
	label_d4cd: ldx #$0f
	label_d4cf: lda #$08
	label_d4d1: clc
	label_d4d2: adc $0069
	label_d4d5: sta $0300,x
	label_d4d8: rts
	label_d4d9: lda #$00
	label_d4db: sta $000e
	label_d4de: lda $000a
	label_d4e1: sta $0009
	label_d4e4: lda $000e
	label_d4e7: cmp $0009
	label_d4ea: bmi $d4ed
	label_d4ec: rts
	label_d4ed: ldx $0022
	label_d4f0: lda #$08
	label_d4f2: sta $0300,x
	label_d4f5: lda #$01
	label_d4f7: clc
	label_d4f8: adc $0022
	label_d4fb: tax
	label_d4fc: lda #$02
	label_d4fe: sta $0300,x
	label_d501: lda #$02
	label_d503: clc
	label_d504: adc $0022
	label_d507: tax
	label_d508: lda #$02
	label_d50a: sta $0300,x
	label_d50d: lda #$03
	label_d50f: clc
	label_d510: adc $0022
	label_d513: tax
	label_d514: lda #$10
	label_d516: pha
	label_d517: lda $000e
	label_d51a: asl a
	label_d51b: asl a
	label_d51c: asl a
	label_d51d: sta $0011
	label_d520: pla
	label_d521: clc
	label_d522: adc $0011
	label_d525: sta $0300,x
	label_d528: lda $0022
	label_d52b: clc
	label_d52c: adc #$04
	label_d52e: sta $0022
	label_d531: inc $000e
	label_d534: jmp $d4de
	rts
	rts
	label_d539: lda #$01
	label_d53b: sta $4016
	label_d53e: lda #$00
	label_d540: sta $4016
	label_d543: lda $4016
	label_d546: and #$01
	label_d548: sta $0013
	label_d54b: lda $4016
	label_d54e: and #$01
	label_d550: sta $0014
	label_d553: lda $4016
	label_d556: and #$01
	label_d558: sta $0019
	label_d55b: lda $4016
	label_d55e: and #$01
	label_d560: sta $001a
	label_d563: lda $4016
	label_d566: and #$01
	label_d568: sta $0015
	label_d56b: lda $4016
	label_d56e: and #$01
	label_d570: sta $0016
	label_d573: lda $4016
	label_d576: and #$01
	label_d578: sta $0018
	label_d57b: lda $4016
	label_d57e: and #$01
	label_d580: sta $0017
	label_d583: rts
	label_d584: lda #$9f
	label_d586: sta $4004
	label_d589: lda #$8c
	label_d58b: sta $4005
	label_d58e: lda #$4d
	label_d590: sta $4006
	label_d593: lda #$95
	label_d595: sta $4007
	label_d598: rts
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
	label_d5c3: lda #$0b
	label_d5c5: sta $400C
	label_d5c8: lda #$ff
	label_d5ca: sta $400d
	label_d5cd: lda #$ff
	label_d5cf: sta $400E
	label_d5d2: lda #$08
	label_d5d4: sta $400F
	label_d5d7: rts
	lda #$0f
	sta $400C
	lda #$ff
	sta $400d
	lda #$f9
	sta $400E
	lda #$08
	sta $400F
	rts
	label_d5ed: lda #$00
	label_d5ef: sta $0009
	label_d5f2: lda $001e
	label_d5f5: and #$04
	label_d5f7: cmp $0009
	label_d5fa: beq $d609
	label_d5fc: lda #$31
	label_d5fe: sta $2000
	label_d601: lda #$1c
	label_d603: sta $2001
	label_d606: jmp $d613
	label_d609: lda #$30
	label_d60b: sta $2000
	label_d60e: lda #$1c
	label_d610: sta $2001
	label_d613: lda $001e
	label_d616: asl a
	label_d617: asl a
	label_d618: asl a
	label_d619: asl a
	label_d61a: asl a
	label_d61b: asl a
	label_d61c: clc
	label_d61d: adc $001f
	label_d620: sta $2005
	label_d623: lda #$00
	label_d625: sta $2005
	label_d628: rts
	label_d629: lda #$00
	label_d62b: sta $0009
	label_d62e: lda $0058
	label_d631: cmp $0009
	label_d634: bne label_d637
	label_d636: rts
	label_d637: lda #$06
	label_d639: sta $0009
	label_d63c: lda $0058
	label_d63f: cmp $0009
	label_d642: bmi $d647
	label_d644: jmp $d696
	label_d647: lda $001e
	label_d64a: clc
	label_d64b: adc #$05
	label_d64d: sta $0052
	label_d650: lda #$01
	label_d652: sta $0009
	label_d655: lda $0058
	label_d658: cmp $0009
	label_d65b: bne label_d660
	label_d65d: jsr $c4b4
	label_d660: lda #$03
	label_d662: sta $0009
	label_d665: lda $0058
	label_d668: cmp $0009
	label_d66b: bne label_d670
	label_d66d: jsr $c5aa
	label_d670: lda #$04
	label_d672: sta $0009
	label_d675: lda $0058
	label_d678: cmp $0009
	label_d67b: bne label_d680
	label_d67d: jsr $c6a0
	label_d680: lda #$05
	label_d682: sta $0009
	label_d685: lda $0058
	label_d688: cmp $0009
	label_d68b: bne label_d690
	label_d68d: jsr $c706
	label_d690: lda #$00
	label_d692: sta $0058
	label_d695: rts
	label_d696: lda $001e
	label_d699: sec
	label_d69a: sbc #$01
	label_d69c: sta $0052
	label_d69f: lda #$06
	label_d6a1: sta $0009
	label_d6a4: lda $0058
	label_d6a7: cmp $0009
	label_d6aa: bne label_d6af
	label_d6ac: jsr $c4b4
	label_d6af: lda #$08
	label_d6b1: sta $0009
	label_d6b4: lda $0058
	label_d6b7: cmp $0009
	label_d6ba: bne label_d6bf
	label_d6bc: jsr $c5aa
	label_d6bf: lda #$09
	label_d6c1: sta $0009
	label_d6c4: lda $0058
	label_d6c7: cmp $0009
	label_d6ca: bne label_d6cf
	label_d6cc: jsr $c6a0
	label_d6cf: lda #$0a
	label_d6d1: sta $0009
	label_d6d4: lda $0058
	label_d6d7: cmp $0009
	label_d6da: bne label_d6df
	label_d6dc: jsr $c706
	label_d6df: lda #$00
	label_d6e1: sta $0058
	label_d6e4: rts
	label_d6e5: lda $805b
	label_d6e8: sta $0009
	label_d6eb: lda $0020
	label_d6ee: cmp $0009
	label_d6f1: bne label_d6f9
	label_d6f3: lda #$01
	label_d6f5: sta $000b
	label_d6f8: rts
	label_d6f9: inc $0021
	label_d6fc: lda #$10
	label_d6fe: sta $0009
	label_d701: lda $0021
	label_d704: cmp $0009
	label_d707: bne label_d711
	label_d709: lda #$00
	label_d70b: sta $0021
	label_d70e: inc $0020
	label_d711: lda #$3f
	label_d713: sta $0009
	label_d716: lda $001f
	label_d719: cmp $0009
	label_d71c: bne label_d727
	label_d71e: lda #$00
	label_d720: sta $001f
	label_d723: inc $001e
	label_d726: rts
	label_d727: inc $001f
	label_d72a: lda #$0a
	label_d72c: sta $0009
	label_d72f: lda $001f
	label_d732: cmp $0009
	label_d735: bne label_d73c
	label_d737: lda #$01
	label_d739: sta $0058
	label_d73c: lda #$1e
	label_d73e: sta $0009
	label_d741: lda $001f
	label_d744: cmp $0009
	label_d747: bne label_d74e
	label_d749: lda #$03
	label_d74b: sta $0058
	label_d74e: lda #$28
	label_d750: sta $0009
	label_d753: lda $001f
	label_d756: cmp $0009
	label_d759: bne label_d760
	label_d75b: lda #$04
	label_d75d: sta $0058
	label_d760: lda #$32
	label_d762: sta $0009
	label_d765: lda $001f
	label_d768: cmp $0009
	label_d76b: bne label_d772
	label_d76d: lda #$05
	label_d76f: sta $0058
	label_d772: rts
	label_d773: lda #$00
	label_d775: sta $0009
	label_d778: lda $001e
	label_d77b: cmp $0009
	label_d77e: bne label_d78e
	label_d780: lda #$01
	label_d782: sta $0009
	label_d785: lda $001f
	label_d788: cmp $0009
	label_d78b: bpl $d78e
	label_d78d: rts
	label_d78e: lda $805b
	label_d791: sta $0009
	label_d794: lda $0020
	label_d797: cmp $0009
	label_d79a: bne label_d79d
	rts
	label_d79d: dec $0021
	label_d7a0: lda #$ff
	label_d7a2: sta $0009
	label_d7a5: lda $0021
	label_d7a8: cmp $0009
	label_d7ab: bne label_d7b5
	label_d7ad: lda #$0f
	label_d7af: sta $0021
	label_d7b2: dec $0020
	label_d7b5: lda #$00
	label_d7b7: sta $0009
	label_d7ba: lda $001f
	label_d7bd: cmp $0009
	label_d7c0: bne label_d7cb
	label_d7c2: lda #$3f
	label_d7c4: sta $001f
	label_d7c7: dec $001e
	label_d7ca: rts
	label_d7cb: dec $001f
	label_d7ce: lda #$00
	label_d7d0: sta $0009
	label_d7d3: lda $001e
	label_d7d6: cmp $0009
	label_d7d9: bne label_d7dc
	label_d7db: rts
	label_d7dc: lda #$08
	label_d7de: sta $0009
	label_d7e1: lda $001f
	label_d7e4: cmp $0009
	label_d7e7: bne label_d7ee
	label_d7e9: lda #$06
	label_d7eb: sta $0058
	label_d7ee: lda #$1c
	label_d7f0: sta $0009
	label_d7f3: lda $001f
	label_d7f6: cmp $0009
	label_d7f9: bne label_d800
	label_d7fb: lda #$08
	label_d7fd: sta $0058
	label_d800: lda #$26
	label_d802: sta $0009
	label_d805: lda $001f
	label_d808: cmp $0009
	label_d80b: bne label_d812
	label_d80d: lda #$09
	label_d80f: sta $0058
	label_d812: lda #$30
	label_d814: sta $0009
	label_d817: lda $001f
	label_d81a: cmp $0009
	label_d81d: bne label_d824
	label_d81f: lda #$0a
	label_d821: sta $0058
	label_d824: rts
	label_d825: jsr $dae9
	label_d828: lda #$21
	label_d82a: sta $2006
	label_d82d: lda #$08
	label_d82f: sta $2006
	label_d832: ldx #$00
	label_d834: lda $bfb8,x
	label_d837: sta $2007
	label_d83a: inx
	label_d83b: cpx #$20
	label_d83d: bne label_d834
	label_d83f: lda #$21
	label_d841: sta $2006
	label_d844: lda #$68
	label_d846: sta $2006
	label_d849: ldx #$00
	label_d84b: lda $bfd8,x
	label_d84e: sta $2007
	label_d851: inx
	label_d852: cpx #$20
	label_d854: bne label_d84b
	label_d856: jsr $db8e
	label_d859: lda $0008
	label_d85c: sta $000e
	label_d85f: lda #$22
	label_d861: sta $2006
	label_d864: lda #$04
	label_d866: sta $2006
	label_d869: lda #$ee
	label_d86b: sta $2007
	label_d86e: lda #$ef
	label_d870: sta $2007
	label_d873: dec $000e
	label_d876: lda #$00
	label_d878: sta $0009
	label_d87b: lda $000e
	label_d87e: cmp $0009
	label_d881: beq $d886
	label_d883: jmp $d869
	label_d886: lda $0008
	label_d889: sta $000e
	label_d88c: lda #$22
	label_d88e: sta $2006
	label_d891: lda #$24
	label_d893: sta $2006
	label_d896: lda #$fe
	label_d898: sta $2007
	label_d89b: lda #$ff
	label_d89d: sta $2007
	label_d8a0: dec $000e
	label_d8a3: lda #$00
	label_d8a5: sta $0009
	label_d8a8: lda $000e
	label_d8ab: cmp $0009
	label_d8ae: beq $d8b3
	label_d8b0: jmp $d896
	label_d8b3: jsr $db09
	label_d8b6: rts
	jsr $dae9
	jsr $db8e
	lda #$20
	sta $2006
	lda #$48
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e401,x
	sta $2007
	inc $000e
	lda #$0f
	sta $0009
	lda $000e
	cmp $0009
	beq $d8e8
	jmp $d8cc
	jsr $db8e
	lda #$20
	sta $2006
	lda #$ab
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e410,x
	sta $2007
	inc $000e
	lda #$08
	sta $0009
	lda $000e
	cmp $0009
	beq $d916
	jmp $d8fa
	jsr $db8e
	lda #$21
	sta $2006
	lda #$01
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e419,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d944
	jmp $d928
	jsr $db8e
	lda #$21
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e437,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d972
	jmp $d956
	jsr $db8e
	lda #$21
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e455,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9a0
	jmp $d984
	jsr $db8e
	lda #$21
	sta $2006
	lda #$e1
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e473,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9ce
	jmp $d9b2
	jsr $db8e
	lda #$22
	sta $2006
	lda #$21
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e491,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9fc
	jmp $d9e0
	jsr $db8e
	lda #$22
	sta $2006
	lda #$61
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e4af,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $da2a
	jmp $da0e
	jsr $db8e
	lda #$22
	sta $2006
	lda #$a1
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e4cd,x
	sta $2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $da58
	jmp $da3c
	jsr $db09
	jsr $c241
	lda #$00
	sta $2005
	lda #$00
	sta $2005
	jsr $db8e
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	bne label_da7e
	jmp $da68
	jsr $db8e
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	beq $da94
	jmp $da7e
	rts
	label_da95: jsr $dae9
	label_da98: lda #$21
	label_da9a: sta $2006
	label_da9d: lda #$08
	label_da9f: sta $2006
	label_daa2: lda #$00
	label_daa4: sta $000e
	label_daa7: ldx $000e
	label_daaa: lda $e3f8,x
	label_daad: sta $2007
	label_dab0: inc $000e
	label_dab3: lda #$09
	label_dab5: sta $0009
	label_dab8: lda $000e
	label_dabb: cmp $0009
	label_dabe: beq $dac3
	label_dac0: jmp $daa7
	label_dac3: jsr $db09
	label_dac6: jsr $c241
	label_dac9: lda #$c8
	label_dacb: sta $0071
	label_dace: jsr $dad2
	label_dad1: rts
	label_dad2: jsr $db8e
	label_dad5: dec $0071
	label_dad8: lda #$00
	label_dada: sta $0009
	label_dadd: lda $0071
	label_dae0: cmp $0009
	label_dae3: beq $dae8
	label_dae5: jmp $dad2
	label_dae8: rts
	label_dae9: jsr $db80
	label_daec: jsr $c2e0
	label_daef: jsr $db8e
	label_daf2: jsr $dbda
	label_daf5: jsr $db8e
	label_daf8: jsr $dc26
	label_dafb: jsr $db8e
	label_dafe: lda #$00
	label_db00: sta $2005
	label_db03: lda #$00
	label_db05: sta $2005
	label_db08: rts
	label_db09: lda #$3f
	label_db0b: sta $2006
	label_db0e: lda #$00
	label_db10: sta $2006
	label_db13: lda #$00
	label_db15: sta $000e
	label_db18: ldx $000e
	label_db1b: lda $e25a,x
	label_db1e: sta $2007
	label_db21: inc $000e
	label_db24: lda #$10
	label_db26: sta $0009
	label_db29: lda $000e
	label_db2c: cmp $0009
	label_db2f: bne label_db32
	label_db31: rts
	label_db32: jmp $db18
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e000,x
	sta $2007
	inc $000e
	lda #$20
	sta $0009
	lda $000e
	cmp $0009
	bne label_db5e
	rts
	jmp $db44
	label_db61: jsr $d629
	label_db64: jsr $d5ed
	label_db67: lda #$03
	label_db69: sta $4014
	label_db6c: lda #$10
	label_db6e: sta $0022
	label_db71: rts
	jsr $db8e
	lda #$30
	sta $2000
	lda #$1c
	sta $2001
	rts
	label_db80: jsr $db8e
	label_db83: lda #$20
	label_db85: sta $2000
	label_db88: lda #$1c
	label_db8a: sta $2001
	label_db8d: rts
	label_db8e: lda $2002
	label_db91: bpl $db8e
	label_db93: lda $2002
	label_db96: bmi $db93
	label_db98: lda #$00
	label_db9a: sta $2005
	label_db9d: lda #$00
	label_db9f: sta $2005
	label_dba2: lda #$00
	label_dba4: sta $2006
	label_dba7: lda #$00
	label_dba9: sta $2006
	label_dbac: inc $001b
	label_dbaf: rts
	lda $2002
	bpl $dbb0
	lda $2002
	bmi $dbb5
	lda $2002
	bpl $dbba
	inc $001b
	rts
	label_dbc3: lda #$3f
	label_dbc5: sta $2006
	label_dbc8: lda #$00
	label_dbca: sta $2006
	label_dbcd: lda #$0e
	label_dbcf: ldy $0020
	label_dbd2: sta $2007
	label_dbd5: dey
	label_dbd6: cpy #$00
	label_dbd8: bne label_dbd2
	label_dbda: jsr $db8e
	label_dbdd: lda #$20
	label_dbdf: sta $2006
	label_dbe2: lda #$00
	label_dbe4: sta $2006
	label_dbe7: jsr $dc1b
	label_dbea: jsr $db8e
	label_dbed: lda #$21
	label_dbef: sta $2006
	label_dbf2: lda #$00
	label_dbf4: sta $2006
	label_dbf7: jsr $dc1b
	label_dbfa: jsr $db8e
	label_dbfd: lda #$22
	label_dbff: sta $2006
	label_dc02: lda #$00
	label_dc04: sta $2006
	label_dc07: jsr $dc1b
	label_dc0a: jsr $db8e
	label_dc0d: lda #$23
	label_dc0f: sta $2006
	label_dc12: lda #$00
	label_dc14: sta $2006
	label_dc17: jsr $dc1b
	label_dc1a: rts
	label_dc1b: ldx #$00
	label_dc1d: sta $2007
	label_dc20: inx
	label_dc21: cpx #$00
	label_dc23: bne label_dc1d
	label_dc25: rts
	label_dc26: lda #$00
	label_dc28: sta $0066
	label_dc2b: lda #$00
	label_dc2d: sta $2003
	label_dc30: lda #$f5
	label_dc32: sta $2004
	label_dc35: inc $0066
	label_dc38: lda #$00
	label_dc3a: sta $0009
	label_dc3d: lda $0066
	label_dc40: cmp $0009
	label_dc43: beq $dc48
	label_dc45: jmp $dc30
	label_dc48: rts
	lda #$00
	sta $0066
	ldx $0066
	lda #$f5
	sta $0300,x
	inc $0066
	lda #$00
	sta $0009
	lda $0066
	cmp $0009
	beq $dc69
	jmp $dc4e
	rts
	rti
	irq:
	label_dc6b: lda #$05
	label_dc6d: sta $007e
	label_dc70: rts
	label_dc71: lda #$00
	label_dc73: sta $000e
	label_dc76: ldx $000e
	label_dc79: lda #$00
	label_dc7b: sta $0072,x
	label_dc7e: inc $000e
	label_dc81: lda #$0c
	label_dc83: sta $0009
	label_dc86: lda $000e
	label_dc89: cmp $0009
	label_dc8c: beq $dc91
	label_dc8e: jmp $dc76
	label_dc91: rts
	label_dc92: lda #$00
	label_dc94: sta $007f
	label_dc97: ldx $007f
	label_dc9a: lda $0072,x
	label_dc9d: sta $0080
	label_dca0: lda #$00
	label_dca2: sta $0009
	label_dca5: lda $0080
	label_dca8: cmp $0009
	label_dcab: beq $dcb0
	label_dcad: jmp $dd19
	label_dcb0: ldx $007f
	label_dcb3: lda $8070,x
	label_dcb6: sta $0081
	label_dcb9: ldx $007f
	label_dcbc: lda $807c,x
	label_dcbf: sta $0082
	label_dcc2: lda $0082
	label_dcc5: sta $0009
	label_dcc8: lda $000c
	label_dccb: sec
	label_dccc: sbc #$20
	label_dcce: lsr a
	label_dccf: lsr a
	label_dcd0: lsr a
	label_dcd1: lsr a
	label_dcd2: cmp $0009
	label_dcd5: beq $dcda
	label_dcd7: jmp $dd19
	label_dcda: lda $0081
	label_dcdd: sta $0009
	label_dce0: lda $005e
	label_dce3: cmp $0009
	label_dce6: bne label_dcf8
	label_dce8: lda #$06
	label_dcea: sta $0009
	label_dced: lda $005f
	label_dcf0: cmp $0009
	label_dcf3: bpl $dcf8
	label_dcf5: jmp $ddd8
	label_dcf8: lda $0081
	label_dcfb: sta $0009
	label_dcfe: lda $005e
	label_dd01: clc
	label_dd02: adc #$01
	label_dd04: cmp $0009
	label_dd07: bne label_dd19
	label_dd09: lda #$0a
	label_dd0b: sta $0009
	label_dd0e: lda $005f
	label_dd11: cmp $0009
	label_dd14: bmi $dd19
	label_dd16: jmp $ddd8
	label_dd19: inc $007f
	label_dd1c: lda #$0c
	label_dd1e: sta $0009
	label_dd21: lda $007f
	label_dd24: cmp $0009
	label_dd27: beq $dd2c
	label_dd29: jmp $dc97
	label_dd2c: rts
	label_dd2d: lda #$00
	label_dd2f: sta $0083
	label_dd32: ldx $0083
	label_dd35: lda $8044,x
	label_dd38: sta $0084
	label_dd3b: ldx $0083
	label_dd3e: lda $8049,x
	label_dd41: sta $0085
	label_dd44: lda $0085
	label_dd47: sta $0009
	label_dd4a: lda $000c
	label_dd4d: sec
	label_dd4e: sbc #$02
	label_dd50: lsr a
	label_dd51: lsr a
	label_dd52: lsr a
	label_dd53: lsr a
	label_dd54: cmp $0009
	label_dd57: beq $dd5c
	label_dd59: jmp $dd9b
	label_dd5c: lda $0084
	label_dd5f: sta $0009
	label_dd62: lda $005e
	label_dd65: cmp $0009
	label_dd68: bne label_dd7a
	label_dd6a: lda #$04
	label_dd6c: sta $0009
	label_dd6f: lda $005f
	label_dd72: cmp $0009
	label_dd75: bpl $dd7a
	label_dd77: jmp $ddb0
	label_dd7a: lda $0084
	label_dd7d: sta $0009
	label_dd80: lda $005e
	label_dd83: clc
	label_dd84: adc #$01
	label_dd86: cmp $0009
	label_dd89: bne label_dd9b
	label_dd8b: lda #$0c
	label_dd8d: sta $0009
	label_dd90: lda $005f
	label_dd93: cmp $0009
	label_dd96: bmi $dd9b
	label_dd98: jmp $ddb0
	label_dd9b: inc $0083
	label_dd9e: lda $007e
	label_dda1: sta $0009
	label_dda4: lda $0083
	label_dda7: cmp $0009
	label_ddaa: bpl $ddaf
	label_ddac: jmp $dd32
	label_ddaf: rts
	label_ddb0: jsr $c3eb
	label_ddb3: lda #$00
	label_ddb5: sta $0086
	label_ddb8: jsr $db8e
	label_ddbb: jsr $e679
	label_ddbe: jsr $de0d
	label_ddc1: inc $0086
	label_ddc4: lda #$15
	label_ddc6: sta $0009
	label_ddc9: lda $0086
	label_ddcc: cmp $0009
	label_ddcf: beq $ddd4
	label_ddd1: jmp $ddb8
	label_ddd4: jsr $c3eb
	label_ddd7: rts
	label_ddd8: ldx $007f
	label_dddb: lda #$01
	label_dddd: sta $0072,x
	label_dde0: ldx #$05
	label_dde2: lda #$08
	label_dde4: sta $00a4,x
	label_dde7: ldx #$05
	label_dde9: lda $0082
	label_ddec: asl a
	label_dded: asl a
	label_ddee: asl a
	label_ddef: asl a
	label_ddf0: sec
	label_ddf1: sbc #$08
	label_ddf3: sta $009e,x
	label_ddf6: ldx #$05
	label_ddf8: lda $0081
	label_ddfb: sta $0092,x
	label_ddfe: ldx #$05
	label_de00: lda #$00
	label_de02: sta $0098,x
	label_de05: ldx #$05
	label_de07: lda #$01
	label_de09: sta $00aa,x
	label_de0c: rts
	label_de0d: lda #$00
	label_de0f: sta $000e
	label_de12: lda #$00
	label_de14: sta $0087
	label_de17: inc $0087
	label_de1a: lda #$40
	label_de1c: sta $0009
	label_de1f: lda $0087
	label_de22: cmp $0009
	label_de25: beq $de2a
	label_de27: jmp $de17
	label_de2a: inc $000e
	label_de2d: lda #$11
	label_de2f: sta $0009
	label_de32: lda $000e
	label_de35: cmp $0009
	label_de38: beq $de3d
	label_de3a: jmp $de12
	label_de3d: rts
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
	bne label_e6b2
	jmp $e6dc
	lda #$03
	sta a: temp
	lda a: $90
	and #$03
	cmp a: temp
	bne label_e6c4
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
	bne label_e6ee
	jmp $e718
	lda #$0c
	sta a: temp
	lda a: $90
	and #$0c
	cmp a: temp
	bne label_e700
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
	bne label_e72a
	jmp $e754
	lda #$30
	sta a: temp
	lda a: $90
	and #$30
	cmp a: temp
	bne label_e73c
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
	bne label_e766
	jmp $e790
	lda #$c0
	sta a: temp
	lda a: $90
	and #$c0
	cmp a: temp
	bne label_e778
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
	bne label_e7c3
	lda a: $03
	cmp a: $8b
	bne label_e7c3
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
	bne label_e842
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
		bne label_e8c0
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
	bne label_e90e
	jsr $e960
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_e91e
	jsr $e960
	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_e92e
	jsr $ec12
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_e93e
	jsr $edca
	lda #$08
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_e94e
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
	bne label_e9ed
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne label_e9ea
	lda #$02
	sta a: $b3
	jmp $ea41
	lda #$01
	sta a: temp
	lda a: $b3
	cmp a: temp
	bne label_ea17
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
	bne label_ea41
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
	bne label_ea53
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
	bne label_eaaf
	jmp $ebb7
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_eabf
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
	bne label_ebb3
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
	bne label_ec8d
	lda #$01
	sta a: temp
	lda a: $b7
	cmp a: temp
	bne label_ec8a
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
	bne label_ece7
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
	bne label_ed11
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
	bne label_ed23
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
	bne label_edbe
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
	bne label_ee9c
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
	bne label_eebc
	lda #$08
	sta a: $b8
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_eece
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
	bne label_ef47
	lda #$01
	sta a: $b9
	lda a: $b4
	sta a: temp
	lda a: player_pos_x1
	clc
	adc #$01
	cmp a: temp
	bne label_ef6d
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
	bne label_ef93
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
	bne label_efa3
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
	bne label_efd5
	jmp $f067
	lda #$02
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_efe5
	jmp $f02d
	lda #$03
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_eff5
	jmp $f02d
	lda #$04
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_f005
	jmp $f02d
	lda #$06
	sta a: temp
	lda a: $b1
	cmp a: temp
	bne label_f015
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
	bne label_f082
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
	bne label_f0f7
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
	bne label_f164
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
	bne label_f1ff
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
	bne label_f26c
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
	bne label_f2b3
	lda #$0f
	sta a: $b5
	dec a: $b4
	rts
	inc a: $b5
	lda #$10
	sta a: temp
	lda a: $b5
	cmp a: temp
	bne label_f2cc
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
	bne label_f662
	lda #$01
	sta a: $bf
	lda #$82
	sta a: temp
	lda a: $be
	cmp a: temp
	bne label_f674
	lda #$ff
	sta a: $bf
	lda #$46
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne label_f686
	lda #$01
	sta a: $c0
	lda #$6e
	sta a: temp
	lda a: $bd
	cmp a: temp
	bne label_f698
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
	bne label_f6f6
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
	bne label_f72b
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
	bne label_f745
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
	bne label_f75f
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
	bne label_f779
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
	bne label_f795
	lda #$55
	sta PPU_VRAM_IO
	inx
	cpx #$40
	bne label_f79f
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
	bne label_f7d9
	rts
	lda PPU_STATUS
	bpl $f7e2
	rts
	lda PPU_STATUS
	bmi $f7e8
	rts
	lda PPU_STATUS
	and #$10
	bne label_f7ee
	ldy #$c8
	lda PPU_STATUS
	and #$10
	bne label_f7f7
	lda #$00
	sta PPU_VRAM_ADDR1
	sta PPU_VRAM_ADDR1
	dey
	cpy #$00
	bne label_f7f7
	ldx a: title_screen_wave_timer
	ldy #$ff
	lda PPU_STATUS
	and #$10
	bne label_f810
	lda $e4eb,x
	sta PPU_VRAM_ADDR1
	lda #$00
	sta PPU_VRAM_ADDR1
	inx
	dey
	cpy #$00
	bne label_f810
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
	bne label_f880
	lda #$00
	sta a: konami_code_correct_button_down
	inc a: konami_code_correct_presses
	rts
	lda #$00
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne label_f88e
	rts
	ldx a: konami_code_correct_presses
	lda $f908,x
	sta a: $c5
	lda a: $c5
	sta a: temp
	lda a: $c4
	cmp a: temp
	bne label_f8ab
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
