$c000:
	jsr $c35a
$c003:
	jsr $c236
$c006:
	jsr $db8e
$c009:
	jsr $db8e
$c00c:
	jsr $f5dd
$c00f:
	jsr $dbda
$c012:
	lda #$30
$c014:
	sta PpuControl_2000
$c017:
	lda #$04
$c019:
	sta PpuMask_2001
$c01c:
	jsr $dc26
$c01f:
	jsr $c1c2
$c022:
	jsr $db8e
$c025:
	lda #$30
$c027:
	sta PpuControl_2000
$c02a:
	lda #$1c
$c02c:
	sta PpuMask_2001
$c02f:
	lda #$00
$c031:
	sta $0006
$c034:
	jsr $c26a
$c037:
	lda #$00
$c039:
	sta $0007
$c03c:
	jsr $e5eb
$c03f:
	lda #$03
$c041:
	sta $0008
$c044:
	jsr $dc71
$c047:
	jsr $cabb
$c04a:
	jsr $d539
$c04d:
	jsr $c7ec
$c050:
	jsr $d2bb
$c053:
	jsr $e8ed
$c056:
	jsr $c24e
$c059:
	lda #$00
$c05b:
	sta $0009
$c05e:
	lda $000a
$c061:
	cmp $0009
$c064:
	beq $c069
$c066:
	jsr $e679
$c069:
	jsr $c17f
$c06c:
	jsr $e816
$c06f:
	jsr $db8e
$c072:
	jsr $db61
$c075:
	lda #$00
$c077:
	sta $0009
$c07a:
	lda $000b
$c07d:
	cmp $0009
$c080:
	beq $c085
$c082:
	jmp $c0e9
$c085:
	lda #$fc
$c087:
	sta $0009
$c08a:
	lda $000c
$c08d:
	and #$fc
$c08f:
	cmp $0009
$c092:
	bne $c0aa
$c094:
	jsr $c9e2
$c097:
	lda #$02
$c099:
	sta $0009
$c09c:
	lda $000c
$c09f:
	cmp $0009
$c0a2:
	bne $c0a7
$c0a4:
	jmp $c04a
$c0a7:
	jmp $c0cd
$c0aa:
	lda #$00
$c0ac:
	sta $0009
$c0af:
	lda $000a
$c0b2:
	cmp $0009
$c0b5:
	bne $c0ca
	lda #$00
	sta $0009
	lda $000d
	cmp $0009
	bne $c0ca
	jsr $cab7
	jmp $c0cd
$c0ca:
	jmp $c04a
$c0cd:
	lda #$00
$c0cf:
	sta $0009
$c0d2:
	lda $0008
$c0d5:
	cmp $0009
$c0d8:
	bne $c0e3
$c0da:
	jsr $da95
$c0dd:
	jsr $c3eb
$c0e0:
	jmp $c000
$c0e3:
	jsr $cabb
$c0e6:
	jmp $c04a
$c0e9:
	jsr $e7f4
$c0ec:
	jmp $c0ef
$c0ef:
	jsr $c241
$c0f2:
	lda #$1e
$c0f4:
	sta $000e
$c0f7:
	jsr $db8e
$c0fa:
	jsr $d5ed
$c0fd:
	dec $000e
$c100:
	lda #$00
$c102:
	sta $0009
$c105:
	lda $000e
$c108:
	cmp $0009
$c10b:
	beq $c110
$c10d:
	jmp $c0f7
$c110:
	jsr $d5c3
$c113:
	lda #$01
$c115:
	sta $000f
$c118:
	jsr $db8e
$c11b:
	jsr $d2bb
$c11e:
	jsr $db61
$c121:
	lda $000c
$c124:
	sec
$c125:
	sbc #$03
$c127:
	sta $000c
$c12a:
	lda #$00
$c12c:
	sta $0009
$c12f:
	lda $000c
$c132:
	and #$f8
$c134:
	cmp $0009
$c137:
	beq $c13c
$c139:
	jmp $c118
$c13c:
	lda #$1e
$c13e:
	sta $000e
$c141:
	jsr $db8e
$c144:
	jsr $d5ed
$c147:
	dec $000e
$c14a:
	lda #$00
$c14c:
	sta $0009
$c14f:
	lda $000e
$c152:
	cmp $0009
$c155:
	beq $c15a
$c157:
	jmp $c141
$c15a:
	jmp $c15d
$c15d:
	inc $0006
$c160:
	lda #$05
$c162:
	sta $0009
$c165:
	lda $0006
$c168:
	cmp $0009
$c16b:
	bne $c170
	jmp $d8b7
$c170:
	jsr $c26a
$c173:
	jsr $c1c2
$c176:
	jsr $dc71
$c179:
	jsr $cabb
$c17c:
	jmp $c04a
$c17f:
	lda $0004
$c182:
	pha
$c183:
	lda #$0d
$c185:
	pha
$c186:
	lda $0010
$c189:
	clc
$c18a:
	adc $0086
$c18d:
	sta $0011
$c190:
	pla
$c191:
	clc
$c192:
	adc $0011
$c195:
	sta $0011
$c198:
	pla
$c199:
	clc
$c19a:
	adc $0011
$c19d:
	sta $0004
$c1a0:
	lda $0005
$c1a3:
	pha
$c1a4:
	lda #$11
$c1a6:
	pha
$c1a7:
	lda $0012
$c1aa:
	clc
$c1ab:
	adc $005b
$c1ae:
	sta $0011
$c1b1:
	pla
$c1b2:
	clc
$c1b3:
	adc $0011
$c1b6:
	sta $0011
$c1b9:
	pla
$c1ba:
	clc
$c1bb:
	adc $0011
$c1be:
	sta $0005
$c1c1:
	rts
$c1c2:
	lda #$00
$c1c4:
	sta $0013
$c1c7:
	lda #$00
$c1c9:
	sta $0014
$c1cc:
	lda #$00
$c1ce:
	sta $0015
$c1d1:
	lda #$00
$c1d3:
	sta $0016
$c1d6:
	lda #$00
$c1d8:
	sta $0017
$c1db:
	lda #$00
$c1dd:
	sta $0018
$c1e0:
	lda #$00
$c1e2:
	sta $0019
$c1e5:
	lda #$00
$c1e7:
	sta $001a
$c1ea:
	lda #$00
$c1ec:
	sta $001b
$c1ef:
	lda #$01
$c1f1:
	sta $001c
$c1f4:
	lda #$00
$c1f6:
	sta $000e
$c1f9:
	lda #$00
$c1fb:
	sta $001d
$c1fe:
	lda #$00
$c200:
	sta $001e
$c203:
	lda #$00
$c205:
	sta $001f
$c208:
	lda #$00
$c20a:
	sta $0020
$c20d:
	lda #$00
$c20f:
	sta $0021
$c212:
	lda #$10
$c214:
	sta $0022
$c217:
	lda #$00
$c219:
	sta $000b
$c21c:
	lda #$00
$c21e:
	sta $0023
$c221:
	lda #$20
$c223:
	sta $0024
$c226:
	lda #$00
$c228:
	sta $0025
$c22b:
	lda #$00
$c22d:
	sta $0026
$c230:
	lda #$00
$c232:
	sta $0027
$c235:
	rts
$c236:
	lda #$00
$c238:
	sta ApuStatus_4015
$c23b:
	lda #$1f
$c23d:
	sta ApuStatus_4015
$c240:
	rts
$c241:
	ldx #$00
$c243:
	lda #$00
$c245:
	sta Sq0Duty_4000,x
$c248:
	inx
$c249:
	cpx #$10
$c24b:
	bne $c245
$c24d:
	rts
$c24e:
	lda #$0f
$c250:
	sta $0009
$c253:
	lda $0022
$c256:
	cmp $0009
$c259:
	bpl $c25c
$c25b:
	rts
$c25c:
	ldx $0022
$c25f:
	lda #$f5
$c261:
	sta $0300,x
$c264:
	inc $0022
$c267:
	jmp $c24e
$c26a:
	lda $0006
$c26d:
	asl a
$c26e:
	sta $0028
$c271:
	lda #$06
$c273:
	sta $8000
$c276:
	lda $0028
$c279:
	sta $8001
$c27c:
	lda #$07
$c27e:
	sta $8000
$c281:
	lda $0028
$c284:
	clc
$c285:
	adc #$01
$c287:
	sta $8001
$c28a:
	rts
$c28b:
	lda #$00
$c28d:
	sta $8000
$c290:
	lda #$08
$c292:
	sta $8001
$c295:
	lda #$01
$c297:
	sta $8000
$c29a:
	lda #$0a
$c29c:
	sta $8001
$c29f:
	lda $0006
$c2a2:
	asl a
$c2a3:
	asl a
$c2a4:
	clc
$c2a5:
	adc #$0c
$c2a7:
	sta $0028
$c2aa:
	lda #$02
$c2ac:
	sta $8000
$c2af:
	lda $0028
$c2b2:
	sta $8001
$c2b5:
	lda #$03
$c2b7:
	sta $8000
$c2ba:
	lda $0028
$c2bd:
	clc
$c2be:
	adc #$01
$c2c0:
	sta $8001
$c2c3:
	lda #$04
$c2c5:
	sta $8000
$c2c8:
	lda $0028
$c2cb:
	clc
$c2cc:
	adc #$02
$c2ce:
	sta $8001
$c2d1:
	lda #$05
$c2d3:
	sta $8000
$c2d6:
	lda $0028
$c2d9:
	clc
$c2da:
	adc #$03
$c2dc:
	sta $8001
$c2df:
	rts
$c2e0:
	lda #$00
$c2e2:
	sta $8000
$c2e5:
	lda #$04
$c2e7:
	sta $8001
$c2ea:
	lda #$01
$c2ec:
	sta $8000
$c2ef:
	lda #$06
$c2f1:
	sta $8001
$c2f4:
	lda #$02
$c2f6:
	sta $8000
$c2f9:
	lda #$04
$c2fb:
	sta $8001
$c2fe:
	lda #$03
$c300:
	sta $8000
$c303:
	lda #$05
$c305:
	sta $8001
$c308:
	lda #$04
$c30a:
	sta $8000
$c30d:
	lda #$06
$c30f:
	sta $8001
$c312:
	lda #$05
$c314:
	sta $8000
$c317:
	lda #$07
$c319:
	sta $8001
$c31c:
	rts
$c31d:
	lda #$00
$c31f:
	sta $8000
$c322:
	lda #$00
$c324:
	sta $8001
$c327:
	lda #$01
$c329:
	sta $8000
$c32c:
	lda #$02
$c32e:
	sta $8001
$c331:
	lda #$02
$c333:
	sta $8000
$c336:
	lda #$00
$c338:
	sta $8001
$c33b:
	lda #$03
$c33d:
	sta $8000
$c340:
	lda #$01
$c342:
	sta $8001
$c345:
	lda #$04
$c347:
	sta $8000
$c34a:
	lda #$02
$c34c:
	sta $8001
$c34f:
	lda #$05
$c351:
	sta $8000
$c354:
	lda #$03
$c356:
	sta $8001
$c359:
	rts
$c35a:
	jmp $c31d
	rts
$c35e:
	jsr $dc6b
$c361:
	jsr $db8e
$c364:
	jsr $dbc3
$c367:
	jsr $dc26
$c36a:
	jsr $db8e
$c36d:
	ldx #$00
$c36f:
	lda #$f5
$c371:
	sta $002a,x
$c374:
	sta $0032,x
$c377:
	sta $0042,x
$c37a:
	sta $004a,x
$c37d:
	sta $003a,x
$c380:
	inx
$c381:
	cpx #$08
$c383:
	bne $c371
$c385:
	lda #$07
$c387:
	sta $0052
$c38a:
	lda #$0b
$c38c:
	sta $0029
$c38f:
	jsr $db8e
$c392:
	lda #$07
$c394:
	sta $0052
$c397:
	jsr $db8e
$c39a:
	jsr $c4b4
$c39d:
	jsr $db8e
$c3a0:
	jsr $c5aa
$c3a3:
	jsr $db8e
$c3a6:
	jsr $c6a0
$c3a9:
	dec $0052
$c3ac:
	lda #$ff
$c3ae:
	sta $0009
$c3b1:
	lda $0052
$c3b4:
	cmp $0009
$c3b7:
	beq $c3bc
$c3b9:
	jmp $c397
$c3bc:
	lda #$00
$c3be:
	sta $0052
$c3c1:
	jsr $db8e
$c3c4:
	jsr $c706
$c3c7:
	inc $0052
$c3ca:
	lda #$05
$c3cc:
	sta $0009
$c3cf:
	lda $0052
$c3d2:
	cmp $0009
$c3d5:
	beq $c3da
$c3d7:
	jmp $c3c1
$c3da:
	jsr $db8e
$c3dd:
	jsr $c414
$c3e0:
	lda #$00
$c3e2:
	sta PpuScroll_2005
$c3e5:
	lda #$00
$c3e7:
	sta PpuScroll_2005
$c3ea:
	rts
$c3eb:
	jsr $db8e
$c3ee:
	lda #$01
$c3f0:
	sta $0009
$c3f3:
	lda $0053
$c3f6:
	cmp $0009
$c3f9:
	bne $c3ff
$c3fb:
	jsr $c47d
$c3fe:
	rts
$c3ff:
	lda #$03
$c401:
	sta $0009
$c404:
	lda $0053
$c407:
	cmp $0009
$c40a:
	bne $c410
$c40c:
	jsr $c414
$c40f:
	rts
$c410:
	jsr $c44b
$c413:
	rts
$c414:
	lda #$55
$c416:
	sta $0054
$c419:
	lda #$00
$c41b:
	sta $0053
$c41e:
	lda #$3f
$c420:
	sta PpuAddr_2006
$c423:
	lda #$00
$c425:
	sta PpuAddr_2006
$c428:
	lda #$00
$c42a:
	sta $000e
$c42d:
	ldx $000e
$c430:
	lda $8004,x
$c433:
	sta PpuData_2007
$c436:
	inc $000e
$c439:
	lda #$20
$c43b:
	sta $0009
$c43e:
	lda $000e
$c441:
	cmp $0009
$c444:
	bne $c447
$c446:
	rts
$c447:
	jmp $c42d
	rts
$c44b:
	lda #$01
$c44d:
	clc
$c44e:
	adc $0053
$c451:
	sta $0053
$c454:
	lda #$3f
$c456:
	sta PpuAddr_2006
$c459:
	lda #$00
$c45b:
	sta PpuAddr_2006
$c45e:
	lda #$00
$c460:
	sta $000e
$c463:
	lda #$0e
$c465:
	sta PpuData_2007
$c468:
	inc $000e
$c46b:
	lda #$20
$c46d:
	sta $0009
$c470:
	lda $000e
$c473:
	cmp $0009
$c476:
	bne $c479
$c478:
	rts
$c479:
	jmp $c463
	rts
$c47d:
	lda #$aa
$c47f:
	sta $0054
$c482:
	lda #$02
$c484:
	sta $0053
$c487:
	lda #$3f
$c489:
	sta PpuAddr_2006
$c48c:
	lda #$00
$c48e:
	sta PpuAddr_2006
$c491:
	lda #$00
$c493:
	sta $000e
$c496:
	ldx $000e
$c499:
	lda $8024,x
$c49c:
	sta PpuData_2007
$c49f:
	inc $000e
$c4a2:
	lda #$20
$c4a4:
	sta $0009
$c4a7:
	lda $000e
$c4aa:
	cmp $0009
$c4ad:
	bne $c4b0
$c4af:
	rts
$c4b0:
	jmp $c496
	rts
$c4b4:
	lda $0052
$c4b7:
	and #$07
$c4b9:
	sta $0055
$c4bc:
	ldx $0055
$c4bf:
	lda $002a,x
$c4c2:
	sta $0011
$c4c5:
	lda $0052
$c4c8:
	sta $0009
$c4cb:
	lda $0011
$c4ce:
	cmp $0009
$c4d1:
	bne $c4d4
$c4d3:
	rts
$c4d4:
	ldx $0055
$c4d7:
	lda $0052
$c4da:
	sta $002a,x
$c4dd:
	lda $0052
$c4e0:
	asl a
$c4e1:
	tax
$c4e2:
	lda $e13a,x
$c4e5:
	sta $0000
$c4e8:
	inx
$c4e9:
	lda $e13a,x
$c4ec:
	sta $0001
$c4ef:
	ldx $0055
$c4f2:
	lda $e10a,x
$c4f5:
	sta $0056
$c4f8:
	ldx $0055
$c4fb:
	lda $e112,x
$c4fe:
	sta $0057
$c501:
	ldy #$00
$c503:
	ldx #$00
$c505:
	lda $0056
$c508:
	sta PpuAddr_2006
$c50b:
	lda $0057
$c50e:
	sta PpuAddr_2006
$c511:
	lda ($00),y
$c513:
	sta PpuData_2007
$c516:
	adc #$01
$c518:
	sta PpuData_2007
$c51b:
	iny
$c51c:
	lda ($00),y
$c51e:
	sta PpuData_2007
$c521:
	adc #$01
$c523:
	sta PpuData_2007
$c526:
	iny
$c527:
	lda ($00),y
$c529:
	sta PpuData_2007
$c52c:
	adc #$01
$c52e:
	sta PpuData_2007
$c531:
	iny
$c532:
	lda ($00),y
$c534:
	sta PpuData_2007
$c537:
	adc #$01
$c539:
	sta PpuData_2007
$c53c:
	dey
$c53d:
	dey
$c53e:
	dey
$c53f:
	clc
$c540:
	lda $0057
$c543:
	adc #$20
$c545:
	sta $0057
$c548:
	lda $0056
$c54b:
	adc #$00
$c54d:
	sta $0056
$c550:
	lda $0056
$c553:
	sta PpuAddr_2006
$c556:
	lda $0057
$c559:
	sta PpuAddr_2006
$c55c:
	lda ($00),y
$c55e:
	adc #$10
$c560:
	sta PpuData_2007
$c563:
	adc #$01
$c565:
	sta PpuData_2007
$c568:
	iny
$c569:
	lda ($00),y
$c56b:
	adc #$10
$c56d:
	sta PpuData_2007
$c570:
	adc #$01
$c572:
	sta PpuData_2007
$c575:
	iny
$c576:
	lda ($00),y
$c578:
	adc #$10
$c57a:
	sta PpuData_2007
$c57d:
	adc #$01
$c57f:
	sta PpuData_2007
$c582:
	iny
$c583:
	lda ($00),y
$c585:
	adc #$10
$c587:
	sta PpuData_2007
$c58a:
	adc #$01
$c58c:
	sta PpuData_2007
$c58f:
	iny
$c590:
	clc
$c591:
	cpy #$20
$c593:
	beq $c5a9
$c595:
	clc
$c596:
	lda $0057
$c599:
	adc #$20
$c59b:
	sta $0057
$c59e:
	lda $0056
$c5a1:
	adc #$00
$c5a3:
	sta $0056
$c5a6:
	jmp $c505
$c5a9:
	rts
$c5aa:
	lda $0052
$c5ad:
	and #$07
$c5af:
	sta $0055
$c5b2:
	ldx $0055
$c5b5:
	lda $0032,x
$c5b8:
	sta $0011
$c5bb:
	lda $0052
$c5be:
	sta $0009
$c5c1:
	lda $0011
$c5c4:
	cmp $0009
$c5c7:
	bne $c5ca
$c5c9:
	rts
$c5ca:
	ldx $0055
$c5cd:
	lda $0052
$c5d0:
	sta $0032,x
$c5d3:
	lda $0052
$c5d6:
	asl a
$c5d7:
	tax
$c5d8:
	lda $e13a,x
$c5db:
	sta $0000
$c5de:
	inx
$c5df:
	lda $e13a,x
$c5e2:
	sta $0001
$c5e5:
	ldx $0055
$c5e8:
	lda $e11a,x
$c5eb:
	sta $0056
$c5ee:
	ldx $0055
$c5f1:
	lda $e122,x
$c5f4:
	sta $0057
$c5f7:
	ldy #$20
$c5f9:
	ldx #$00
$c5fb:
	lda $0056
$c5fe:
	sta PpuAddr_2006
$c601:
	lda $0057
$c604:
	sta PpuAddr_2006
$c607:
	lda ($00),y
$c609:
	sta PpuData_2007
$c60c:
	adc #$01
$c60e:
	sta PpuData_2007
$c611:
	iny
$c612:
	lda ($00),y
$c614:
	sta PpuData_2007
$c617:
	adc #$01
$c619:
	sta PpuData_2007
$c61c:
	iny
$c61d:
	lda ($00),y
$c61f:
	sta PpuData_2007
$c622:
	adc #$01
$c624:
	sta PpuData_2007
$c627:
	iny
$c628:
	lda ($00),y
$c62a:
	sta PpuData_2007
$c62d:
	adc #$01
$c62f:
	sta PpuData_2007
$c632:
	dey
$c633:
	dey
$c634:
	dey
$c635:
	clc
$c636:
	lda $0057
$c639:
	adc #$20
$c63b:
	sta $0057
$c63e:
	lda $0056
$c641:
	adc #$00
$c643:
	sta $0056
$c646:
	lda $0056
$c649:
	sta PpuAddr_2006
$c64c:
	lda $0057
$c64f:
	sta PpuAddr_2006
$c652:
	lda ($00),y
$c654:
	adc #$10
$c656:
	sta PpuData_2007
$c659:
	adc #$01
$c65b:
	sta PpuData_2007
$c65e:
	iny
$c65f:
	lda ($00),y
$c661:
	adc #$10
$c663:
	sta PpuData_2007
$c666:
	adc #$01
$c668:
	sta PpuData_2007
$c66b:
	iny
$c66c:
	lda ($00),y
$c66e:
	adc #$10
$c670:
	sta PpuData_2007
$c673:
	adc #$01
$c675:
	sta PpuData_2007
$c678:
	iny
$c679:
	lda ($00),y
$c67b:
	adc #$10
$c67d:
	sta PpuData_2007
$c680:
	adc #$01
$c682:
	sta PpuData_2007
$c685:
	iny
$c686:
	clc
$c687:
	cpy #$3c
$c689:
	beq $c69f
$c68b:
	clc
$c68c:
	lda $0057
$c68f:
	adc #$20
$c691:
	sta $0057
$c694:
	lda $0056
$c697:
	adc #$00
$c699:
	sta $0056
$c69c:
	jmp $c5fb
$c69f:
	rts
$c6a0:
	lda $0052
$c6a3:
	and #$07
$c6a5:
	sta $0055
$c6a8:
	ldx $0055
$c6ab:
	lda $003a,x
$c6ae:
	sta $0011
$c6b1:
	lda $0052
$c6b4:
	sta $0009
$c6b7:
	lda $0011
$c6ba:
	cmp $0009
$c6bd:
	bne $c6c0
$c6bf:
	rts
$c6c0:
	ldx $0055
$c6c3:
	lda $0052
$c6c6:
	sta $003a,x
$c6c9:
	ldx $0055
$c6cc:
	lda $e12a,x
$c6cf:
	sta $0056
$c6d2:
	ldx $0055
$c6d5:
	lda $e132,x
$c6d8:
	sta $0057
$c6db:
	ldy #$3c
$c6dd:
	lda $0056
$c6e0:
	sta PpuAddr_2006
$c6e3:
	lda $0057
$c6e6:
	sta PpuAddr_2006
$c6e9:
	lda ($00),y
$c6eb:
	sta PpuData_2007
$c6ee:
	iny
$c6ef:
	lda ($00),y
$c6f1:
	sta PpuData_2007
$c6f4:
	iny
$c6f5:
	cpy #$4c
$c6f7:
	beq $c705
$c6f9:
	clc
$c6fa:
	lda $0057
$c6fd:
	adc #$08
$c6ff:
	sta $0057
$c702:
	jmp $c6dd
$c705:
	rts
$c706:
	lda $0052
$c709:
	and #$07
$c70b:
	sta $0055
$c70e:
	ldx $0055
$c711:
	lda $0042,x
$c714:
	sta $0011
$c717:
	lda $0052
$c71a:
	sta $0009
$c71d:
	lda $0011
$c720:
	cmp $0009
$c723:
	bne $c726
$c725:
	rts
$c726:
	ldx $0055
$c729:
	lda $0052
$c72c:
	sta $0042,x
$c72f:
	lda $0052
$c732:
	asl a
$c733:
	tax
$c734:
	lda $e13a,x
$c737:
	sta $0000
$c73a:
	inx
$c73b:
	lda $e13a,x
$c73e:
	sta $0001
$c741:
	ldy #$4c
$c743:
	clc
$c744:
	lda $0052
$c747:
	asl a
$c748:
	asl a
$c749:
	asl a
$c74a:
	asl a
$c74b:
	asl a
$c74c:
	sta $0026
$c74f:
	tax
$c750:
	lda ($00),y
$c752:
	iny
$c753:
	sta $0011
$c756:
	and #$03
$c758:
	sta $0400,x
$c75b:
	lsr $0011
$c75e:
	lsr $0011
$c761:
	inx
$c762:
	lda $0011
$c765:
	and #$03
$c767:
	sta $0400,x
$c76a:
	lsr $0011
$c76d:
	lsr $0011
$c770:
	inx
$c771:
	lda $0011
$c774:
	and #$03
$c776:
	sta $0400,x
$c779:
	lsr $0011
$c77c:
	lsr $0011
$c77f:
	inx
$c780:
	lda $0011
$c783:
	and #$03
$c785:
	sta $0400,x
$c788:
	lsr $0011
$c78b:
	lsr $0011
$c78e:
	inx
$c78f:
	cpy #$54
$c791:
	bne $c750
$c793:
	ldy #$54
$c795:
	clc
$c796:
	lda $0052
$c799:
	asl a
$c79a:
	asl a
$c79b:
	asl a
$c79c:
	asl a
$c79d:
	asl a
$c79e:
	sta $0026
$c7a1:
	tax
$c7a2:
	lda ($00),y
$c7a4:
	iny
$c7a5:
	sta $0011
$c7a8:
	and #$03
$c7aa:
	sta $0200,x
$c7ad:
	lsr $0011
$c7b0:
	lsr $0011
$c7b3:
	inx
$c7b4:
	lda $0011
$c7b7:
	and #$03
$c7b9:
	sta $0200,x
$c7bc:
	lsr $0011
$c7bf:
	lsr $0011
$c7c2:
	inx
$c7c3:
	lda $0011
$c7c6:
	and #$03
$c7c8:
	sta $0200,x
$c7cb:
	lsr $0011
$c7ce:
	lsr $0011
$c7d1:
	inx
$c7d2:
	lda $0011
$c7d5:
	and #$03
$c7d7:
	sta $0200,x
$c7da:
	lsr $0011
$c7dd:
	lsr $0011
$c7e0:
	inx
$c7e1:
	cpy #$5c
$c7e3:
	bne $c7a2
$c7e5:
	nop
$c7e6:
	nop
$c7e7:
	nop
$c7e8:
	nop
$c7e9:
	nop
$c7ea:
	nop
$c7eb:
	rts
$c7ec:
	lda #$00
$c7ee:
	sta $0058
$c7f1:
	lda #$00
$c7f3:
	sta $0059
$c7f6:
	lda #$00
$c7f8:
	sta $0012
$c7fb:
	lda #$00
$c7fd:
	sta $005a
$c800:
	lda #$00
$c802:
	sta $0009
$c805:
	lda $001a
$c808:
	cmp $0009
$c80b:
	beq $c810
	jsr $c99e
$c810:
	lda #$00
$c812:
	sta $0009
$c815:
	lda $0015
$c818:
	cmp $0009
$c81b:
	beq $c820
$c81d:
	jsr $dd2d
$c820:
	lda #$00
$c822:
	sta $0009
$c825:
	lda $000a
$c828:
	cmp $0009
$c82b:
	bne $c850
	lda #$00
	sta $0009
	lda $001c
	cmp $0009
	bne $c83d
	jsr $d204
	lda #$01
	sta $0009
	lda $001c
	cmp $0009
	bne $c84d
	jsr $d255
	jmp $c984
$c850:
	lda #$00
$c852:
	sta $0009
$c855:
	lda $0016
$c858:
	cmp $0009
$c85b:
	beq $c862
$c85d:
	lda #$01
$c85f:
	sta $0012
$c862:
	lda #$00
$c864:
	sta $0009
$c867:
	lda $0017
$c86a:
	cmp $0009
$c86d:
	beq $c88c
$c86f:
	lda #$01
$c871:
	sta $001c
$c874:
	jsr $cbaa
$c877:
	lda #$00
$c879:
	sta $0009
$c87c:
	lda $0014
$c87f:
	cmp $0009
$c882:
	beq $c887
$c884:
	jsr $cbaa
$c887:
	lda #$01
$c889:
	sta $0059
$c88c:
	lda #$00
$c88e:
	sta $0009
$c891:
	lda $0018
$c894:
	cmp $0009
$c897:
	beq $c8b6
$c899:
	lda #$00
$c89b:
	sta $001c
$c89e:
	jsr $ccfa
$c8a1:
	lda #$00
$c8a3:
	sta $0009
$c8a6:
	lda $0014
$c8a9:
	cmp $0009
$c8ac:
	beq $c8b1
$c8ae:
	jsr $ccfa
$c8b1:
	lda #$01
$c8b3:
	sta $0059
$c8b6:
	lda #$00
$c8b8:
	sta $0009
$c8bb:
	lda $0013
$c8be:
	cmp $0009
$c8c1:
	bne $c8dd
$c8c3:
	lda #$00
$c8c5:
	sta $0009
$c8c8:
	lda $005b
$c8cb:
	cmp $0009
$c8ce:
	beq $c8d5
$c8d0:
	lda #$0a
$c8d2:
	sta $0010
$c8d5:
	lda #$00
$c8d7:
	sta $005b
$c8da:
	jmp $c984
$c8dd:
	lda #$00
$c8df:
	sta $0009
$c8e2:
	lda $0013
$c8e5:
	cmp $0009
$c8e8:
	beq $c90c
$c8ea:
	lda #$01
$c8ec:
	sta $0009
$c8ef:
	lda $005c
$c8f2:
	cmp $0009
$c8f5:
	bne $c90c
	lda #$23
	sta $0010
	lda #$01
	sta $000f
	lda #$01
	sta $005a
	jsr $d5d8
	jmp $c984
$c90c:
	lda #$00
$c90e:
	sta $0009
$c911:
	lda $0013
$c914:
	cmp $0009
$c917:
	beq $c92c
$c919:
	lda #$00
$c91b:
	sta $0009
$c91e:
	lda $005b
$c921:
	cmp $0009
$c924:
	beq $c92c
$c926:
	dec $005b
$c929:
	jmp $c984
$c92c:
	lda #$00
$c92e:
	sta $0009
$c931:
	lda $0013
$c934:
	cmp $0009
$c937:
	beq $c984
$c939:
	lda #$00
$c93b:
	sta $0009
$c93e:
	lda $005d
$c941:
	cmp $0009
$c944:
	beq $c984
$c946:
	jsr $d584
$c949:
	lda #$01
$c94b:
	sta $000f
$c94e:
	lda #$28
$c950:
	sta $0010
$c953:
	lda #$03
$c955:
	sta $0009
$c958:
	lda $0006
$c95b:
	cmp $0009
$c95e:
	bne $c965
$c960:
	lda #$2d
$c962:
	sta $0010
$c965:
	lda #$00
$c967:
	sta $0009
$c96a:
	lda $0012
$c96d:
	cmp $0009
$c970:
	beq $c977
$c972:
	lda #$26
$c974:
	sta $0010
$c977:
	lda #$00
$c979:
	sta $005d
$c97c:
	lda #$0f
$c97e:
	sta $005b
$c981:
	jmp $c984
$c984:
	jsr $cb8c
$c987:
	lda #$00
$c989:
	sta $0009
$c98c:
	lda $000d
$c98f:
	cmp $0009
$c992:
	beq $c997
$c994:
	dec $000d
$c997:
	jsr $ee7e
$c99a:
	jsr $d4d9
$c99d:
	rts
	lda #$00
	sta ApuStatus_4015
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
	bne $c9c9
	jmp $c9b6
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	beq $c9dc
	jmp $c9c9
	lda #$0f
	sta ApuStatus_4015
	rts
$c9e2:
	lda $805c
$c9e5:
	sta $0009
$c9e8:
	lda $005e
$c9eb:
	cmp $0009
$c9ee:
	bne $c9f3
	jmp $ca36
$c9f3:
	lda $805d
$c9f6:
	sta $0009
$c9f9:
	lda $005e
$c9fc:
	cmp $0009
$c9ff:
	bne $ca04
$ca01:
	jmp $ca36
$ca04:
	lda $805e
$ca07:
	sta $0009
$ca0a:
	lda $005e
$ca0d:
	cmp $0009
$ca10:
	bne $ca15
	jmp $ca36
$ca15:
	lda #$00
$ca17:
	sta $000e
$ca1a:
	jsr $db8e
$ca1d:
	jsr $d5ed
$ca20:
	inc $000e
$ca23:
	lda #$1e
$ca25:
	sta $0009
$ca28:
	lda $000e
$ca2b:
	cmp $0009
$ca2e:
	beq $ca33
$ca30:
	jmp $ca1a
$ca33:
	jmp $cab7
$ca36:
	jsr $dc26
$ca39:
	lda $805f
$ca3c:
	sta $0009
$ca3f:
	lda $005e
$ca42:
	cmp $0009
$ca45:
	beq $ca6c
$ca47:
	jsr $e679
$ca4a:
	jsr $d204
$ca4d:
	jsr $d204
$ca50:
	jsr $d204
$ca53:
	jsr $db8e
$ca56:
	lda #$00
$ca58:
	sta $0009
$ca5b:
	lda $0058
$ca5e:
	cmp $0009
$ca61:
	beq $ca66
$ca63:
	jsr $d629
$ca66:
	jsr $d5ed
$ca69:
	jmp $ca39
$ca6c:
	lda #$02
$ca6e:
	sta $000c
$ca71:
	rts
$ca72:
	lda #$00
$ca74:
	sta $0009
$ca77:
	lda $000d
$ca7a:
	cmp $0009
$ca7d:
	beq $ca80
$ca7f:
	rts
$ca80:
	lda #$96
$ca82:
	sta $000d
$ca85:
	lda #$01
$ca87:
	sta $000f
$ca8a:
	lda #$0a
$ca8c:
	sta $0010
$ca8f:
	dec $000a
$ca92:
	lda #$ff
$ca94:
	sta $0009
$ca97:
	lda $000a
$ca9a:
	cmp $0009
$ca9d:
	bne $caa4
	lda #$00
	sta $000a
$caa4:
	lda #$00
$caa6:
	sta $0009
$caa9:
	lda $000a
$caac:
	cmp $0009
$caaf:
	bne $cab6
	lda #$37
	sta $0010
$cab6:
	rts
$cab7:
	dec $0008
$caba:
	rts
$cabb:
	jsr $c241
$cabe:
	jsr $dbc3
$cac1:
	jsr $dbda
$cac4:
	lda #$03
$cac6:
	sta $000a
$cac9:
	lda #$64
$cacb:
	sta $000d
$cace:
	lda #$01
$cad0:
	sta $001c
$cad3:
	lda #$0a
$cad5:
	sta $000c
$cad8:
	lda #$00
$cada:
	sta $005f
$cadd:
	lda #$02
$cadf:
	sta $005e
$cae2:
	lda #$01
$cae4:
	sta $0009
$cae7:
	lda $0027
$caea:
	cmp $0009
$caed:
	bne $caf5
$caef:
	lda $8059
$caf2:
	sta $005e
$caf5:
	lda #$00
$caf7:
	sta $0010
$cafa:
	lda #$00
$cafc:
	sta $000f
$caff:
	lda #$ff
$cb01:
	sta $0060
$cb04:
	jsr $d825
$cb07:
	lda #$00
$cb09:
	sta $0061
$cb0c:
	jsr $db8e
$cb0f:
	inc $0061
$cb12:
	lda #$78
$cb14:
	sta $0009
$cb17:
	lda $0061
$cb1a:
	cmp $0009
$cb1d:
	bpl $cb22
$cb1f:
	jmp $cb0c
$cb22:
	lda #$00
$cb24:
	sta $0061
$cb27:
	jsr $dbc3
$cb2a:
	jsr $c35e
$cb2d:
	lda #$00
$cb2f:
	sta $0007
$cb32:
	jsr $e5eb
$cb35:
	lda #$0f
$cb37:
	sta ApuStatus_4015
$cb3a:
	lda #$00
$cb3c:
	sta $001e
$cb3f:
	lda #$00
$cb41:
	sta $001f
$cb44:
	lda #$00
$cb46:
	sta $0020
$cb49:
	lda #$00
$cb4b:
	sta $0021
$cb4e:
	lda $0020
$cb51:
	sta $0009
$cb54:
	lda $005e
$cb57:
	sec
$cb58:
	sbc #$06
$cb5a:
	cmp $0009
$cb5d:
	bmi $cb75
$cb5f:
	jsr $d6e5
$cb62:
	lda #$00
$cb64:
	sta $0009
$cb67:
	lda $0058
$cb6a:
	cmp $0009
$cb6d:
	beq $cb72
$cb6f:
	jsr $d629
$cb72:
	jmp $cb4e
$cb75:
	jsr $c28b
$cb78:
	jsr $db8e
$cb7b:
	jsr $e7c4
$cb7e:
	lda #$00
$cb80:
	sta $005d
$cb83:
	lda #$00
$cb85:
	sta $0025
$cb88:
	jsr $d2bb
$cb8b:
	rts
$cb8c:
	ldx $0010
$cb8f:
	lda $e040,x
$cb92:
	sta $0062
$cb95:
	lda #$01
$cb97:
	sta $0009
$cb9a:
	lda $000f
$cb9d:
	cmp $0009
$cba0:
	bne $cba6
$cba2:
	jmp $ce4a
	rts
$cba6:
	jmp $d023
	rts
$cbaa:
	lda #$03
$cbac:
	sta $0009
$cbaf:
	lda $005f
$cbb2:
	cmp $0009
$cbb5:
	bpl $cbba
$cbb7:
	jmp $d204
$cbba:
	lda $005e
$cbbd:
	asl a
$cbbe:
	asl a
$cbbf:
	asl a
$cbc0:
	clc
$cbc1:
	adc #$08
$cbc3:
	sta $0063
$cbc6:
	lda #$7f
$cbc8:
	sta $0009
$cbcb:
	lda $000c
$cbce:
	cmp $0009
$cbd1:
	bmi $cc2b
$cbd3:
	lda #$81
$cbd5:
	sta $0009
$cbd8:
	lda $000c
$cbdb:
	cmp $0009
$cbde:
	bpl $cc2b
$cbe0:
	ldx $0063
$cbe3:
	lda $0200,x
$cbe6:
	sta $0064
$cbe9:
	lda #$00
$cbeb:
	sta $0009
$cbee:
	lda $0064
$cbf1:
	and $0054
$cbf4:
	cmp $0009
$cbf7:
	beq $cbfa
$cbf9:
	rts
$cbfa:
	lda #$00
$cbfc:
	sta $0009
$cbff:
	lda $0012
$cc02:
	cmp $0009
$cc05:
	beq $cc0a
$cc07:
	jmp $d204
$cc0a:
	lda $0063
$cc0d:
	clc
$cc0e:
	adc #$06
$cc10:
	tax
$cc11:
	lda $0400,x
$cc14:
	sta $0064
$cc17:
	lda #$00
$cc19:
	sta $0009
$cc1c:
	lda $0064
$cc1f:
	and $0054
$cc22:
	cmp $0009
$cc25:
	beq $cc28
$cc27:
	rts
$cc28:
	jmp $d204
$cc2b:
	lda #$7f
$cc2d:
	sta $0009
$cc30:
	lda $000c
$cc33:
	cmp $0009
$cc36:
	bpl $cc97
$cc38:
	lda $000c
$cc3b:
	lsr a
$cc3c:
	lsr a
$cc3d:
	lsr a
$cc3e:
	lsr a
$cc3f:
	sta $0065
$cc42:
	lda $0063
$cc45:
	clc
$cc46:
	adc $0065
$cc49:
	sta $0066
$cc4c:
	ldx $0066
$cc4f:
	lda $0400,x
$cc52:
	sta $0064
$cc55:
	lda #$00
$cc57:
	sta $0009
$cc5a:
	lda $0064
$cc5d:
	and $0054
$cc60:
	cmp $0009
$cc63:
	beq $cc66
$cc65:
	rts
$cc66:
	lda #$00
$cc68:
	sta $0009
$cc6b:
	lda $0012
$cc6e:
	cmp $0009
$cc71:
	beq $cc76
$cc73:
	jmp $d204
$cc76:
	lda $0066
$cc79:
	sec
$cc7a:
	sbc #$01
$cc7c:
	tax
$cc7d:
	lda $0400,x
$cc80:
	sta $0064
$cc83:
	lda #$00
$cc85:
	sta $0009
$cc88:
	lda $0064
$cc8b:
	and $0054
$cc8e:
	cmp $0009
$cc91:
	beq $cc94
$cc93:
	rts
$cc94:
	jmp $d204
$cc97:
	lda $000c
$cc9a:
	sec
$cc9b:
	sbc #$70
$cc9d:
	lsr a
$cc9e:
	lsr a
$cc9f:
	lsr a
$cca0:
	lsr a
$cca1:
	sta $0065
$cca4:
	lda $0063
$cca7:
	clc
$cca8:
	adc $0065
$ccab:
	sta $0066
$ccae:
	ldx $0066
$ccb1:
	lda $0200,x
$ccb4:
	sta $0064
$ccb7:
	lda #$00
$ccb9:
	sta $0009
$ccbc:
	lda $0064
$ccbf:
	and $0054
$ccc2:
	cmp $0009
$ccc5:
	beq $ccc8
$ccc7:
	rts
$ccc8:
	lda #$00
$ccca:
	sta $0009
$cccd:
	lda $0012
$ccd0:
	cmp $0009
$ccd3:
	beq $ccd8
$ccd5:
	jmp $d204
$ccd8:
	lda $0066
$ccdb:
	sec
$ccdc:
	sbc #$01
$ccde:
	tax
$ccdf:
	lda $0200,x
$cce2:
	sta $0064
$cce5:
	lda #$00
$cce7:
	sta $0009
$ccea:
	lda $0064
$cced:
	and $0054
$ccf0:
	cmp $0009
$ccf3:
	beq $ccf6
$ccf5:
	rts
$ccf6:
	jsr $d204
$ccf9:
	rts
$ccfa:
	lda #$00
$ccfc:
	sta $0009
$ccff:
	lda $005f
$cd02:
	cmp $0009
$cd05:
	beq $cd0a
$cd07:
	jmp $d255
$cd0a:
	lda $005e
$cd0d:
	sec
$cd0e:
	sbc #$01
$cd10:
	asl a
$cd11:
	asl a
$cd12:
	asl a
$cd13:
	sta $0063
$cd16:
	lda #$7f
$cd18:
	sta $0009
$cd1b:
	lda $000c
$cd1e:
	cmp $0009
$cd21:
	bmi $cd7b
$cd23:
	lda #$81
$cd25:
	sta $0009
$cd28:
	lda $000c
$cd2b:
	cmp $0009
$cd2e:
	bpl $cd7b
$cd30:
	ldx $0063
$cd33:
	lda $0200,x
$cd36:
	sta $0067
$cd39:
	lda #$00
$cd3b:
	sta $0009
$cd3e:
	lda $0067
$cd41:
	and $0054
$cd44:
	cmp $0009
$cd47:
	beq $cd4a
$cd49:
	rts
$cd4a:
	lda #$00
$cd4c:
	sta $0009
$cd4f:
	lda $0012
$cd52:
	cmp $0009
$cd55:
	beq $cd5a
	jmp $d255
$cd5a:
	lda $0063
$cd5d:
	clc
$cd5e:
	adc #$06
$cd60:
	tax
$cd61:
	lda $0400,x
$cd64:
	sta $0067
$cd67:
	lda #$00
$cd69:
	sta $0009
$cd6c:
	lda $0067
$cd6f:
	and $0054
$cd72:
	cmp $0009
$cd75:
	beq $cd78
$cd77:
	rts
$cd78:
	jmp $d255
$cd7b:
	lda #$7f
$cd7d:
	sta $0009
$cd80:
	lda $000c
$cd83:
	cmp $0009
$cd86:
	bpl $cde7
$cd88:
	lda $000c
$cd8b:
	lsr a
$cd8c:
	lsr a
$cd8d:
	lsr a
$cd8e:
	lsr a
$cd8f:
	sta $0065
$cd92:
	lda $0063
$cd95:
	clc
$cd96:
	adc $0065
$cd99:
	sta $0066
$cd9c:
	ldx $0066
$cd9f:
	lda $0400,x
$cda2:
	sta $0067
$cda5:
	lda #$00
$cda7:
	sta $0009
$cdaa:
	lda $0067
$cdad:
	and $0054
$cdb0:
	cmp $0009
$cdb3:
	beq $cdb6
$cdb5:
	rts
$cdb6:
	lda #$00
$cdb8:
	sta $0009
$cdbb:
	lda $0012
$cdbe:
	cmp $0009
$cdc1:
	beq $cdc6
$cdc3:
	jmp $d255
$cdc6:
	lda $0066
$cdc9:
	sec
$cdca:
	sbc #$01
$cdcc:
	tax
$cdcd:
	lda $0400,x
$cdd0:
	sta $0067
$cdd3:
	lda #$00
$cdd5:
	sta $0009
$cdd8:
	lda $0067
$cddb:
	and $0054
$cdde:
	cmp $0009
$cde1:
	beq $cde4
$cde3:
	rts
$cde4:
	jmp $d255
$cde7:
	lda $000c
$cdea:
	clc
$cdeb:
	adc #$90
$cded:
	lsr a
$cdee:
	lsr a
$cdef:
	lsr a
$cdf0:
	lsr a
$cdf1:
	sta $0065
$cdf4:
	lda $0063
$cdf7:
	clc
$cdf8:
	adc $0065
$cdfb:
	sta $0066
$cdfe:
	ldx $0066
$ce01:
	lda $0200,x
$ce04:
	sta $0067
$ce07:
	lda #$00
$ce09:
	sta $0009
$ce0c:
	lda $0067
$ce0f:
	and $0054
$ce12:
	cmp $0009
$ce15:
	beq $ce18
$ce17:
	rts
$ce18:
	lda #$00
$ce1a:
	sta $0009
$ce1d:
	lda $0012
$ce20:
	cmp $0009
$ce23:
	beq $ce28
$ce25:
	jmp $d255
$ce28:
	lda $0066
$ce2b:
	sec
$ce2c:
	sbc #$01
$ce2e:
	tax
$ce2f:
	lda $0200,x
$ce32:
	sta $0067
$ce35:
	lda #$00
$ce37:
	sta $0009
$ce3a:
	lda $0067
$ce3d:
	and $0054
$ce40:
	cmp $0009
$ce43:
	beq $ce46
$ce45:
	rts
$ce46:
	jmp $d255
	rts
$ce4a:
	lda #$00
$ce4c:
	sta $0009
$ce4f:
	lda $000c
$ce52:
	and #$f8
$ce54:
	cmp $0009
$ce57:
	bne $ce6f
$ce59:
	dec $0010
$ce5c:
	lda #$00
$ce5e:
	sta $0009
$ce61:
	lda $0010
$ce64:
	cmp $0009
$ce67:
	bne $ce6e
$ce69:
	lda #$00
$ce6b:
	sta $000f
$ce6e:
	rts
$ce6f:
	lda #$00
$ce71:
	sta $0009
$ce74:
	lda $000a
$ce77:
	cmp $0009
$ce7a:
	bne $ce9f
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
	bne $ce9e
	lda #$00
	sta $000f
	rts
$ce9f:
	lda $005e
$cea2:
	asl a
$cea3:
	asl a
$cea4:
	asl a
$cea5:
	sta $0063
$cea8:
	lda #$97
$ceaa:
	sta $0009
$cead:
	lda $000c
$ceb0:
	cmp $0009
$ceb3:
	bmi $ceb8
$ceb5:
	jmp $cf71
$ceb8:
	lda $000c
$cebb:
	pha
$cebc:
	lda #$e8
$cebe:
	sec
$cebf:
	sbc $0062
$cec2:
	sta $0011
$cec5:
	pla
$cec6:
	clc
$cec7:
	adc $0011
$ceca:
	lsr a
$cecb:
	lsr a
$cecc:
	lsr a
$cecd:
	lsr a
$cece:
	sta $0065
$ced1:
	lda #$00
$ced3:
	sta $0009
$ced6:
	lda $0012
$ced9:
	cmp $0009
$cedc:
	beq $cef7
$cede:
	lda $000c
$cee1:
	pha
$cee2:
	lda #$ef
$cee4:
	sec
$cee5:
	sbc $0062
$cee8:
	sta $0011
$ceeb:
	pla
$ceec:
	clc
$ceed:
	adc $0011
$cef0:
	lsr a
$cef1:
	lsr a
$cef2:
	lsr a
$cef3:
	lsr a
$cef4:
	sta $0065
$cef7:
	lda $0063
$cefa:
	clc
$cefb:
	adc $0065
$cefe:
	sta $0066
$cf01:
	ldx $0066
$cf04:
	lda $0400,x
$cf07:
	sta $0067
$cf0a:
	lda #$00
$cf0c:
	sta $0009
$cf0f:
	lda $0067
$cf12:
	and $0054
$cf15:
	cmp $0009
$cf18:
	beq $cf1d
$cf1a:
	jmp $d01a
$cf1d:
	lda #$00
$cf1f:
	sta $0064
$cf22:
	lda #$04
$cf24:
	sta $0009
$cf27:
	lda $005f
$cf2a:
	cmp $0009
$cf2d:
	bmi $cf3e
$cf2f:
	beq $cf3e
$cf31:
	lda $0066
$cf34:
	clc
$cf35:
	adc #$08
$cf37:
	tax
$cf38:
	lda $0400,x
$cf3b:
	sta $0064
$cf3e:
	lda #$00
$cf40:
	sta $0009
$cf43:
	lda $0064
$cf46:
	and $0054
$cf49:
	cmp $0009
$cf4c:
	beq $cf51
$cf4e:
	jmp $d01a
$cf51:
	lda $000c
$cf54:
	sec
$cf55:
	sbc $0062
$cf58:
	sta $000c
$cf5b:
	dec $0010
$cf5e:
	lda #$00
$cf60:
	sta $0009
$cf63:
	lda $0010
$cf66:
	cmp $0009
$cf69:
	bne $cf70
$cf6b:
	lda #$00
$cf6d:
	sta $000f
$cf70:
	rts
$cf71:
	lda $000c
$cf74:
	clc
$cf75:
	adc #$79
$cf77:
	sec
$cf78:
	sbc $0062
$cf7b:
	lsr a
$cf7c:
	lsr a
$cf7d:
	lsr a
$cf7e:
	lsr a
$cf7f:
	sta $0065
$cf82:
	lda #$00
$cf84:
	sta $0009
$cf87:
	lda $0012
$cf8a:
	cmp $0009
$cf8d:
	beq $cfa0
$cf8f:
	lda $000c
$cf92:
	clc
$cf93:
	adc #$7f
$cf95:
	sec
$cf96:
	sbc $0062
$cf99:
	lsr a
$cf9a:
	lsr a
$cf9b:
	lsr a
$cf9c:
	lsr a
$cf9d:
	sta $0065
$cfa0:
	lda $0063
$cfa3:
	clc
$cfa4:
	adc $0065
$cfa7:
	sta $0066
$cfaa:
	ldx $0066
$cfad:
	lda $0200,x
$cfb0:
	sta $0067
$cfb3:
	lda #$00
$cfb5:
	sta $0009
$cfb8:
	lda $0067
$cfbb:
	and $0054
$cfbe:
	cmp $0009
$cfc1:
	beq $cfc6
$cfc3:
	jmp $d01a
$cfc6:
	lda #$00
$cfc8:
	sta $0064
$cfcb:
	lda #$04
$cfcd:
	sta $0009
$cfd0:
	lda $005f
$cfd3:
	cmp $0009
$cfd6:
	bmi $cfe7
$cfd8:
	beq $cfe7
$cfda:
	lda $0066
$cfdd:
	clc
$cfde:
	adc #$08
$cfe0:
	tax
$cfe1:
	lda $0200,x
$cfe4:
	sta $0064
$cfe7:
	lda #$00
$cfe9:
	sta $0009
$cfec:
	lda $0064
$cfef:
	and $0054
$cff2:
	cmp $0009
$cff5:
	beq $cffa
$cff7:
	jmp $d01a
$cffa:
	lda $000c
$cffd:
	sec
$cffe:
	sbc $0062
$d001:
	sta $000c
$d004:
	dec $0010
$d007:
	lda #$00
$d009:
	sta $0009
$d00c:
	lda $0010
$d00f:
	cmp $0009
$d012:
	bne $d019
$d014:
	lda #$00
$d016:
	sta $000f
$d019:
	rts
$d01a:
	lda #$00
$d01c:
	sta $000f
$d01f:
	jsr $dc92
$d022:
	rts
$d023:
	lda #$00
$d025:
	sta $0009
$d028:
	lda $000a
$d02b:
	cmp $0009
$d02e:
	bne $d05d
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
$d05d:
	lda $005e
$d060:
	asl a
$d061:
	asl a
$d062:
	asl a
$d063:
	sta $0063
$d066:
	lda #$e8
$d068:
	sta $0009
$d06b:
	lda $000c
$d06e:
	and #$f8
$d070:
	cmp $0009
$d073:
	bne $d080
$d075:
	lda $000c
$d078:
	clc
$d079:
	adc $0062
$d07c:
	sta $000c
$d07f:
	rts
$d080:
	lda #$f0
$d082:
	sta $0009
$d085:
	lda $000c
$d088:
	and #$f0
$d08a:
	cmp $0009
$d08d:
	bne $d09a
$d08f:
	lda $000c
$d092:
	clc
$d093:
	adc $0062
$d096:
	sta $000c
$d099:
	rts
$d09a:
	lda #$7f
$d09c:
	sta $0009
$d09f:
	lda $000c
$d0a2:
	cmp $0009
$d0a5:
	bmi $d0aa
$d0a7:
	jmp $d144
$d0aa:
	lda $000c
$d0ad:
	clc
$d0ae:
	adc $0062
$d0b1:
	lsr a
$d0b2:
	lsr a
$d0b3:
	lsr a
$d0b4:
	lsr a
$d0b5:
	sta $0065
$d0b8:
	lda $0063
$d0bb:
	clc
$d0bc:
	adc $0065
$d0bf:
	sta $0066
$d0c2:
	ldx $0066
$d0c5:
	lda $0400,x
$d0c8:
	sta $0067
$d0cb:
	lda #$00
$d0cd:
	sta $0009
$d0d0:
	lda $0067
$d0d3:
	and $0054
$d0d6:
	cmp $0009
$d0d9:
	beq $d0de
$d0db:
	jmp $d1e1
$d0de:
	lda #$00
$d0e0:
	sta $0064
$d0e3:
	lda #$04
$d0e5:
	sta $0009
$d0e8:
	lda $005f
$d0eb:
	cmp $0009
$d0ee:
	bmi $d0ff
$d0f0:
	beq $d0ff
$d0f2:
	lda $0066
$d0f5:
	clc
$d0f6:
	adc #$08
$d0f8:
	tax
$d0f9:
	lda $0400,x
$d0fc:
	sta $0064
$d0ff:
	lda #$00
$d101:
	sta $0009
$d104:
	lda $0064
$d107:
	and $0054
$d10a:
	cmp $0009
$d10d:
	beq $d112
$d10f:
	jmp $d1e1
$d112:
	lda $000c
$d115:
	clc
$d116:
	adc $0062
$d119:
	sta $000c
$d11c:
	lda #$00
$d11e:
	sta $0009
$d121:
	lda $0062
$d124:
	cmp $0009
$d127:
	beq $d12e
$d129:
	lda #$00
$d12b:
	sta $000f
$d12e:
	lda #$3c
$d130:
	sta $0009
$d133:
	lda $0010
$d136:
	cmp $0009
$d139:
	bpl $d13e
$d13b:
	inc $0010
$d13e:
	lda #$00
$d140:
	sta $005d
$d143:
	rts
$d144:
	lda $000c
$d147:
	clc
$d148:
	adc $0062
$d14b:
	clc
$d14c:
	adc #$90
$d14e:
	lsr a
$d14f:
	lsr a
$d150:
	lsr a
$d151:
	lsr a
$d152:
	sta $0065
$d155:
	lda $0063
$d158:
	clc
$d159:
	adc $0065
$d15c:
	sta $0066
$d15f:
	ldx $0066
$d162:
	lda $0200,x
$d165:
	sta $0067
$d168:
	lda #$00
$d16a:
	sta $0009
$d16d:
	lda $0067
$d170:
	and $0054
$d173:
	cmp $0009
$d176:
	beq $d17b
$d178:
	jmp $d1e1
$d17b:
	lda #$00
$d17d:
	sta $0064
$d180:
	lda #$04
$d182:
	sta $0009
$d185:
	lda $005f
$d188:
	cmp $0009
$d18b:
	bmi $d19c
$d18d:
	beq $d19c
$d18f:
	lda $0066
$d192:
	clc
$d193:
	adc #$08
$d195:
	tax
$d196:
	lda $0200,x
$d199:
	sta $0064
$d19c:
	lda #$00
$d19e:
	sta $0009
$d1a1:
	lda $0064
$d1a4:
	and $0054
$d1a7:
	cmp $0009
$d1aa:
	beq $d1af
$d1ac:
	jmp $d1e1
$d1af:
	lda $000c
$d1b2:
	clc
$d1b3:
	adc $0062
$d1b6:
	sta $000c
$d1b9:
	lda #$00
$d1bb:
	sta $0009
$d1be:
	lda $0062
$d1c1:
	cmp $0009
$d1c4:
	beq $d1cb
$d1c6:
	lda #$00
$d1c8:
	sta $000f
$d1cb:
	lda #$3c
$d1cd:
	sta $0009
$d1d0:
	lda $0010
$d1d3:
	cmp $0009
$d1d6:
	bpl $d1db
$d1d8:
	inc $0010
$d1db:
	lda #$00
$d1dd:
	sta $005d
$d1e0:
	rts
$d1e1:
	lda #$02
$d1e3:
	sta $000f
$d1e6:
	lda #$11
$d1e8:
	sta $0009
$d1eb:
	lda $0010
$d1ee:
	cmp $0009
$d1f1:
	bmi $d1f9
$d1f3:
	lda #$0c
$d1f5:
	sta $0010
$d1f8:
	rts
$d1f9:
	lda #$00
$d1fb:
	sta $0010
$d1fe:
	lda #$01
$d200:
	sta $005d
$d203:
	rts
$d204:
	lda $8058
$d207:
	sta $0009
$d20a:
	lda $005e
$d20d:
	cmp $0009
$d210:
	bne $d213
	rts
$d213:
	lda $8059
$d216:
	sta $0009
$d219:
	lda $005e
$d21c:
	cmp $0009
$d21f:
	bne $d226
$d221:
	lda #$01
$d223:
	sta $0027
$d226:
	inc $005f
$d229:
	lda #$10
$d22b:
	sta $0009
$d22e:
	lda $005f
$d231:
	cmp $0009
$d234:
	bne $d23e
$d236:
	lda #$00
$d238:
	sta $005f
$d23b:
	inc $005e
$d23e:
	lda #$0a
$d240:
	sta $0009
$d243:
	lda $005e
$d246:
	sec
$d247:
	sbc $0020
$d24a:
	cmp $0009
$d24d:
	bmi $d254
$d24f:
	beq $d254
$d251:
	jsr $d6e5
$d254:
	rts
$d255:
	lda #$00
$d257:
	sta $0009
$d25a:
	lda $005e
$d25d:
	cmp $0009
$d260:
	bne $d270
$d262:
	lda #$08
$d264:
	sta $0009
$d267:
	lda $005f
$d26a:
	cmp $0009
$d26d:
	bpl $d270
$d26f:
	rts
$d270:
	lda $805a
$d273:
	sta $0009
$d276:
	lda $005e
$d279:
	cmp $0009
$d27c:
	bne $d28c
$d27e:
	lda #$01
$d280:
	sta $0009
$d283:
	lda $005f
$d286:
	cmp $0009
$d289:
	bpl $d28c
$d28b:
	rts
$d28c:
	dec $005f
$d28f:
	lda #$ff
$d291:
	sta $0009
$d294:
	lda $005f
$d297:
	cmp $0009
$d29a:
	bne $d2a4
$d29c:
	lda #$0f
$d29e:
	sta $005f
$d2a1:
	dec $005e
$d2a4:
	lda #$06
$d2a6:
	sta $0009
$d2a9:
	lda $005e
$d2ac:
	sec
$d2ad:
	sbc $0020
$d2b0:
	cmp $0009
$d2b3:
	bpl $d2ba
$d2b5:
	beq $d2ba
$d2b7:
	jsr $d773
$d2ba:
	rts
$d2bb:
	lda #$20
$d2bd:
	sta $0024
$d2c0:
	inc $0025
$d2c3:
	lda #$00
$d2c5:
	sta $0009
$d2c8:
	lda $0025
$d2cb:
	and #$08
$d2cd:
	cmp $0009
$d2d0:
	beq $d2d7
$d2d2:
	lda #$28
$d2d4:
	sta $0024
$d2d7:
	lda #$00
$d2d9:
	sta $0009
$d2dc:
	lda $0059
$d2df:
	cmp $0009
$d2e2:
	bne $d2e9
$d2e4:
	lda #$00
$d2e6:
	sta $0025
$d2e9:
	lda #$02
$d2eb:
	sta $0009
$d2ee:
	lda $000f
$d2f1:
	cmp $0009
$d2f4:
	beq $d2fb
$d2f6:
	lda #$30
$d2f8:
	sta $0024
$d2fb:
	lda #$00
$d2fd:
	sta $0009
$d300:
	lda $0012
$d303:
	cmp $0009
$d306:
	beq $d30d
$d308:
	lda #$38
$d30a:
	sta $0024
$d30d:
	lda $000c
$d310:
	sec
$d311:
	sbc #$20
$d313:
	sta $0068
$d316:
	lda $005e
$d319:
	sec
$d31a:
	sbc $0020
$d31d:
	asl a
$d31e:
	asl a
$d31f:
	asl a
$d320:
	asl a
$d321:
	pha
$d322:
	lda $005f
$d325:
	sec
$d326:
	sbc $0021
$d329:
	sta $0011
$d32c:
	pla
$d32d:
	clc
$d32e:
	adc $0011
$d331:
	sec
$d332:
	sbc #$01
$d334:
	sta $0069
$d337:
	lda #$01
$d339:
	sta $006a
$d33c:
	lda #$00
$d33e:
	sta $0009
$d341:
	lda $000d
$d344:
	cmp $0009
$d347:
	beq $d351
$d349:
	lda $000d
$d34c:
	and #$03
$d34e:
	sta $006a
$d351:
	lda #$00
$d353:
	sta $0009
$d356:
	lda $005a
$d359:
	cmp $0009
$d35c:
	beq $d391
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
$d391:
	lda #$01
$d393:
	sta $0009
$d396:
	lda $001c
$d399:
	cmp $0009
$d39c:
	bne $d3a1
$d39e:
	jmp $d3a4
$d3a1:
	jmp $d43a
$d3a4:
	ldx #$00
$d3a6:
	lda $0068
$d3a9:
	sta $0300,x
$d3ac:
	ldx #$01
$d3ae:
	lda $0024
$d3b1:
	sta $0300,x
$d3b4:
	ldx #$02
$d3b6:
	lda $006a
$d3b9:
	sta $0300,x
$d3bc:
	ldx #$03
$d3be:
	lda $0069
$d3c1:
	sta $0300,x
$d3c4:
	ldx #$04
$d3c6:
	lda #$10
$d3c8:
	clc
$d3c9:
	adc $0068
$d3cc:
	sta $0300,x
$d3cf:
	ldx #$05
$d3d1:
	lda #$02
$d3d3:
	clc
$d3d4:
	adc $0024
$d3d7:
	sta $0300,x
$d3da:
	ldx #$06
$d3dc:
	lda $006a
$d3df:
	sta $0300,x
$d3e2:
	ldx #$07
$d3e4:
	lda $0069
$d3e7:
	sta $0300,x
$d3ea:
	ldx #$08
$d3ec:
	lda $0068
$d3ef:
	sta $0300,x
$d3f2:
	ldx #$09
$d3f4:
	lda #$04
$d3f6:
	clc
$d3f7:
	adc $0024
$d3fa:
	sta $0300,x
$d3fd:
	ldx #$0a
$d3ff:
	lda $006a
$d402:
	sta $0300,x
$d405:
	ldx #$0b
$d407:
	lda #$08
$d409:
	clc
$d40a:
	adc $0069
$d40d:
	sta $0300,x
$d410:
	ldx #$0c
$d412:
	lda #$10
$d414:
	clc
$d415:
	adc $0068
$d418:
	sta $0300,x
$d41b:
	ldx #$0d
$d41d:
	lda #$06
$d41f:
	clc
$d420:
	adc $0024
$d423:
	sta $0300,x
$d426:
	ldx #$0e
$d428:
	lda $006a
$d42b:
	sta $0300,x
$d42e:
	ldx #$0f
$d430:
	lda #$08
$d432:
	clc
$d433:
	adc $0069
$d436:
	sta $0300,x
$d439:
	rts
$d43a:
	lda $006a
$d43d:
	clc
$d43e:
	adc #$40
$d440:
	sta $006a
$d443:
	ldx #$00
$d445:
	lda $0068
$d448:
	sta $0300,x
$d44b:
	ldx #$01
$d44d:
	lda #$04
$d44f:
	clc
$d450:
	adc $0024
$d453:
	sta $0300,x
$d456:
	ldx #$02
$d458:
	lda $006a
$d45b:
	sta $0300,x
$d45e:
	ldx #$03
$d460:
	lda $0069
$d463:
	sta $0300,x
$d466:
	ldx #$04
$d468:
	lda #$10
$d46a:
	clc
$d46b:
	adc $0068
$d46e:
	sta $0300,x
$d471:
	ldx #$05
$d473:
	lda #$06
$d475:
	clc
$d476:
	adc $0024
$d479:
	sta $0300,x
$d47c:
	ldx #$06
$d47e:
	lda $006a
$d481:
	sta $0300,x
$d484:
	ldx #$07
$d486:
	lda $0069
$d489:
	sta $0300,x
$d48c:
	ldx #$08
$d48e:
	lda $0068
$d491:
	sta $0300,x
$d494:
	ldx #$09
$d496:
	lda $0024
$d499:
	sta $0300,x
$d49c:
	ldx #$0a
$d49e:
	lda $006a
$d4a1:
	sta $0300,x
$d4a4:
	ldx #$0b
$d4a6:
	lda #$08
$d4a8:
	clc
$d4a9:
	adc $0069
$d4ac:
	sta $0300,x
$d4af:
	ldx #$0c
$d4b1:
	lda #$10
$d4b3:
	clc
$d4b4:
	adc $0068
$d4b7:
	sta $0300,x
$d4ba:
	ldx #$0d
$d4bc:
	lda #$02
$d4be:
	clc
$d4bf:
	adc $0024
$d4c2:
	sta $0300,x
$d4c5:
	ldx #$0e
$d4c7:
	lda $006a
$d4ca:
	sta $0300,x
$d4cd:
	ldx #$0f
$d4cf:
	lda #$08
$d4d1:
	clc
$d4d2:
	adc $0069
$d4d5:
	sta $0300,x
$d4d8:
	rts
$d4d9:
	lda #$00
$d4db:
	sta $000e
$d4de:
	lda $000a
$d4e1:
	sta $0009
$d4e4:
	lda $000e
$d4e7:
	cmp $0009
$d4ea:
	bmi $d4ed
$d4ec:
	rts
$d4ed:
	ldx $0022
$d4f0:
	lda #$08
$d4f2:
	sta $0300,x
$d4f5:
	lda #$01
$d4f7:
	clc
$d4f8:
	adc $0022
$d4fb:
	tax
$d4fc:
	lda #$02
$d4fe:
	sta $0300,x
$d501:
	lda #$02
$d503:
	clc
$d504:
	adc $0022
$d507:
	tax
$d508:
	lda #$02
$d50a:
	sta $0300,x
$d50d:
	lda #$03
$d50f:
	clc
$d510:
	adc $0022
$d513:
	tax
$d514:
	lda #$10
$d516:
	pha
$d517:
	lda $000e
$d51a:
	asl a
$d51b:
	asl a
$d51c:
	asl a
$d51d:
	sta $0011
$d520:
	pla
$d521:
	clc
$d522:
	adc $0011
$d525:
	sta $0300,x
$d528:
	lda $0022
$d52b:
	clc
$d52c:
	adc #$04
$d52e:
	sta $0022
$d531:
	inc $000e
$d534:
	jmp $d4de
	rts
	rts
$d539:
	lda #$01
$d53b:
	sta Ctrl1_4016
$d53e:
	lda #$00
$d540:
	sta Ctrl1_4016
$d543:
	lda Ctrl1_4016
$d546:
	and #$01
$d548:
	sta $0013
$d54b:
	lda Ctrl1_4016
$d54e:
	and #$01
$d550:
	sta $0014
$d553:
	lda Ctrl1_4016
$d556:
	and #$01
$d558:
	sta $0019
$d55b:
	lda Ctrl1_4016
$d55e:
	and #$01
$d560:
	sta $001a
$d563:
	lda Ctrl1_4016
$d566:
	and #$01
$d568:
	sta $0015
$d56b:
	lda Ctrl1_4016
$d56e:
	and #$01
$d570:
	sta $0016
$d573:
	lda Ctrl1_4016
$d576:
	and #$01
$d578:
	sta $0018
$d57b:
	lda Ctrl1_4016
$d57e:
	and #$01
$d580:
	sta $0017
$d583:
	rts
$d584:
	lda #$9f
$d586:
	sta Sq1Duty_4004
$d589:
	lda #$8c
$d58b:
	sta Sq1Sweep_4005
$d58e:
	lda #$4d
$d590:
	sta Sq1Timer_4006
$d593:
	lda #$95
$d595:
	sta Sq1Length_4007
$d598:
	rts
	lda #$9f
	sta Sq0Duty_4000
	lda #$84
	sta Sq0Sweep_4001
	lda #$d3
	sta Sq0Timer_4002
	lda #$fc
	sta Sq0Length_4003
	rts
	lda #$88
	sta Sq0Duty_4000
	lda #$48
	sta Sq0Sweep_4001
	lda #$25
	sta Sq0Timer_4002
	lda #$4b
	sta Sq0Length_4003
	rts
$d5c3:
	lda #$0b
$d5c5:
	sta NoiseVolume_400C
$d5c8:
	lda #$ff
$d5ca:
	sta $400d
$d5cd:
	lda #$ff
$d5cf:
	sta NoisePeriod_400E
$d5d2:
	lda #$08
$d5d4:
	sta NoiseLength_400F
$d5d7:
	rts
	lda #$0f
	sta NoiseVolume_400C
	lda #$ff
	sta $400d
	lda #$f9
	sta NoisePeriod_400E
	lda #$08
	sta NoiseLength_400F
	rts
$d5ed:
	lda #$00
$d5ef:
	sta $0009
$d5f2:
	lda $001e
$d5f5:
	and #$04
$d5f7:
	cmp $0009
$d5fa:
	beq $d609
$d5fc:
	lda #$31
$d5fe:
	sta PpuControl_2000
$d601:
	lda #$1c
$d603:
	sta PpuMask_2001
$d606:
	jmp $d613
$d609:
	lda #$30
$d60b:
	sta PpuControl_2000
$d60e:
	lda #$1c
$d610:
	sta PpuMask_2001
$d613:
	lda $001e
$d616:
	asl a
$d617:
	asl a
$d618:
	asl a
$d619:
	asl a
$d61a:
	asl a
$d61b:
	asl a
$d61c:
	clc
$d61d:
	adc $001f
$d620:
	sta PpuScroll_2005
$d623:
	lda #$00
$d625:
	sta PpuScroll_2005
$d628:
	rts
$d629:
	lda #$00
$d62b:
	sta $0009
$d62e:
	lda $0058
$d631:
	cmp $0009
$d634:
	bne $d637
$d636:
	rts
$d637:
	lda #$06
$d639:
	sta $0009
$d63c:
	lda $0058
$d63f:
	cmp $0009
$d642:
	bmi $d647
$d644:
	jmp $d696
$d647:
	lda $001e
$d64a:
	clc
$d64b:
	adc #$05
$d64d:
	sta $0052
$d650:
	lda #$01
$d652:
	sta $0009
$d655:
	lda $0058
$d658:
	cmp $0009
$d65b:
	bne $d660
$d65d:
	jsr $c4b4
$d660:
	lda #$03
$d662:
	sta $0009
$d665:
	lda $0058
$d668:
	cmp $0009
$d66b:
	bne $d670
$d66d:
	jsr $c5aa
$d670:
	lda #$04
$d672:
	sta $0009
$d675:
	lda $0058
$d678:
	cmp $0009
$d67b:
	bne $d680
$d67d:
	jsr $c6a0
$d680:
	lda #$05
$d682:
	sta $0009
$d685:
	lda $0058
$d688:
	cmp $0009
$d68b:
	bne $d690
$d68d:
	jsr $c706
$d690:
	lda #$00
$d692:
	sta $0058
$d695:
	rts
$d696:
	lda $001e
$d699:
	sec
$d69a:
	sbc #$01
$d69c:
	sta $0052
$d69f:
	lda #$06
$d6a1:
	sta $0009
$d6a4:
	lda $0058
$d6a7:
	cmp $0009
$d6aa:
	bne $d6af
$d6ac:
	jsr $c4b4
$d6af:
	lda #$08
$d6b1:
	sta $0009
$d6b4:
	lda $0058
$d6b7:
	cmp $0009
$d6ba:
	bne $d6bf
$d6bc:
	jsr $c5aa
$d6bf:
	lda #$09
$d6c1:
	sta $0009
$d6c4:
	lda $0058
$d6c7:
	cmp $0009
$d6ca:
	bne $d6cf
$d6cc:
	jsr $c6a0
$d6cf:
	lda #$0a
$d6d1:
	sta $0009
$d6d4:
	lda $0058
$d6d7:
	cmp $0009
$d6da:
	bne $d6df
$d6dc:
	jsr $c706
$d6df:
	lda #$00
$d6e1:
	sta $0058
$d6e4:
	rts
$d6e5:
	lda $805b
$d6e8:
	sta $0009
$d6eb:
	lda $0020
$d6ee:
	cmp $0009
$d6f1:
	bne $d6f9
$d6f3:
	lda #$01
$d6f5:
	sta $000b
$d6f8:
	rts
$d6f9:
	inc $0021
$d6fc:
	lda #$10
$d6fe:
	sta $0009
$d701:
	lda $0021
$d704:
	cmp $0009
$d707:
	bne $d711
$d709:
	lda #$00
$d70b:
	sta $0021
$d70e:
	inc $0020
$d711:
	lda #$3f
$d713:
	sta $0009
$d716:
	lda $001f
$d719:
	cmp $0009
$d71c:
	bne $d727
$d71e:
	lda #$00
$d720:
	sta $001f
$d723:
	inc $001e
$d726:
	rts
$d727:
	inc $001f
$d72a:
	lda #$0a
$d72c:
	sta $0009
$d72f:
	lda $001f
$d732:
	cmp $0009
$d735:
	bne $d73c
$d737:
	lda #$01
$d739:
	sta $0058
$d73c:
	lda #$1e
$d73e:
	sta $0009
$d741:
	lda $001f
$d744:
	cmp $0009
$d747:
	bne $d74e
$d749:
	lda #$03
$d74b:
	sta $0058
$d74e:
	lda #$28
$d750:
	sta $0009
$d753:
	lda $001f
$d756:
	cmp $0009
$d759:
	bne $d760
$d75b:
	lda #$04
$d75d:
	sta $0058
$d760:
	lda #$32
$d762:
	sta $0009
$d765:
	lda $001f
$d768:
	cmp $0009
$d76b:
	bne $d772
$d76d:
	lda #$05
$d76f:
	sta $0058
$d772:
	rts
$d773:
	lda #$00
$d775:
	sta $0009
$d778:
	lda $001e
$d77b:
	cmp $0009
$d77e:
	bne $d78e
$d780:
	lda #$01
$d782:
	sta $0009
$d785:
	lda $001f
$d788:
	cmp $0009
$d78b:
	bpl $d78e
$d78d:
	rts
$d78e:
	lda $805b
$d791:
	sta $0009
$d794:
	lda $0020
$d797:
	cmp $0009
$d79a:
	bne $d79d
	rts
$d79d:
	dec $0021
$d7a0:
	lda #$ff
$d7a2:
	sta $0009
$d7a5:
	lda $0021
$d7a8:
	cmp $0009
$d7ab:
	bne $d7b5
$d7ad:
	lda #$0f
$d7af:
	sta $0021
$d7b2:
	dec $0020
$d7b5:
	lda #$00
$d7b7:
	sta $0009
$d7ba:
	lda $001f
$d7bd:
	cmp $0009
$d7c0:
	bne $d7cb
$d7c2:
	lda #$3f
$d7c4:
	sta $001f
$d7c7:
	dec $001e
$d7ca:
	rts
$d7cb:
	dec $001f
$d7ce:
	lda #$00
$d7d0:
	sta $0009
$d7d3:
	lda $001e
$d7d6:
	cmp $0009
$d7d9:
	bne $d7dc
$d7db:
	rts
$d7dc:
	lda #$08
$d7de:
	sta $0009
$d7e1:
	lda $001f
$d7e4:
	cmp $0009
$d7e7:
	bne $d7ee
$d7e9:
	lda #$06
$d7eb:
	sta $0058
$d7ee:
	lda #$1c
$d7f0:
	sta $0009
$d7f3:
	lda $001f
$d7f6:
	cmp $0009
$d7f9:
	bne $d800
$d7fb:
	lda #$08
$d7fd:
	sta $0058
$d800:
	lda #$26
$d802:
	sta $0009
$d805:
	lda $001f
$d808:
	cmp $0009
$d80b:
	bne $d812
$d80d:
	lda #$09
$d80f:
	sta $0058
$d812:
	lda #$30
$d814:
	sta $0009
$d817:
	lda $001f
$d81a:
	cmp $0009
$d81d:
	bne $d824
$d81f:
	lda #$0a
$d821:
	sta $0058
$d824:
	rts
$d825:
	jsr $dae9
$d828:
	lda #$21
$d82a:
	sta PpuAddr_2006
$d82d:
	lda #$08
$d82f:
	sta PpuAddr_2006
$d832:
	ldx #$00
$d834:
	lda $bfb8,x
$d837:
	sta PpuData_2007
$d83a:
	inx
$d83b:
	cpx #$20
$d83d:
	bne $d834
$d83f:
	lda #$21
$d841:
	sta PpuAddr_2006
$d844:
	lda #$68
$d846:
	sta PpuAddr_2006
$d849:
	ldx #$00
$d84b:
	lda $bfd8,x
$d84e:
	sta PpuData_2007
$d851:
	inx
$d852:
	cpx #$20
$d854:
	bne $d84b
$d856:
	jsr $db8e
$d859:
	lda $0008
$d85c:
	sta $000e
$d85f:
	lda #$22
$d861:
	sta PpuAddr_2006
$d864:
	lda #$04
$d866:
	sta PpuAddr_2006
$d869:
	lda #$ee
$d86b:
	sta PpuData_2007
$d86e:
	lda #$ef
$d870:
	sta PpuData_2007
$d873:
	dec $000e
$d876:
	lda #$00
$d878:
	sta $0009
$d87b:
	lda $000e
$d87e:
	cmp $0009
$d881:
	beq $d886
$d883:
	jmp $d869
$d886:
	lda $0008
$d889:
	sta $000e
$d88c:
	lda #$22
$d88e:
	sta PpuAddr_2006
$d891:
	lda #$24
$d893:
	sta PpuAddr_2006
$d896:
	lda #$fe
$d898:
	sta PpuData_2007
$d89b:
	lda #$ff
$d89d:
	sta PpuData_2007
$d8a0:
	dec $000e
$d8a3:
	lda #$00
$d8a5:
	sta $0009
$d8a8:
	lda $000e
$d8ab:
	cmp $0009
$d8ae:
	beq $d8b3
$d8b0:
	jmp $d896
$d8b3:
	jsr $db09
$d8b6:
	rts
	jsr $dae9
	jsr $db8e
	lda #$20
	sta PpuAddr_2006
	lda #$48
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e401,x
	sta PpuData_2007
	inc $000e
	lda #$0f
	sta $0009
	lda $000e
	cmp $0009
	beq $d8e8
	jmp $d8cc
	jsr $db8e
	lda #$20
	sta PpuAddr_2006
	lda #$ab
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e410,x
	sta PpuData_2007
	inc $000e
	lda #$08
	sta $0009
	lda $000e
	cmp $0009
	beq $d916
	jmp $d8fa
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$01
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e419,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d944
	jmp $d928
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$61
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e437,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d972
	jmp $d956
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$a1
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e455,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9a0
	jmp $d984
	jsr $db8e
	lda #$21
	sta PpuAddr_2006
	lda #$e1
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e473,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9ce
	jmp $d9b2
	jsr $db8e
	lda #$22
	sta PpuAddr_2006
	lda #$21
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e491,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $d9fc
	jmp $d9e0
	jsr $db8e
	lda #$22
	sta PpuAddr_2006
	lda #$61
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e4af,x
	sta PpuData_2007
	inc $000e
	lda #$1e
	sta $0009
	lda $000e
	cmp $0009
	beq $da2a
	jmp $da0e
	jsr $db8e
	lda #$22
	sta PpuAddr_2006
	lda #$a1
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e4cd,x
	sta PpuData_2007
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
	sta PpuScroll_2005
	lda #$00
	sta PpuScroll_2005
	jsr $db8e
	jsr $d539
	lda #$00
	sta $0009
	lda $001a
	cmp $0009
	bne $da7e
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
$da95:
	jsr $dae9
$da98:
	lda #$21
$da9a:
	sta PpuAddr_2006
$da9d:
	lda #$08
$da9f:
	sta PpuAddr_2006
$daa2:
	lda #$00
$daa4:
	sta $000e
$daa7:
	ldx $000e
$daaa:
	lda $e3f8,x
$daad:
	sta PpuData_2007
$dab0:
	inc $000e
$dab3:
	lda #$09
$dab5:
	sta $0009
$dab8:
	lda $000e
$dabb:
	cmp $0009
$dabe:
	beq $dac3
$dac0:
	jmp $daa7
$dac3:
	jsr $db09
$dac6:
	jsr $c241
$dac9:
	lda #$c8
$dacb:
	sta $0071
$dace:
	jsr $dad2
$dad1:
	rts
$dad2:
	jsr $db8e
$dad5:
	dec $0071
$dad8:
	lda #$00
$dada:
	sta $0009
$dadd:
	lda $0071
$dae0:
	cmp $0009
$dae3:
	beq $dae8
$dae5:
	jmp $dad2
$dae8:
	rts
$dae9:
	jsr $db80
$daec:
	jsr $c2e0
$daef:
	jsr $db8e
$daf2:
	jsr $dbda
$daf5:
	jsr $db8e
$daf8:
	jsr $dc26
$dafb:
	jsr $db8e
$dafe:
	lda #$00
$db00:
	sta PpuScroll_2005
$db03:
	lda #$00
$db05:
	sta PpuScroll_2005
$db08:
	rts
$db09:
	lda #$3f
$db0b:
	sta PpuAddr_2006
$db0e:
	lda #$00
$db10:
	sta PpuAddr_2006
$db13:
	lda #$00
$db15:
	sta $000e
$db18:
	ldx $000e
$db1b:
	lda $e25a,x
$db1e:
	sta PpuData_2007
$db21:
	inc $000e
$db24:
	lda #$10
$db26:
	sta $0009
$db29:
	lda $000e
$db2c:
	cmp $0009
$db2f:
	bne $db32
$db31:
	rts
$db32:
	jmp $db18
	lda #$3f
	sta PpuAddr_2006
	lda #$00
	sta PpuAddr_2006
	lda #$00
	sta $000e
	ldx $000e
	lda $e000,x
	sta PpuData_2007
	inc $000e
	lda #$20
	sta $0009
	lda $000e
	cmp $0009
	bne $db5e
	rts
	jmp $db44
$db61:
	jsr $d629
$db64:
	jsr $d5ed
$db67:
	lda #$03
$db69:
	sta SpriteDma_4014
$db6c:
	lda #$10
$db6e:
	sta $0022
$db71:
	rts
	jsr $db8e
	lda #$30
	sta PpuControl_2000
	lda #$1c
	sta PpuMask_2001
	rts
$db80:
	jsr $db8e
$db83:
	lda #$20
$db85:
	sta PpuControl_2000
$db88:
	lda #$1c
$db8a:
	sta PpuMask_2001
$db8d:
	rts
$db8e:
	lda PpuStatus_2002
$db91:
	bpl $db8e
$db93:
	lda PpuStatus_2002
$db96:
	bmi $db93
$db98:
	lda #$00
$db9a:
	sta PpuScroll_2005
$db9d:
	lda #$00
$db9f:
	sta PpuScroll_2005
$dba2:
	lda #$00
$dba4:
	sta PpuAddr_2006
$dba7:
	lda #$00
$dba9:
	sta PpuAddr_2006
$dbac:
	inc $001b
$dbaf:
	rts
	lda PpuStatus_2002
	bpl $dbb0
	lda PpuStatus_2002
	bmi $dbb5
	lda PpuStatus_2002
	bpl $dbba
	inc $001b
	rts
$dbc3:
	lda #$3f
$dbc5:
	sta PpuAddr_2006
$dbc8:
	lda #$00
$dbca:
	sta PpuAddr_2006
$dbcd:
	lda #$0e
$dbcf:
	ldy $0020
$dbd2:
	sta PpuData_2007
$dbd5:
	dey
$dbd6:
	cpy #$00
$dbd8:
	bne $dbd2
$dbda:
	jsr $db8e
$dbdd:
	lda #$20
$dbdf:
	sta PpuAddr_2006
$dbe2:
	lda #$00
$dbe4:
	sta PpuAddr_2006
$dbe7:
	jsr $dc1b
$dbea:
	jsr $db8e
$dbed:
	lda #$21
$dbef:
	sta PpuAddr_2006
$dbf2:
	lda #$00
$dbf4:
	sta PpuAddr_2006
$dbf7:
	jsr $dc1b
$dbfa:
	jsr $db8e
$dbfd:
	lda #$22
$dbff:
	sta PpuAddr_2006
$dc02:
	lda #$00
$dc04:
	sta PpuAddr_2006
$dc07:
	jsr $dc1b
$dc0a:
	jsr $db8e
$dc0d:
	lda #$23
$dc0f:
	sta PpuAddr_2006
$dc12:
	lda #$00
$dc14:
	sta PpuAddr_2006
$dc17:
	jsr $dc1b
$dc1a:
	rts
$dc1b:
	ldx #$00
$dc1d:
	sta PpuData_2007
$dc20:
	inx
$dc21:
	cpx #$00
$dc23:
	bne $dc1d
$dc25:
	rts
$dc26:
	lda #$00
$dc28:
	sta $0066
$dc2b:
	lda #$00
$dc2d:
	sta OamAddr_2003
$dc30:
	lda #$f5
$dc32:
	sta OamData_2004
$dc35:
	inc $0066
$dc38:
	lda #$00
$dc3a:
	sta $0009
$dc3d:
	lda $0066
$dc40:
	cmp $0009
$dc43:
	beq $dc48
$dc45:
	jmp $dc30
$dc48:
	rts
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
$dc6b:
	lda #$05
$dc6d:
	sta $007e
$dc70:
	rts
$dc71:
	lda #$00
$dc73:
	sta $000e
$dc76:
	ldx $000e
$dc79:
	lda #$00
$dc7b:
	sta $0072,x
$dc7e:
	inc $000e
$dc81:
	lda #$0c
$dc83:
	sta $0009
$dc86:
	lda $000e
$dc89:
	cmp $0009
$dc8c:
	beq $dc91
$dc8e:
	jmp $dc76
$dc91:
	rts
$dc92:
	lda #$00
$dc94:
	sta $007f
$dc97:
	ldx $007f
$dc9a:
	lda $0072,x
$dc9d:
	sta $0080
$dca0:
	lda #$00
$dca2:
	sta $0009
$dca5:
	lda $0080
$dca8:
	cmp $0009
$dcab:
	beq $dcb0
$dcad:
	jmp $dd19
$dcb0:
	ldx $007f
$dcb3:
	lda $8070,x
$dcb6:
	sta $0081
$dcb9:
	ldx $007f
$dcbc:
	lda $807c,x
$dcbf:
	sta $0082
$dcc2:
	lda $0082
$dcc5:
	sta $0009
$dcc8:
	lda $000c
$dccb:
	sec
$dccc:
	sbc #$20
$dcce:
	lsr a
$dccf:
	lsr a
$dcd0:
	lsr a
$dcd1:
	lsr a
$dcd2:
	cmp $0009
$dcd5:
	beq $dcda
$dcd7:
	jmp $dd19
$dcda:
	lda $0081
$dcdd:
	sta $0009
$dce0:
	lda $005e
$dce3:
	cmp $0009
$dce6:
	bne $dcf8
$dce8:
	lda #$06
$dcea:
	sta $0009
$dced:
	lda $005f
$dcf0:
	cmp $0009
$dcf3:
	bpl $dcf8
$dcf5:
	jmp $ddd8
$dcf8:
	lda $0081
$dcfb:
	sta $0009
$dcfe:
	lda $005e
$dd01:
	clc
$dd02:
	adc #$01
$dd04:
	cmp $0009
$dd07:
	bne $dd19
$dd09:
	lda #$0a
$dd0b:
	sta $0009
$dd0e:
	lda $005f
$dd11:
	cmp $0009
$dd14:
	bmi $dd19
$dd16:
	jmp $ddd8
$dd19:
	inc $007f
$dd1c:
	lda #$0c
$dd1e:
	sta $0009
$dd21:
	lda $007f
$dd24:
	cmp $0009
$dd27:
	beq $dd2c
$dd29:
	jmp $dc97
$dd2c:
	rts
$dd2d:
	lda #$00
$dd2f:
	sta $0083
$dd32:
	ldx $0083
$dd35:
	lda $8044,x
$dd38:
	sta $0084
$dd3b:
	ldx $0083
$dd3e:
	lda $8049,x
$dd41:
	sta $0085
$dd44:
	lda $0085
$dd47:
	sta $0009
$dd4a:
	lda $000c
$dd4d:
	sec
$dd4e:
	sbc #$02
$dd50:
	lsr a
$dd51:
	lsr a
$dd52:
	lsr a
$dd53:
	lsr a
$dd54:
	cmp $0009
$dd57:
	beq $dd5c
$dd59:
	jmp $dd9b
$dd5c:
	lda $0084
$dd5f:
	sta $0009
$dd62:
	lda $005e
$dd65:
	cmp $0009
$dd68:
	bne $dd7a
$dd6a:
	lda #$04
$dd6c:
	sta $0009
$dd6f:
	lda $005f
$dd72:
	cmp $0009
$dd75:
	bpl $dd7a
$dd77:
	jmp $ddb0
$dd7a:
	lda $0084
$dd7d:
	sta $0009
$dd80:
	lda $005e
$dd83:
	clc
$dd84:
	adc #$01
$dd86:
	cmp $0009
$dd89:
	bne $dd9b
$dd8b:
	lda #$0c
$dd8d:
	sta $0009
$dd90:
	lda $005f
$dd93:
	cmp $0009
$dd96:
	bmi $dd9b
$dd98:
	jmp $ddb0
$dd9b:
	inc $0083
$dd9e:
	lda $007e
$dda1:
	sta $0009
$dda4:
	lda $0083
$dda7:
	cmp $0009
$ddaa:
	bpl $ddaf
$ddac:
	jmp $dd32
$ddaf:
	rts
$ddb0:
	jsr $c3eb
$ddb3:
	lda #$00
$ddb5:
	sta $0086
$ddb8:
	jsr $db8e
$ddbb:
	jsr $e679
$ddbe:
	jsr $de0d
$ddc1:
	inc $0086
$ddc4:
	lda #$15
$ddc6:
	sta $0009
$ddc9:
	lda $0086
$ddcc:
	cmp $0009
$ddcf:
	beq $ddd4
$ddd1:
	jmp $ddb8
$ddd4:
	jsr $c3eb
$ddd7:
	rts
$ddd8:
	ldx $007f
$dddb:
	lda #$01
$dddd:
	sta $0072,x
$dde0:
	ldx #$05
$dde2:
	lda #$08
$dde4:
	sta $00a4,x
$dde7:
	ldx #$05
$dde9:
	lda $0082
$ddec:
	asl a
$dded:
	asl a
$ddee:
	asl a
$ddef:
	asl a
$ddf0:
	sec
$ddf1:
	sbc #$08
$ddf3:
	sta $009e,x
$ddf6:
	ldx #$05
$ddf8:
	lda $0081
$ddfb:
	sta $0092,x
$ddfe:
	ldx #$05
$de00:
	lda #$00
$de02:
	sta $0098,x
$de05:
	ldx #$05
$de07:
	lda #$01
$de09:
	sta $00aa,x
$de0c:
	rts
$de0d:
	lda #$00
$de0f:
	sta $000e
$de12:
	lda #$00
$de14:
	sta $0087
$de17:
	inc $0087
$de1a:
	lda #$40
$de1c:
	sta $0009
$de1f:
	lda $0087
$de22:
	cmp $0009
$de25:
	beq $de2a
$de27:
	jmp $de17
$de2a:
	inc $000e
$de2d:
	lda #$11
$de2f:
	sta $0009
$de32:
	lda $000e
$de35:
	cmp $0009
$de38:
	beq $de3d
$de3a:
	jmp $de12
$de3d:
	rts
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	isc $ffff,x
	plp
	sec
	rla $08,x
	plp
	and ($37,x)
	sec
	plp
	sec
	ora ($08,x)
	plp
	and ($37,x)
	ora ($27,x)
	asl $0316
	brk
	asl $1020
	brk
	asl $1839
	brk
	asl a
	anc #$0c
	clc
	sec
	rla $08,x
	clc
	asl $3738
	clc
	sec
	ora ($08,x)
	clc
	asl $0138
	clc
	plp
	jsr $0003
	plp
	jsr $0010
	plp
	and $0018,y
	asl a
	anc #$0c
$e040:
	brk
$e041:
	brk
$e042:
	brk
$e043:
	brk
$e044:
	ora ($00,x)
$e046:
	brk
$e047:
	ora ($00,x)
$e049:
	ora ($00,x)
$e04b:
	ora ($01,x)
$e04d:
	ora ($01,x)
$e04f:
	ora ($01,x)
$e051:
	ora ($01,x)
$e053:
	ora ($01,x)
$e055:
	stp
$e056:
	ora ($02,x)
$e058:
	ora ($02,x)
$e05a:
	stp
$e05b:
	ora ($02,x)
$e05d:
	stp
$e05e:
	stp
$e05f:
	stp
$e060:
	stp
$e061:
	stp
$e062:
	slo ($02,x)
$e064:
	stp
$e065:
	slo ($02,x)
$e067:
	slo ($02,x)
$e069:
	slo ($03,x)
$e06b:
	slo ($03,x)
$e06d:
	slo ($03,x)
$e06f:
	slo ($03,x)
$e071:
	slo ($03,x)
$e073:
	nop $03
$e075:
	nop $03
$e077:
	nop $04
$e079:
	slo ($04,x)
$e07b:
	nop $04
	nop $04
	nop $00
	brk
	brk
	brk
	brk
	brk
	ora ($00,x)
	brk
	ora ($00,x)
	brk
	ora ($00,x)
	ora ($00,x)
	ora ($01,x)
	brk
	ora ($01,x)
	brk
	ora ($01,x)
	ora ($01,x)
	ora ($01,x)
	ora ($01,x)
	ora ($01,x)
	stp
	ora ($01,x)
	stp
	ora ($01,x)
	stp
	ora ($02,x)
	ora ($02,x)
	stp
	ora ($02,x)
	stp
	ora ($02,x)
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	slo ($03,x)
	slo ($03,x)
	slo ($03,x)
	brk
	brk
	brk
	brk
	ora ($00,x)
	brk
	ora ($00,x)
	ora ($01,x)
	brk
	ora ($01,x)
	ora ($01,x)
	ora ($02,x)
	ora ($01,x)
	stp
	ora ($02,x)
	ora ($02,x)
	stp
	stp
	stp
	stp
	stp
	stp
	stp
	slo ($02,x)
	slo ($02,x)
	slo ($03,x)
	slo ($02,x)
	slo ($03,x)
	slo ($03,x)
	slo ($03,x)
	nop $03
	slo ($04,x)
	nop $04
	slo ($04,x)
	nop $04
	nop $04
	nop $04
	nop $04
	nop $04
	nop $04
	nop $04
	nop $04
	nop $04
$e10a:
	jsr $2020
$e10d:
	jsr $2424
$e110:
	bit $24
$e112:
	brk
$e113:
	php
$e114:
	bpl $e12e
$e116:
	brk
$e117:
	php
$e118:
	bpl $e132
$e11a:
	stp
$e11b:
	stp
$e11c:
	stp
$e11d:
	stp
$e11e:
	rol $26
$e120:
	rol $26
$e122:
	brk
$e123:
	php
$e124:
	bpl $e13e
$e126:
	brk
$e127:
	php
$e128:
	bpl $e142
$e12a:
	rla ($23,x)
$e12c:
	rla ($23,x)
$e12e:
	rla $27
$e130:
	rla $27
$e132:
	cpy #$c2
$e134:
	cpy $c6
$e136:
	cpy #$c2
$e138:
	cpy $c6
$e13a:
	brk
$e13b:
	sta ($6c,x)
$e13d:
	sta ($d8,x)
$e13f:
	sta ($44,x)
$e141:
	nop #$b0
$e143:
	nop #$1c
$e145:
	sax ($88,x)
$e147:
	sax ($f4,x)
$e149:
	sax ($60,x)
$e14b:
	sty $cc
$e14d:
	sty $38
$e14f:
	sta $a4
$e151:
	sta $10
$e153:
	stx $7c
$e155:
	stx $e8
$e157:
	stx $54
$e159:
	sax $c0
$e15b:
	sax $2c
$e15d:
	dey
$e15e:
	tya
$e15f:
	dey
$e160:
	nop $89
$e162:
	bvs $e0ed
$e164:
	nop $4889,x
$e167:
	txa
$e168:
	ldy $8a,x
$e16a:
	jsr $8c8b
$e16d:
	xaa #$f8
$e16f:
	xaa #$64
$e171:
	sty $8cd0
$e174:
	nop $a88d,x
$e177:
	sta $8e14
$e17a:
	nop #$8e
$e17c:
	cpx $588e
$e17f:
	sax $8fc4
$e182:
	bmi $e114
$e184:
	shy $0890,x
$e187:
	sta ($74),y
$e189:
	sta ($e0),y
$e18b:
	sta ($4c),y
$e18d:
	stp
$e18e:
	clv
$e18f:
	stp
$e190:
	bit $93
$e192:
	bcc $e127
$e194:
	nop $6893,x
$e197:
	sty $d4,x
$e199:
	sty $40,x
$e19b:
	sta $ac,x
$e19d:
	sta $18,x
$e19f:
	stx $84,y
$e1a1:
	stx $f0,y
$e1a3:
	stx $5c,y
$e1a5:
	sax $c8,y
$e1a7:
	sax $34,y
$e1a9:
	tya
$e1aa:
	ldy #$98
$e1ac:
	nop $7899
$e1af:
	sta $99e4,y
$e1b2:
	bvc $e14e
	ldy $289a,x
	tas $9b94,y
	brk
	shy $9c6c,x
	cld
	shy $9d44,x
	bcs $e161
	nop $889e,x
	shx $9ef4,y
	rts
	axa $9fcc,y
	sec
	ldy #$a4
	ldy #$10
	lda ($7c,x)
	lda ($e8,x)
	lda ($54,x)
	ldx #$c0
	ldx #$2c
	lax ($98,x)
	lax ($04,x)
	ldy $70
	ldy $dc
	ldy $48
	lda $b4
	lda $20
	ldx $8c
	ldx $f8
	ldx $64
	lax $d0
	lax $3c
	tay
	tay
	tay
	nop $a9,x
	nop #$a9
	cpx $58a9
	tax
	cpy $aa
	bmi $e1af
	shy $08ab,x
	ldy $ac74
	cpx #$ac
	jmp $b8ad
	lda $ae24
	bcc $e1c2
	nop $68ae,x
	lax $afd4
	rti
	bcs $e1c9
	bcs $e237
	lda ($84),y
	lda ($f0),y
	lda ($5c),y
	stp
	iny
	stp
	nop $b3,x
	ldy #$b3
	nop $78b4
	ldy $e4,x
	ldy $50,x
	lda $bc,x
	lda $28,x
	ldx $94,y
	ldx $0e,y
$e23b:
	bmi $e25e
$e23d:
	ora ($0e),y
$e23f:
	nop
$e240:
	rol a
$e241:
	nop
$e242:
	brk
$e243:
	ora ($02,x)
$e245:
	slo ($00,x)
$e247:
	ora ($02,x)
$e249:
	slo ($0e,x)
$e24b:
	rla $0e
$e24d:
	asl $0d00
$e250:
	bpl $e255
$e252:
	brk
$e253:
	slo $08
$e255:
	ora #$00
$e257:
	asl a
$e258:
	anc #$0c
$e25a:
	asl $1130
$e25d:
	and ($00,x)
$e25f:
	brk
$e260:
	brk
$e261:
	brk
$e262:
	brk
$e263:
	brk
$e264:
	brk
$e265:
	brk
$e266:
	brk
$e267:
	brk
$e268:
	brk
$e269:
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
	brk
$e2b2:
	ora #$01
$e2b4:
	stp
$e2b5:
	slo ($04,x)
$e2b7:
	ora $06
$e2b9:
	slo $08
$e2bb:
	brk
$e2bc:
	asl a
$e2bd:
	anc #$0c
$e2bf:
	ora $0f0e
$e2c2:
	bpl $e2d5
$e2c4:
	stp
$e2c5:
	slo ($14),y
$e2c7:
	ora $16,x
$e2c9:
	slo $18,x
$e2cb:
	brk
$e2cc:
	brk
$e2cd:
	brk
$e2ce:
	brk
$e2cf:
	brk
$e2d0:
	brk
$e2d1:
	brk
$e2d2:
	jsr $2221
$e2d5:
	rla ($24,x)
$e2d7:
	and $26
$e2d9:
	rla $28
$e2db:
	and #$2a
$e2dd:
	anc #$2c
$e2df:
	and $2f2e
$e2e2:
	bmi $e315
$e2e4:
	stp
$e2e5:
	rla ($34),y
$e2e7:
	and $36,x
$e2e9:
	rla $38,x
$e2eb:
	brk
$e2ec:
	brk
$e2ed:
	brk
$e2ee:
	brk
$e2ef:
	brk
$e2f0:
	brk
$e2f1:
	brk
$e2f2:
	rti
$e2f3:
	eor ($42,x)
$e2f5:
	sre ($44,x)
$e2f7:
	eor $46
$e2f9:
	sre $48
$e2fb:
	eor #$4a
$e2fd:
	alr #$4c
$e2ff:
	eor $4f4e
$e302:
	bvc $e355
$e304:
	stp
$e305:
	sre ($54),y
$e307:
	eor $56,x
$e309:
	sre $58,x
$e30b:
	brk
$e30c:
	brk
$e30d:
	brk
$e30e:
	brk
$e30f:
	brk
$e310:
	brk
$e311:
	brk
$e312:
	rts
$e313:
	adc ($62,x)
$e315:
	rra ($64,x)
$e317:
	adc $66
$e319:
	rra $68
$e31b:
	adc #$6a
$e31d:
	arr #$6c
$e31f:
	adc $6f6e
$e322:
	bvs $e395
$e324:
	stp
$e325:
	rra ($74),y
$e327:
	adc $76,x
$e329:
	rra $78,x
$e32b:
	brk
$e32c:
	brk
$e32d:
	brk
$e32e:
	brk
$e32f:
	brk
$e330:
	brk
$e331:
	brk
$e332:
	nop #$81
$e334:
	nop #$83
$e336:
	sty $85
$e338:
	stx $87
$e33a:
	dey
$e33b:
	brk
$e33c:
	brk
$e33d:
	brk
$e33e:
	brk
$e33f:
	brk
$e340:
	stx $908f
$e343:
	sta ($92),y
$e345:
	ahx ($94),y
$e347:
	sta $96,x
$e349:
	sax $98,y
$e34b:
	brk
$e34c:
	brk
$e34d:
	brk
$e34e:
	brk
$e34f:
	brk
$e350:
	brk
$e351:
	brk
$e352:
	ldy #$a1
$e354:
	ldx #$a3
$e356:
	ldy $a5
$e358:
	ldx $a7
$e35a:
	tay
$e35b:
	lda #$00
$e35d:
	brk
$e35e:
	brk
$e35f:
	brk
$e360:
	ldx $b000
$e363:
	lda ($b2),y
$e365:
	lax ($b4),y
$e367:
	lda $b6,x
$e369:
	lax $b8,y
$e36b:
	nop
$e36c:
	slo $1d1c,y
$e36f:
	asl $8a1f,x
$e372:
	xaa #$8c
$e374:
	sta $0000
$e377:
	brk
$e378:
	brk
$e379:
	brk
$e37a:
	brk
$e37b:
	brk
$e37c:
	brk
$e37d:
	brk
$e37e:
	brk
$e37f:
	brk
$e380:
	brk
$e381:
	brk
$e382:
	brk
$e383:
	brk
$e384:
	brk
$e385:
	brk
$e386:
	brk
$e387:
	brk
$e388:
	brk
$e389:
	brk
$e38a:
	brk
$e38b:
	nop
$e38c:
	rla $3d3c,y
$e38f:
	rol $aa3f,x
$e392:
	lax #$ac
$e394:
	lda $0000
$e397:
	brk
$e398:
	brk
$e399:
	brk
$e39a:
	brk
$e39b:
	brk
$e39c:
	brk
$e39d:
	brk
$e39e:
	brk
$e39f:
	brk
$e3a0:
	brk
$e3a1:
	brk
$e3a2:
	brk
$e3a3:
	brk
$e3a4:
	brk
$e3a5:
	brk
$e3a6:
	brk
$e3a7:
	brk
$e3a8:
	brk
$e3a9:
	brk
$e3aa:
	brk
$e3ab:
	brk
$e3ac:
	nop
$e3ad:
	sre $5d5c,y
$e3b0:
	lsr $ca5f,x
$e3b3:
	axs #$00
$e3b5:
	brk
$e3b6:
	brk
$e3b7:
	brk
$e3b8:
	brk
$e3b9:
	brk
$e3ba:
	brk
$e3bb:
	brk
$e3bc:
	brk
$e3bd:
	brk
$e3be:
	brk
$e3bf:
	brk
$e3c0:
	brk
$e3c1:
	brk
$e3c2:
	brk
$e3c3:
	brk
$e3c4:
	brk
$e3c5:
	brk
$e3c6:
	brk
$e3c7:
	brk
$e3c8:
	brk
$e3c9:
	brk
$e3ca:
	brk
$e3cb:
	brk
$e3cc:
	nop
$e3cd:
	rra $7d7c,y
$e3d0:
	ror $ea7f,x
$e3d3:
	sbc #$00
$e3d5:
	brk
$e3d6:
	brk
$e3d7:
	brk
$e3d8:
	brk
$e3d9:
	brk
$e3da:
	brk
$e3db:
	brk
$e3dc:
	brk
$e3dd:
	brk
$e3de:
	brk
$e3df:
	brk
$e3e0:
	brk
$e3e1:
	brk
$e3e2:
	brk
$e3e3:
	brk
$e3e4:
	brk
$e3e5:
	brk
$e3e6:
	brk
$e3e7:
	brk
$e3e8:
	brk
$e3e9:
	brk
$e3ea:
	brk
$e3eb:
	cpy $cecd
$e3ee:
	dcp $d1d0
$e3f1:
	stp
$e3f2:
	dcp ($d4),y
$e3f4:
	cmp $d6,x
$e3f6:
	dcp $d8,x
$e3f8:
	sre $41
$e3fa:
	eor $2045
$e3fd:
	sre $4556
$e400:
	stp
	sre ($4f,x)
	lsr $5247
	eor ($54,x)
	eor $4c,x
	eor ($54,x)
	eor #$4f
	lsr $4653
	stp
	sre $204d
	nop $48,x
	eor $20
	jsr $2020
	jsr $5320
	sre $2046
	nop $45
	lsr $45,x
	jmp $504f
	eor $4e45
	nop $20,x
	nop $45,x
	eor ($4d,x)
	jsr $2020
	jsr $4c20
	eor $41
	nop $20
	sre ($4f,x)
	nop $45
	stp
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	stp
	sre $2042
	stp
	sre $5453
	sre ($55),y
	bvc $e4a9
	sre $5452
	jsr $2020
	jsr $2020
	jsr $4d20
	eor ($54,x)
	nop $20,x
	jmp $4e4f
	sre $4e
	eor $43
	alr #$45
	stp
	eor ($52,x)
	nop $20,x
	nop $45
	sre ($49),y
	sre $4e
	jsr $2020
	jsr $2020
	jsr $4120
	lsr $5244
	eor $57
	jsr $4c4b
	eor $49
	lsr $554d
	sre ($49),y
	sre ($20,x)
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	eor $5241
	alr #$20
	pha
	eor ($4c,x)
	jmp $454c
	lsr $45,x
	jmp $4420
	eor $53
	eor #$47
	lsr $2020
	jsr $2020
	jsr $494d
	alr #$45
	jsr $4152
	eor #$53
	eor $4e41
	lsr $41
	sre ($55,x)
	jmp $5954
	jsr $4441
	lsr $49,x
	sre ($4f),y
	stp
	jsr $2020
	eor $5241
	alr #$20
	sre ($54),y
	eor $48
	jmp $4b49
$e4eb:
	nop $04
$e4ed:
	nop $04
$e4ef:
	nop $04
$e4f1:
	nop $04
$e4f3:
	nop $04
$e4f5:
	nop $05
$e4f7:
	ora $05
$e4f9:
	ora $05
$e4fb:
	ora $05
$e4fd:
	ora $05
$e4ff:
	ora $05
$e501:
	ora $05
$e503:
	ora $05
$e505:
	ora $05
$e507:
	ora $05
$e509:
	ora $05
$e50b:
	asl $05
$e50d:
	ora $05
$e50f:
	ora $05
$e511:
	ora $05
$e513:
	ora $05
$e515:
	ora $05
$e517:
	ora $05
$e519:
	ora $05
$e51b:
	ora $05
$e51d:
	ora $05
$e51f:
	ora $05
$e521:
	nop $04
$e523:
	nop $04
$e525:
	nop $04
$e527:
	nop $04
$e529:
	nop $04
$e52b:
	nop $03
$e52d:
	slo ($03,x)
$e52f:
	slo ($03,x)
$e531:
	slo ($03,x)
$e533:
	slo ($03,x)
$e535:
	slo ($02,x)
$e537:
	stp
$e538:
	stp
$e539:
	stp
$e53a:
	stp
$e53b:
	stp
$e53c:
	stp
$e53d:
	stp
$e53e:
	stp
$e53f:
	stp
$e540:
	stp
$e541:
	stp
$e542:
	stp
$e543:
	stp
$e544:
	stp
$e545:
	stp
$e546:
	stp
$e547:
	stp
$e548:
	stp
$e549:
	stp
$e54a:
	stp
$e54b:
	stp
$e54c:
	stp
$e54d:
	stp
$e54e:
	stp
$e54f:
	stp
$e550:
	stp
$e551:
	stp
$e552:
	stp
$e553:
	stp
$e554:
	stp
$e555:
	stp
$e556:
	stp
$e557:
	stp
$e558:
	stp
$e559:
	stp
$e55a:
	stp
$e55b:
	stp
$e55c:
	stp
$e55d:
	stp
$e55e:
	stp
$e55f:
	stp
$e560:
	stp
$e561:
	slo ($03,x)
$e563:
	slo ($03,x)
$e565:
	slo ($03,x)
$e567:
	slo ($03,x)
$e569:
	slo ($03,x)
$e56b:
	nop $04
$e56d:
	nop $04
$e56f:
	nop $04
$e571:
	nop $04
$e573:
	nop $04
$e575:
	nop $05
$e577:
	ora $05
$e579:
	ora $05
$e57b:
	ora $05
$e57d:
	ora $05
$e57f:
	ora $05
$e581:
	ora $05
$e583:
	ora $05
$e585:
	ora $05
$e587:
	ora $05
$e589:
	ora $05
$e58b:
	asl $05
$e58d:
	ora $05
$e58f:
	ora $05
$e591:
	ora $05
$e593:
	ora $05
$e595:
	ora $05
$e597:
	ora $05
$e599:
	ora $05
$e59b:
	ora $05
$e59d:
	ora $05
$e59f:
	ora $05
$e5a1:
	nop $04
$e5a3:
	nop $04
$e5a5:
	nop $04
$e5a7:
	nop $04
$e5a9:
	nop $04
$e5ab:
	nop $03
$e5ad:
	slo ($03,x)
$e5af:
	slo ($03,x)
$e5b1:
	slo ($03,x)
$e5b3:
	slo ($03,x)
$e5b5:
	slo ($02,x)
$e5b7:
	stp
$e5b8:
	stp
$e5b9:
	stp
$e5ba:
	stp
$e5bb:
	stp
$e5bc:
	stp
$e5bd:
	stp
$e5be:
	stp
$e5bf:
	stp
$e5c0:
	stp
$e5c1:
	stp
$e5c2:
	stp
$e5c3:
	stp
$e5c4:
	stp
$e5c5:
	stp
$e5c6:
	stp
$e5c7:
	stp
$e5c8:
	stp
$e5c9:
	stp
$e5ca:
	stp
$e5cb:
	stp
$e5cc:
	stp
$e5cd:
	stp
$e5ce:
	stp
$e5cf:
	stp
$e5d0:
	stp
$e5d1:
	stp
$e5d2:
	stp
$e5d3:
	stp
$e5d4:
	stp
$e5d5:
	stp
$e5d6:
	stp
$e5d7:
	stp
$e5d8:
	stp
$e5d9:
	stp
$e5da:
	stp
$e5db:
	stp
$e5dc:
	stp
$e5dd:
	stp
$e5de:
	stp
$e5df:
	stp
$e5e0:
	stp
$e5e1:
	slo ($03,x)
$e5e3:
	slo ($03,x)
$e5e5:
	slo ($03,x)
$e5e7:
	slo ($03,x)
$e5e9:
	slo ($03,x)
$e5eb:
	lda #$00
$e5ed:
	sta $008e
$e5f0:
	lda #$00
$e5f2:
	sta $008f
$e5f5:
	lda #$1f
$e5f7:
	sta ApuStatus_4015
$e5fa:
	lda #$00
$e5fc:
	sta $0090
$e5ff:
	lda $0007
$e602:
	asl a
$e603:
	asl a
$e604:
	sta $0091
$e607:
	ldx $0091
$e60a:
	lda $8000,x
$e60d:
	sta $0088
$e610:
	sta $0002
$e613:
	inx
$e614:
	lda $8000,x
$e617:
	sta $0089
$e61a:
	sta $0003
$e61d:
	inx
$e61e:
	lda $8000,x
$e621:
	sta $008a
$e624:
	inx
$e625:
	lda $8000,x
$e628:
	sta $008b
$e62b:
	rts
$e62c:
	iny
$e62d:
	lda ($02),y
$e62f:
	sta $008e
$e632:
	clc
$e633:
	lda $0002
$e636:
	adc #$02
$e638:
	sta $0002
$e63b:
	sta $008c
$e63e:
	lda $0003
$e641:
	adc #$00
$e643:
	sta $0003
$e646:
	sta $008d
$e649:
	jmp $e679
$e64c:
	dec $008e
$e64f:
	lda $008e
$e652:
	cmp #$00
$e654:
	beq $e665
$e656:
	lda $008c
$e659:
	sta $0002
$e65c:
	lda $008d
$e65f:
	sta $0003
$e662:
	jmp $e679
$e665:
	clc
$e666:
	lda $0002
$e669:
	adc #$01
$e66b:
	sta $0002
$e66e:
	lda $0003
$e671:
	adc #$00
$e673:
	sta $0003
$e676:
	jmp $e679
$e679:
	lda #$00
$e67b:
	sta $0009
$e67e:
	lda $008f
$e681:
	cmp $0009
$e684:
	beq $e68a
$e686:
	dec $008f
$e689:
	rts
$e68a:
	ldy #$00
$e68c:
	lda ($02),y
$e68e:
	cmp #$ff
$e690:
	beq $e62c
$e692:
	cmp #$fe
$e694:
	beq $e64c
$e696:
	sta $008f
$e699:
	iny
$e69a:
	lda ($02),y
$e69c:
	sta $0090
$e69f:
	iny
$e6a0:
	lda #$00
$e6a2:
	sta $0009
$e6a5:
	lda $0090
$e6a8:
	and #$03
$e6aa:
	cmp $0009
$e6ad:
	bne $e6b2
$e6af:
	jmp $e6dc
$e6b2:
	lda #$03
$e6b4:
	sta $0009
$e6b7:
	lda $0090
$e6ba:
	and #$03
$e6bc:
	cmp $0009
$e6bf:
	bne $e6c4
$e6c1:
	jmp $e6c4
$e6c4:
	lda ($02),y
$e6c6:
	sta Sq0Duty_4000
$e6c9:
	iny
$e6ca:
	lda ($02),y
$e6cc:
	sta Sq0Sweep_4001
$e6cf:
	iny
$e6d0:
	lda ($02),y
$e6d2:
	sta Sq0Timer_4002
$e6d5:
	iny
$e6d6:
	lda ($02),y
$e6d8:
	sta Sq0Length_4003
$e6db:
	iny
$e6dc:
	lda #$00
$e6de:
	sta $0009
$e6e1:
	lda $0090
$e6e4:
	and #$0c
$e6e6:
	cmp $0009
$e6e9:
	bne $e6ee
$e6eb:
	jmp $e718
$e6ee:
	lda #$0c
$e6f0:
	sta $0009
$e6f3:
	lda $0090
$e6f6:
	and #$0c
$e6f8:
	cmp $0009
$e6fb:
	bne $e700
$e6fd:
	jmp $e700
$e700:
	lda ($02),y
$e702:
	sta Sq1Duty_4004
$e705:
	iny
$e706:
	lda ($02),y
$e708:
	sta Sq1Sweep_4005
$e70b:
	iny
$e70c:
	lda ($02),y
$e70e:
	sta Sq1Timer_4006
$e711:
	iny
$e712:
	lda ($02),y
$e714:
	sta Sq1Length_4007
$e717:
	iny
$e718:
	lda #$00
$e71a:
	sta $0009
$e71d:
	lda $0090
$e720:
	and #$30
$e722:
	cmp $0009
$e725:
	bne $e72a
$e727:
	jmp $e754
$e72a:
	lda #$30
$e72c:
	sta $0009
$e72f:
	lda $0090
$e732:
	and #$30
$e734:
	cmp $0009
$e737:
	bne $e73c
$e739:
	jmp $e73c
$e73c:
	lda ($02),y
$e73e:
	sta TrgLinear_4008
$e741:
	iny
$e742:
	lda ($02),y
$e744:
	sta $4009
$e747:
	iny
$e748:
	lda ($02),y
$e74a:
	sta TrgTimer_400A
$e74d:
	iny
$e74e:
	lda ($02),y
$e750:
	sta TrgLength_400B
$e753:
	iny
$e754:
	lda #$00
$e756:
	sta $0009
$e759:
	lda $0090
$e75c:
	and #$c0
$e75e:
	cmp $0009
$e761:
	bne $e766
$e763:
	jmp $e790
$e766:
	lda #$c0
$e768:
	sta $0009
$e76b:
	lda $0090
$e76e:
	and #$c0
$e770:
	cmp $0009
$e773:
	bne $e778
$e775:
	jmp $e778
$e778:
	lda ($02),y
$e77a:
	sta NoiseVolume_400C
$e77d:
	iny
$e77e:
	lda ($02),y
$e780:
	sta $400d
$e783:
	iny
$e784:
	lda ($02),y
$e786:
	sta NoisePeriod_400E
$e789:
	iny
$e78a:
	lda ($02),y
$e78c:
	sta NoiseLength_400F
$e78f:
	iny
$e790:
	tya
$e791:
	sta $0011
$e794:
	clc
$e795:
	lda $0002
$e798:
	adc $0011
$e79b:
	sta $0002
$e79e:
	lda $0003
$e7a1:
	adc #$00
$e7a3:
	sta $0003
$e7a6:
	clc
$e7a7:
	lda $0002
$e7aa:
	cmp $008a
$e7ad:
	bne $e7c3
$e7af:
	lda $0003
$e7b2:
	cmp $008b
$e7b5:
	bne $e7c3
$e7b7:
	lda $0088
$e7ba:
	sta $0002
$e7bd:
	lda $0089
$e7c0:
	sta $0003
$e7c3:
	rts
$e7c4:
	ldx #$00
$e7c6:
	lda #$00
$e7c8:
	sta $00a4,x
$e7cb:
	ldx #$01
$e7cd:
	lda #$00
$e7cf:
	sta $00a4,x
$e7d2:
	ldx #$02
$e7d4:
	lda #$00
$e7d6:
	sta $00a4,x
$e7d9:
	ldx #$03
$e7db:
	lda #$00
$e7dd:
	sta $00a4,x
$e7e0:
	ldx #$04
$e7e2:
	lda #$00
$e7e4:
	sta $00a4,x
$e7e7:
	ldx #$05
$e7e9:
	lda #$00
$e7eb:
	sta $00a4,x
$e7ee:
	lda #$05
$e7f0:
	sta $00b0
$e7f3:
	rts
$e7f4:
	lda #$00
$e7f6:
	sta $000e
$e7f9:
	ldx $000e
$e7fc:
	lda #$00
$e7fe:
	sta $00a4,x
$e801:
	inc $000e
$e804:
	lda $00b0
$e807:
	sta $0009
$e80a:
	lda $000e
$e80d:
	cmp $0009
$e810:
	bpl $e815
$e812:
	jmp $e7f9
$e815:
	rts
$e816:
	lda #$01
$e818:
	sta $0009
$e81b:
	lda $0004
$e81e:
	cmp $0009
$e821:
	beq $e824
$e823:
	rts
$e824:
	lda #$00
$e826:
	sta $000e
$e829:
	ldx $000e
$e82c:
	lda $00a4,x
$e82f:
	sta $00b1
$e832:
	lda #$00
$e834:
	sta $0009
$e837:
	lda $00b1
$e83a:
	cmp $0009
$e83d:
	bne $e842
$e83f:
	jmp $e85e
$e842:
	inc $000e
$e845:
	lda $00b0
$e848:
	sta $0009
$e84b:
	lda $000e
$e84e:
	cmp $0009
$e851:
	bpl $e858
$e853:
	beq $e858
$e855:
	jmp $e829
	rts
	lda #$00
	sta $000e
$e85e:
	lda $0005
$e861:
	and #$0f
$e863:
	sta $00b1
$e866:
	ldx $00b1
$e869:
	lda $8060,x
$e86c:
	sta $00b1
$e86f:
	lda #$06
$e871:
	sta $0009
$e874:
	lda $00b1
$e877:
	cmp $0009
$e87a:
	bne $e87f
$e87c:
	jmp $e8b0
$e87f:
	ldx $000e
$e882:
	lda $00b1
$e885:
	sta $00a4,x
$e888:
	ldx $000e
$e88b:
	lda #$07
$e88d:
	sta $009e,x
$e890:
	ldx $000e
$e893:
	lda #$00
$e895:
	sta $0098,x
$e898:
	ldx $000e
$e89b:
	lda $005e
$e89e:
	clc
$e89f:
	adc #$05
$e8a1:
	sta $0092,x
$e8a4:
	ldx $000e
$e8a7:
	lda #$ff
$e8a9:
	sta $00aa,x
$e8ac:
	inc $0004
$e8af:
	rts
$e8b0:
	lda #$00
$e8b2:
	sta $0009
$e8b5:
	lda $000c
$e8b8:
	and #$f0
$e8ba:
	cmp $0009
$e8bd:
	bne $e8c0
$e8bf:
	rts
$e8c0:
	ldx $000e
$e8c3:
	lda $00b1
$e8c6:
	sta $00a4,x
$e8c9:
	ldx $000e
$e8cc:
	lda $000c
$e8cf:
	sec
$e8d0:
	sbc #$11
$e8d2:
	sta $009e,x
$e8d5:
	ldx $000e
$e8d8:
	lda #$00
$e8da:
	sta $0098,x
$e8dd:
	ldx $000e
$e8e0:
	lda $005e
$e8e3:
	clc
$e8e4:
	adc #$0a
$e8e6:
	sta $0092,x
$e8e9:
	jsr $d5c3
$e8ec:
	rts
$e8ed:
	lda #$ff
$e8ef:
	sta $00b2
$e8f2:
	inc $00b2
$e8f5:
	ldx $00b2
$e8f8:
	lda $00a4,x
$e8fb:
	sta $00b1
$e8fe:
	lda #$02
$e900:
	sta $0009
$e903:
	lda $00b1
$e906:
	cmp $0009
$e909:
	bne $e90e
$e90b:
	jsr $e960
$e90e:
	lda #$03
$e910:
	sta $0009
$e913:
	lda $00b1
$e916:
	cmp $0009
$e919:
	bne $e91e
$e91b:
	jsr $e960
$e91e:
	lda #$04
$e920:
	sta $0009
$e923:
	lda $00b1
$e926:
	cmp $0009
$e929:
	bne $e92e
$e92b:
	jsr $ec12
$e92e:
	lda #$06
$e930:
	sta $0009
$e933:
	lda $00b1
$e936:
	cmp $0009
$e939:
	bne $e93e
$e93b:
	jsr $edca
$e93e:
	lda #$08
$e940:
	sta $0009
$e943:
	lda $00b1
$e946:
	cmp $0009
$e949:
	bne $e94e
$e94b:
	jsr $e960
$e94e:
	lda $00b0
$e951:
	sta $0009
$e954:
	lda $00b2
$e957:
	cmp $0009
$e95a:
	bpl $e95f
$e95c:
	jmp $e8f2
$e95f:
	rts
$e960:
	ldx $00b2
$e963:
	lda $00aa,x
$e966:
	sta $00b3
$e969:
	ldx $00b2
$e96c:
	lda $0092,x
$e96f:
	sta $00b4
$e972:
	ldx $00b2
$e975:
	lda $0098,x
$e978:
	sta $00b5
$e97b:
	ldx $00b2
$e97e:
	lda $009e,x
$e981:
	sta $00b6
$e984:
	lda $00b4
$e987:
	clc
$e988:
	adc #$02
$e98a:
	sta $0009
$e98d:
	lda $0020
$e990:
	cmp $0009
$e993:
	bmi $e998
$e995:
	jmp $ee75
$e998:
	lda $00b4
$e99b:
	sta $0009
$e99e:
	lda $0020
$e9a1:
	clc
$e9a2:
	adc #$12
$e9a4:
	cmp $0009
$e9a7:
	bpl $e9ac
$e9a9:
	jmp $ee75
$e9ac:
	lda #$00
$e9ae:
	sta $00b7
$e9b1:
	lda #$03
$e9b3:
	sta $0062
$e9b6:
	jsr $f2cd
$e9b9:
	lda #$00
$e9bb:
	sta $0009
$e9be:
	lda $001b
$e9c1:
	and #$01
$e9c3:
	cmp $0009
$e9c6:
	beq $e9cb
$e9c8:
	jmp $ea9f
$e9cb:
	lda #$ff
$e9cd:
	sta $0009
$e9d0:
	lda $00b3
$e9d3:
	cmp $0009
$e9d6:
	bne $e9ed
$e9d8:
	lda #$01
$e9da:
	sta $0009
$e9dd:
	lda $00b7
$e9e0:
	cmp $0009
$e9e3:
	bne $e9ea
$e9e5:
	lda #$02
$e9e7:
	sta $00b3
$e9ea:
	jmp $ea41
$e9ed:
	lda #$01
$e9ef:
	sta $0009
$e9f2:
	lda $00b3
$e9f5:
	cmp $0009
$e9f8:
	bne $ea17
$e9fa:
	lda #$00
$e9fc:
	sta $0064
$e9ff:
	jsr $f083
$ea02:
	lda #$00
$ea04:
	sta $0009
$ea07:
	lda $0064
$ea0a:
	cmp $0009
$ea0d:
	beq $ea14
$ea0f:
	lda #$02
$ea11:
	sta $00b3
$ea14:
	jmp $ea41
$ea17:
	lda #$02
$ea19:
	sta $0009
$ea1c:
	lda $00b3
$ea1f:
	cmp $0009
$ea22:
	bne $ea41
$ea24:
	lda #$00
$ea26:
	sta $0067
$ea29:
	jsr $f193
$ea2c:
	lda #$00
$ea2e:
	sta $0009
$ea31:
	lda $0067
$ea34:
	cmp $0009
$ea37:
	beq $ea3e
$ea39:
	lda #$01
$ea3b:
	sta $00b3
$ea3e:
	jmp $ea41
$ea41:
	lda #$fc
$ea43:
	sta $0009
$ea46:
	lda $00b6
$ea49:
	and #$fc
$ea4b:
	cmp $0009
$ea4e:
	bne $ea53
$ea50:
	jmp $ee75
$ea53:
	lda $00b4
$ea56:
	clc
$ea57:
	adc #$05
$ea59:
	sta $0009
$ea5c:
	lda $0020
$ea5f:
	cmp $0009
$ea62:
	bmi $ea67
	jmp $ee75
$ea67:
	lda $00b4
$ea6a:
	sta $0009
$ea6d:
	lda $0020
$ea70:
	clc
$ea71:
	adc #$15
$ea73:
	cmp $0009
$ea76:
	bpl $ea7b
	jmp $ee75
$ea7b:
	ldx $00b2
$ea7e:
	lda $00b3
$ea81:
	sta $00aa,x
$ea84:
	ldx $00b2
$ea87:
	lda $00b4
$ea8a:
	sta $0092,x
$ea8d:
	ldx $00b2
$ea90:
	lda $00b5
$ea93:
	sta $0098,x
$ea96:
	ldx $00b2
$ea99:
	lda $00b6
$ea9c:
	sta $009e,x
$ea9f:
	lda #$08
$eaa1:
	sta $0009
$eaa4:
	lda $00b1
$eaa7:
	cmp $0009
$eaaa:
	bne $eaaf
$eaac:
	jmp $ebb7
$eaaf:
	lda #$03
$eab1:
	sta $0009
$eab4:
	lda $00b1
$eab7:
	cmp $0009
$eaba:
	bne $eabf
$eabc:
	jmp $eb32
$eabf:
	lda #$02
$eac1:
	sta $006d
$eac4:
	lda #$0a
$eac6:
	sta $006e
$eac9:
	lda $0020
$eacc:
	sta $0009
$eacf:
	lda $00b4
$ead2:
	cmp $0009
$ead5:
	bmi $eb31
$ead7:
	beq $eb31
$ead9:
	lda $0020
$eadc:
	clc
$eadd:
	adc #$10
$eadf:
	sta $0009
$eae2:
	lda $00b4
$eae5:
	cmp $0009
$eae8:
	bpl $eb31
$eaea:
	beq $eb31
$eaec:
	ldx $00b2
$eaef:
	lda $009e,x
$eaf2:
	sec
$eaf3:
	sbc #$10
$eaf5:
	sta $006c
$eaf8:
	lda $00b4
$eafb:
	sec
$eafc:
	sbc $0020
$eaff:
	asl a
$eb00:
	asl a
$eb01:
	asl a
$eb02:
	asl a
$eb03:
	pha
$eb04:
	lda $00b5
$eb07:
	sec
$eb08:
	sbc $0021
$eb0b:
	sta $0011
$eb0e:
	pla
$eb0f:
	clc
$eb10:
	adc $0011
$eb13:
	sta $006b
$eb16:
	lda #$00
$eb18:
	sta $0009
$eb1b:
	lda $001b
$eb1e:
	and #$10
$eb20:
	cmp $0009
$eb23:
	beq $eb2e
$eb25:
	lda #$42
$eb27:
	sta $006d
$eb2a:
	jmp $f44f
	rts
$eb2e:
	jmp $f3db
$eb31:
	rts
$eb32:
	lda $0020
$eb35:
	sta $0009
$eb38:
	lda $00b4
$eb3b:
	cmp $0009
$eb3e:
	bmi $ebb6
$eb40:
	beq $ebb6
$eb42:
	lda $0020
$eb45:
	clc
$eb46:
	adc #$10
$eb48:
	sta $0009
$eb4b:
	lda $00b4
$eb4e:
	cmp $0009
$eb51:
	bpl $ebb6
$eb53:
	beq $ebb6
$eb55:
	lda #$00
$eb57:
	sta $006d
$eb5a:
	lda #$40
$eb5c:
	sta $006e
$eb5f:
	lda #$00
$eb61:
	sta $0009
$eb64:
	lda $001b
$eb67:
	and #$10
$eb69:
	cmp $0009
$eb6c:
	beq $eb73
$eb6e:
	lda #$48
$eb70:
	sta $006e
$eb73:
	ldx $00b2
$eb76:
	lda $009e,x
$eb79:
	sec
$eb7a:
	sbc #$20
$eb7c:
	sta $006c
$eb7f:
	lda $00b4
$eb82:
	sec
$eb83:
	sbc $0020
$eb86:
	asl a
$eb87:
	asl a
$eb88:
	asl a
$eb89:
	asl a
$eb8a:
	pha
$eb8b:
	lda $00b5
$eb8e:
	sec
$eb8f:
	sbc $0021
$eb92:
	sta $0011
$eb95:
	pla
$eb96:
	clc
$eb97:
	adc $0011
$eb9a:
	sta $006b
$eb9d:
	lda #$01
$eb9f:
	sta $0009
$eba2:
	lda $00b3
$eba5:
	cmp $0009
$eba8:
	bne $ebb3
$ebaa:
	lda #$40
$ebac:
	sta $006d
$ebaf:
	jmp $f4dc
	rts
$ebb3:
	jmp $f4c3
$ebb6:
	rts
$ebb7:
	lda #$02
$ebb9:
	sta $006d
$ebbc:
	lda #$02
$ebbe:
	sta $006e
$ebc1:
	lda $0020
$ebc4:
	sta $0009
$ebc7:
	lda $00b4
$ebca:
	cmp $0009
$ebcd:
	bmi $ec11
$ebcf:
	beq $ec11
$ebd1:
	lda $0020
$ebd4:
	clc
$ebd5:
	adc #$10
$ebd7:
	sta $0009
$ebda:
	lda $00b4
$ebdd:
	cmp $0009
$ebe0:
	bpl $ec11
$ebe2:
	beq $ec11
$ebe4:
	ldx $00b2
$ebe7:
	lda $009e,x
$ebea:
	sec
$ebeb:
	sbc #$10
$ebed:
	sta $006c
$ebf0:
	lda $00b4
$ebf3:
	sec
$ebf4:
	sbc $0020
$ebf7:
	asl a
$ebf8:
	asl a
$ebf9:
	asl a
$ebfa:
	asl a
$ebfb:
	pha
$ebfc:
	lda $00b5
$ebff:
	sec
$ec00:
	sbc $0021
$ec03:
	sta $0011
$ec06:
	pla
$ec07:
	clc
$ec08:
	adc $0011
$ec0b:
	sta $006b
$ec0e:
	jmp $f4f5
$ec11:
	rts
$ec12:
	ldx $00b2
$ec15:
	lda $00aa,x
$ec18:
	sta $00b3
$ec1b:
	ldx $00b2
$ec1e:
	lda $0092,x
$ec21:
	sta $00b4
$ec24:
	ldx $00b2
$ec27:
	lda $0098,x
$ec2a:
	sta $00b5
$ec2d:
	ldx $00b2
$ec30:
	lda $009e,x
$ec33:
	sta $00b6
$ec36:
	lda $00b4
$ec39:
	clc
$ec3a:
	adc #$02
$ec3c:
	sta $0009
$ec3f:
	lda $0020
$ec42:
	cmp $0009
$ec45:
	bmi $ec4a
$ec47:
	jmp $ee75
$ec4a:
	lda $00b4
$ec4d:
	sta $0009
$ec50:
	lda $0020
$ec53:
	clc
$ec54:
	adc #$12
$ec56:
	cmp $0009
$ec59:
	bpl $ec5e
$ec5b:
	jmp $ee75
$ec5e:
	lda #$00
$ec60:
	sta $00b7
$ec63:
	lda #$02
$ec65:
	sta $0062
$ec68:
	jsr $f2cd
$ec6b:
	lda #$ff
$ec6d:
	sta $0009
$ec70:
	lda $00b3
$ec73:
	cmp $0009
$ec76:
	bne $ec8d
$ec78:
	lda #$01
$ec7a:
	sta $0009
$ec7d:
	lda $00b7
$ec80:
	cmp $0009
$ec83:
	bne $ec8a
$ec85:
	lda #$01
$ec87:
	sta $00b3
$ec8a:
	jmp $ed11
$ec8d:
	lda $005e
$ec90:
	sta $0009
$ec93:
	lda $00b4
$ec96:
	clc
$ec97:
	adc #$02
$ec99:
	cmp $0009
$ec9c:
	bpl $eca5
$ec9e:
	beq $eca5
$eca0:
	lda #$01
$eca2:
	sta $00b3
$eca5:
	lda $005e
$eca8:
	sta $0009
$ecab:
	lda $00b4
$ecae:
	sec
$ecaf:
	sbc #$02
$ecb1:
	cmp $0009
$ecb4:
	bmi $ecbd
$ecb6:
	beq $ecbd
$ecb8:
	lda #$02
$ecba:
	sta $00b3
$ecbd:
	lda #$01
$ecbf:
	sta $0009
$ecc2:
	lda $00b3
$ecc5:
	cmp $0009
$ecc8:
	bne $ece7
$ecca:
	lda #$00
$eccc:
	sta $0064
$eccf:
	jsr $f083
$ecd2:
	lda #$00
$ecd4:
	sta $0009
$ecd7:
	lda $0064
$ecda:
	cmp $0009
$ecdd:
	beq $ece4
$ecdf:
	lda #$02
$ece1:
	sta $00b3
$ece4:
	jmp $ed11
$ece7:
	lda #$02
$ece9:
	sta $0009
$ecec:
	lda $00b3
$ecef:
	cmp $0009
$ecf2:
	bne $ed11
$ecf4:
	lda #$00
$ecf6:
	sta $0067
$ecf9:
	jsr $f193
$ecfc:
	lda #$00
$ecfe:
	sta $0009
$ed01:
	lda $0067
$ed04:
	cmp $0009
$ed07:
	beq $ed0e
$ed09:
	lda #$01
$ed0b:
	sta $00b3
$ed0e:
	jmp $ed11
$ed11:
	lda #$fc
$ed13:
	sta $0009
$ed16:
	lda $00b6
$ed19:
	and #$fc
$ed1b:
	cmp $0009
$ed1e:
	bne $ed23
$ed20:
	jmp $ee75
$ed23:
	ldx $00b2
$ed26:
	lda $00b3
$ed29:
	sta $00aa,x
$ed2c:
	ldx $00b2
$ed2f:
	lda $00b4
$ed32:
	sta $0092,x
$ed35:
	ldx $00b2
$ed38:
	lda $00b5
$ed3b:
	sta $0098,x
$ed3e:
	ldx $00b2
$ed41:
	lda $00b6
$ed44:
	sta $009e,x
$ed47:
	lda #$00
$ed49:
	sta $006d
$ed4c:
	lda $001b
$ed4f:
	and #$0c
$ed51:
	sta $006e
$ed54:
	lda $006e
$ed57:
	clc
$ed58:
	adc #$0e
$ed5a:
	sta $006e
$ed5d:
	lda $0020
$ed60:
	sta $0009
$ed63:
	lda $00b4
$ed66:
	cmp $0009
$ed69:
	bmi $edc1
$ed6b:
	lda $0020
$ed6e:
	clc
$ed6f:
	adc #$10
$ed71:
	sta $0009
$ed74:
	lda $00b4
$ed77:
	cmp $0009
$ed7a:
	bpl $edc1
$ed7c:
	beq $edc1
$ed7e:
	ldx $00b2
$ed81:
	lda $009e,x
$ed84:
	sec
$ed85:
	sbc #$10
$ed87:
	sta $006c
$ed8a:
	lda $00b4
$ed8d:
	sec
$ed8e:
	sbc $0020
$ed91:
	asl a
$ed92:
	asl a
$ed93:
	asl a
$ed94:
	asl a
$ed95:
	pha
$ed96:
	lda $00b5
$ed99:
	sec
$ed9a:
	sbc $0021
$ed9d:
	sta $0011
$eda0:
	pla
$eda1:
	clc
$eda2:
	adc $0011
$eda5:
	sta $006b
$eda8:
	lda #$01
$edaa:
	sta $0009
$edad:
	lda $00b3
$edb0:
	cmp $0009
$edb3:
	bne $edbe
$edb5:
	lda #$40
$edb7:
	sta $006d
$edba:
	jmp $f44f
	rts
$edbe:
	jmp $f3db
$edc1:
	lda #$f5
$edc3:
	sta $006c
$edc6:
	jmp $f3db
	rts
$edca:
	ldx $00b2
$edcd:
	lda $00aa,x
$edd0:
	sta $00b3
$edd3:
	ldx $00b2
$edd6:
	lda $0092,x
$edd9:
	sta $00b4
$eddc:
	ldx $00b2
$eddf:
	lda $0098,x
$ede2:
	sta $00b5
$ede5:
	ldx $00b2
$ede8:
	lda $009e,x
$edeb:
	sta $00b6
$edee:
	lda $00b4
$edf1:
	clc
$edf2:
	adc #$02
$edf4:
	sta $0009
$edf7:
	lda $0020
$edfa:
	cmp $0009
$edfd:
	bmi $ee02
$edff:
	jmp $ee75
$ee02:
	jsr $f29b
$ee05:
	jsr $f29b
$ee08:
	ldx $00b2
$ee0b:
	lda $00b4
$ee0e:
	sta $0092,x
$ee11:
	ldx $00b2
$ee14:
	lda $00b5
$ee17:
	sta $0098,x
$ee1a:
	lda $0020
$ee1d:
	sta $0009
$ee20:
	lda $00b4
$ee23:
	cmp $0009
$ee26:
	bmi $ee74
$ee28:
	beq $ee74
$ee2a:
	lda $0020
$ee2d:
	clc
$ee2e:
	adc #$10
$ee30:
	sta $0009
$ee33:
	lda $00b4
$ee36:
	cmp $0009
$ee39:
	bpl $ee74
$ee3b:
	beq $ee74
$ee3d:
	lda #$02
$ee3f:
	sta $006d
$ee42:
	lda #$04
$ee44:
	sta $006e
$ee47:
	ldx $00b2
$ee4a:
	lda $009e,x
$ee4d:
	sec
$ee4e:
	sbc #$10
$ee50:
	sta $006c
$ee53:
	lda $00b4
$ee56:
	sec
$ee57:
	sbc $0020
$ee5a:
	asl a
$ee5b:
	asl a
$ee5c:
	asl a
$ee5d:
	asl a
$ee5e:
	pha
$ee5f:
	lda $00b5
$ee62:
	sec
$ee63:
	sbc $0021
$ee66:
	sta $0011
$ee69:
	pla
$ee6a:
	clc
$ee6b:
	adc $0011
$ee6e:
	sta $006b
$ee71:
	jmp $f52f
$ee74:
	rts
$ee75:
	ldx $00b2
$ee78:
	lda #$00
$ee7a:
	sta $00a4,x
$ee7d:
	rts
$ee7e:
	lda #$00
$ee80:
	sta $00b2
$ee83:
	ldx $00b2
$ee86:
	lda $00a4,x
$ee89:
	sta $00b1
$ee8c:
	lda #$00
$ee8e:
	sta $0009
$ee91:
	lda $00b1
$ee94:
	cmp $0009
$ee97:
	bne $ee9c
$ee99:
	jmp $f015
$ee9c:
	ldx $00b2
$ee9f:
	lda $009e,x
$eea2:
	sta $00b6
$eea5:
	lda #$0e
$eea7:
	sta $00b8
$eeaa:
	lda #$08
$eeac:
	sta $0009
$eeaf:
	lda $00b1
$eeb2:
	cmp $0009
$eeb5:
	bne $eebc
$eeb7:
	lda #$08
$eeb9:
	sta $00b8
$eebc:
	lda #$03
$eebe:
	sta $0009
$eec1:
	lda $00b1
$eec4:
	cmp $0009
$eec7:
	bne $eece
$eec9:
	lda #$16
$eecb:
	sta $00b8
$eece:
	lda $000c
$eed1:
	sta $0009
$eed4:
	lda $00b6
$eed7:
	sec
$eed8:
	sbc $00b8
$eedb:
	cmp $0009
$eede:
	bmi $eee3
$eee0:
	jmp $f015
$eee3:
	lda $00b6
$eee6:
	sta $0009
$eee9:
	lda $000c
$eeec:
	sec
$eeed:
	sbc #$18
$eeef:
	cmp $0009
$eef2:
	bmi $eef7
$eef4:
	jmp $f015
$eef7:
	lda #$00
$eef9:
	sta $0009
$eefc:
	lda $0012
$eeff:
	cmp $0009
$ef02:
	beq $ef18
$ef04:
	lda $00b6
$ef07:
	sta $0009
$ef0a:
	lda $000c
$ef0d:
	sec
$ef0e:
	sbc #$10
$ef10:
	cmp $0009
$ef13:
	bmi $ef18
$ef15:
	jmp $f015
$ef18:
	lda #$00
$ef1a:
	sta $00b9
$ef1d:
	lda #$00
$ef1f:
	sta $00b7
$ef22:
	ldx $00b2
$ef25:
	lda $0092,x
$ef28:
	sta $00b4
$ef2b:
	ldx $00b2
$ef2e:
	lda $0098,x
$ef31:
	sta $00b5
$ef34:
	lda $005e
$ef37:
	sta $0009
$ef3a:
	lda $00b4
$ef3d:
	cmp $0009
$ef40:
	bne $ef47
$ef42:
	lda #$01
$ef44:
	sta $00b9
$ef47:
	lda $00b4
$ef4a:
	sta $0009
$ef4d:
	lda $005e
$ef50:
	clc
$ef51:
	adc #$01
$ef53:
	cmp $0009
$ef56:
	bne $ef6d
$ef58:
	lda $005f
$ef5b:
	sta $0009
$ef5e:
	lda $00b5
$ef61:
	cmp $0009
$ef64:
	bpl $ef6d
$ef66:
	beq $ef6d
$ef68:
	lda #$01
$ef6a:
	sta $00b9
$ef6d:
	lda $005e
$ef70:
	sta $0009
$ef73:
	lda $00b4
$ef76:
	clc
$ef77:
	adc #$01
$ef79:
	cmp $0009
$ef7c:
	bne $ef93
$ef7e:
	lda $00b5
$ef81:
	sta $0009
$ef84:
	lda $005f
$ef87:
	cmp $0009
$ef8a:
	bpl $ef93
$ef8c:
	beq $ef93
$ef8e:
	lda #$01
$ef90:
	sta $00b9
$ef93:
	lda #$00
$ef95:
	sta $0009
$ef98:
	lda $00b9
$ef9b:
	cmp $0009
$ef9e:
	bne $efa3
$efa0:
	jmp $f015
$efa3:
	lda $00b6
$efa6:
	sta $0009
$efa9:
	lda $000c
$efac:
	pha
$efad:
	lda $00b8
$efb0:
	sec
$efb1:
	sbc #$05
$efb3:
	sta $0011
$efb6:
	pla
$efb7:
	clc
$efb8:
	adc $0011
$efbb:
	cmp $0009
$efbe:
	bpl $efc5
$efc0:
	lda #$01
$efc2:
	sta $00b7
$efc5:
	lda #$08
$efc7:
	sta $0009
$efca:
	lda $00b1
$efcd:
	cmp $0009
$efd0:
	bne $efd5
$efd2:
	jmp $f067
$efd5:
	lda #$02
$efd7:
	sta $0009
$efda:
	lda $00b1
$efdd:
	cmp $0009
$efe0:
	bne $efe5
$efe2:
	jmp $f02d
$efe5:
	lda #$03
$efe7:
	sta $0009
$efea:
	lda $00b1
$efed:
	cmp $0009
$eff0:
	bne $eff5
$eff2:
	jmp $f02d
$eff5:
	lda #$04
$eff7:
	sta $0009
$effa:
	lda $00b1
$effd:
	cmp $0009
$f000:
	bne $f005
$f002:
	jmp $f02d
$f005:
	lda #$06
$f007:
	sta $0009
$f00a:
	lda $00b1
$f00d:
	cmp $0009
$f010:
	bne $f015
$f012:
	jmp $f063
$f015:
	inc $00b2
$f018:
	lda $00b0
$f01b:
	clc
$f01c:
	adc #$01
$f01e:
	sta $0009
$f021:
	lda $00b2
$f024:
	cmp $0009
$f027:
	bpl $f02c
$f029:
	jmp $ee83
$f02c:
	rts
$f02d:
	lda #$00
$f02f:
	sta $0009
$f032:
	lda $00b7
$f035:
	cmp $0009
$f038:
	beq $f05f
$f03a:
	ldx $00b2
$f03d:
	lda #$00
$f03f:
	sta $00a4,x
$f042:
	lda #$01
$f044:
	sta $000f
$f047:
	lda #$14
$f049:
	sta $0010
$f04c:
	lda #$00
$f04e:
	sta $0009
$f051:
	lda $0013
$f054:
	cmp $0009
$f057:
	beq $f05e
$f059:
	lda #$37
$f05b:
	sta $0010
$f05e:
	rts
$f05f:
	jsr $ca72
$f062:
	rts
$f063:
	jsr $ca72
$f066:
	rts
$f067:
	ldx $00b2
$f06a:
	lda #$00
$f06c:
	sta $00a4,x
$f06f:
	inc $000a
$f072:
	lda #$06
$f074:
	sta $0009
$f077:
	lda $000a
$f07a:
	cmp $0009
$f07d:
	bne $f082
$f07f:
	dec $000a
$f082:
	rts
$f083:
	lda #$02
$f085:
	sta $0009
$f088:
	lda $00b5
$f08b:
	cmp $0009
$f08e:
	bpl $f093
$f090:
	jmp $f2b4
$f093:
	lda #$08
$f095:
	pha
$f096:
	lda $00b4
$f099:
	asl a
$f09a:
	asl a
$f09b:
	asl a
$f09c:
	sta $0011
$f09f:
	pla
$f0a0:
	clc
$f0a1:
	adc $0011
$f0a4:
	sta $0063
$f0a7:
	lda $00b6
$f0aa:
	and #$0f
$f0ac:
	sta $00ba
$f0af:
	lda #$7f
$f0b1:
	sta $0009
$f0b4:
	lda $00b6
$f0b7:
	cmp $0009
$f0ba:
	bpl $f126
$f0bc:
	lda $00b6
$f0bf:
	lsr a
$f0c0:
	lsr a
$f0c1:
	lsr a
$f0c2:
	lsr a
$f0c3:
	sta $0065
$f0c6:
	lda $0063
$f0c9:
	clc
$f0ca:
	adc $0065
$f0cd:
	tax
$f0ce:
	lda $0400,x
$f0d1:
	sta $0086
$f0d4:
	lda #$00
$f0d6:
	sta $0009
$f0d9:
	lda $0086
$f0dc:
	and $0054
$f0df:
	cmp $0009
$f0e2:
	beq $f0e7
$f0e4:
	jmp $f3c9
$f0e7:
	lda #$0f
$f0e9:
	sta $0009
$f0ec:
	lda $00ba
$f0ef:
	cmp $0009
$f0f2:
	bne $f0f7
$f0f4:
	jmp $f2b4
$f0f7:
	lda $0063
$f0fa:
	pha
$f0fb:
	lda $0065
$f0fe:
	sec
$f0ff:
	sbc #$01
$f101:
	sta $0011
$f104:
	pla
$f105:
	clc
$f106:
	adc $0011
$f109:
	tax
$f10a:
	lda $0400,x
$f10d:
	sta $00bb
$f110:
	lda #$00
$f112:
	sta $0009
$f115:
	lda $00bb
$f118:
	and $0054
$f11b:
	cmp $0009
$f11e:
	beq $f123
$f120:
	jmp $f3c9
$f123:
	jmp $f2b4
$f126:
	lda $00b6
$f129:
	sec
$f12a:
	sbc #$70
$f12c:
	lsr a
$f12d:
	lsr a
$f12e:
	lsr a
$f12f:
	lsr a
$f130:
	sta $0065
$f133:
	lda $0063
$f136:
	clc
$f137:
	adc $0065
$f13a:
	tax
$f13b:
	lda $0200,x
$f13e:
	sta $0086
$f141:
	lda #$00
$f143:
	sta $0009
$f146:
	lda $0086
$f149:
	and $0054
$f14c:
	cmp $0009
$f14f:
	beq $f154
$f151:
	jmp $f3c9
$f154:
	lda #$0f
$f156:
	sta $0009
$f159:
	lda $00ba
$f15c:
	cmp $0009
$f15f:
	bne $f164
$f161:
	jmp $f2b4
$f164:
	lda $0063
$f167:
	pha
$f168:
	lda $0065
$f16b:
	sec
$f16c:
	sbc #$01
$f16e:
	sta $0011
$f171:
	pla
$f172:
	clc
$f173:
	adc $0011
$f176:
	tax
$f177:
	lda $0200,x
$f17a:
	sta $00bb
$f17d:
	lda #$00
$f17f:
	sta $0009
$f182:
	lda $00bb
$f185:
	and $0054
$f188:
	cmp $0009
$f18b:
	beq $f190
$f18d:
	jmp $f3c9
$f190:
	jmp $f2b4
$f193:
	lda #$00
$f195:
	sta $0009
$f198:
	lda $00b5
$f19b:
	cmp $0009
$f19e:
	beq $f1a3
$f1a0:
	jmp $f29b
$f1a3:
	lda $00b4
$f1a6:
	asl a
$f1a7:
	asl a
$f1a8:
	asl a
$f1a9:
	sec
$f1aa:
	sbc #$08
$f1ac:
	sta $0063
$f1af:
	lda $00b6
$f1b2:
	and #$0f
$f1b4:
	sta $00ba
$f1b7:
	lda #$7f
$f1b9:
	sta $0009
$f1bc:
	lda $00b6
$f1bf:
	cmp $0009
$f1c2:
	bpl $f22e
$f1c4:
	lda $00b6
$f1c7:
	lsr a
$f1c8:
	lsr a
$f1c9:
	lsr a
$f1ca:
	lsr a
$f1cb:
	sta $0065
$f1ce:
	lda $0063
$f1d1:
	clc
$f1d2:
	adc $0065
$f1d5:
	tax
$f1d6:
	lda $0400,x
$f1d9:
	sta $0086
$f1dc:
	lda #$00
$f1de:
	sta $0009
$f1e1:
	lda $0086
$f1e4:
	and $0054
$f1e7:
	cmp $0009
$f1ea:
	beq $f1ef
$f1ec:
	jmp $f3cf
$f1ef:
	lda #$0f
$f1f1:
	sta $0009
$f1f4:
	lda $00ba
$f1f7:
	cmp $0009
$f1fa:
	bne $f1ff
$f1fc:
	jmp $f29b
$f1ff:
	lda $0063
$f202:
	pha
$f203:
	lda $0065
$f206:
	sec
$f207:
	sbc #$01
$f209:
	sta $0011
$f20c:
	pla
$f20d:
	clc
$f20e:
	adc $0011
$f211:
	tax
$f212:
	lda $0400,x
$f215:
	sta $00bb
$f218:
	lda #$00
$f21a:
	sta $0009
$f21d:
	lda $00bb
$f220:
	and $0054
$f223:
	cmp $0009
$f226:
	beq $f22b
$f228:
	jmp $f3cf
$f22b:
	jmp $f29b
$f22e:
	lda $00b6
$f231:
	sec
$f232:
	sbc #$70
$f234:
	lsr a
$f235:
	lsr a
$f236:
	lsr a
$f237:
	lsr a
$f238:
	sta $0065
$f23b:
	lda $0063
$f23e:
	clc
$f23f:
	adc $0065
$f242:
	tax
$f243:
	lda $0200,x
$f246:
	sta $0086
$f249:
	lda #$00
$f24b:
	sta $0009
$f24e:
	lda $0086
$f251:
	and $0054
$f254:
	cmp $0009
$f257:
	beq $f25c
$f259:
	jmp $f3cf
$f25c:
	lda #$0f
$f25e:
	sta $0009
$f261:
	lda $00ba
$f264:
	cmp $0009
$f267:
	bne $f26c
$f269:
	jmp $f29b
$f26c:
	lda $0063
$f26f:
	pha
$f270:
	lda $0065
$f273:
	sec
$f274:
	sbc #$01
$f276:
	sta $0011
$f279:
	pla
$f27a:
	clc
$f27b:
	adc $0011
$f27e:
	tax
$f27f:
	lda $0200,x
$f282:
	sta $00bb
$f285:
	lda #$00
$f287:
	sta $0009
$f28a:
	lda $00bb
$f28d:
	and $0054
$f290:
	cmp $0009
$f293:
	beq $f298
$f295:
	jmp $f3cf
$f298:
	jmp $f29b
$f29b:
	dec $00b5
$f29e:
	lda #$ff
$f2a0:
	sta $0009
$f2a3:
	lda $00b5
$f2a6:
	cmp $0009
$f2a9:
	bne $f2b3
$f2ab:
	lda #$0f
$f2ad:
	sta $00b5
$f2b0:
	dec $00b4
$f2b3:
	rts
$f2b4:
	inc $00b5
$f2b7:
	lda #$10
$f2b9:
	sta $0009
$f2bc:
	lda $00b5
$f2bf:
	cmp $0009
$f2c2:
	bne $f2cc
$f2c4:
	lda #$00
$f2c6:
	sta $00b5
$f2c9:
	inc $00b4
$f2cc:
	rts
$f2cd:
	lda $00b4
$f2d0:
	asl a
$f2d1:
	asl a
$f2d2:
	asl a
$f2d3:
	sta $0063
$f2d6:
	lda #$7f
$f2d8:
	sta $0009
$f2db:
	lda $00b6
$f2de:
	cmp $0009
$f2e1:
	bpl $f350
$f2e3:
	beq $f350
$f2e5:
	lda $00b6
$f2e8:
	clc
$f2e9:
	adc $0062
$f2ec:
	lsr a
$f2ed:
	lsr a
$f2ee:
	lsr a
$f2ef:
	lsr a
$f2f0:
	sta $0065
$f2f3:
	lda $0063
$f2f6:
	clc
$f2f7:
	adc $0065
$f2fa:
	sta $0066
$f2fd:
	ldx $0066
$f300:
	lda $0400,x
$f303:
	sta $0086
$f306:
	lda #$00
$f308:
	sta $0009
$f30b:
	lda $0086
$f30e:
	and $0054
$f311:
	cmp $0009
$f314:
	beq $f319
$f316:
	jmp $f3d5
$f319:
	lda #$00
$f31b:
	sta $00bb
$f31e:
	lda #$04
$f320:
	sta $0009
$f323:
	lda $00b5
$f326:
	cmp $0009
$f329:
	bmi $f33a
$f32b:
	beq $f33a
$f32d:
	lda $0066
$f330:
	clc
$f331:
	adc #$08
$f333:
	tax
$f334:
	lda $0400,x
$f337:
	sta $00bb
$f33a:
	lda #$00
$f33c:
	sta $0009
$f33f:
	lda $0064
$f342:
	and $0054
$f345:
	cmp $0009
$f348:
	beq $f34d
$f34a:
	jmp $f3d5
$f34d:
	jmp $f3be
$f350:
	lda $00b6
$f353:
	clc
$f354:
	adc $0062
$f357:
	clc
$f358:
	adc #$90
$f35a:
	lsr a
$f35b:
	lsr a
$f35c:
	lsr a
$f35d:
	lsr a
$f35e:
	sta $0065
$f361:
	lda $0063
$f364:
	clc
$f365:
	adc $0065
$f368:
	sta $0066
$f36b:
	ldx $0066
$f36e:
	lda $0200,x
$f371:
	sta $0086
$f374:
	lda #$00
$f376:
	sta $0009
$f379:
	lda $0086
$f37c:
	and $0054
$f37f:
	cmp $0009
$f382:
	beq $f387
$f384:
	jmp $f3d5
$f387:
	lda #$00
$f389:
	sta $00bb
$f38c:
	lda #$04
$f38e:
	sta $0009
$f391:
	lda $00b5
$f394:
	cmp $0009
$f397:
	bmi $f3a8
$f399:
	beq $f3a8
$f39b:
	lda $0066
$f39e:
	clc
$f39f:
	adc #$08
$f3a1:
	tax
$f3a2:
	lda $0200,x
$f3a5:
	sta $00bb
$f3a8:
	lda #$00
$f3aa:
	sta $0009
$f3ad:
	lda $00bb
$f3b0:
	and $0054
$f3b3:
	cmp $0009
$f3b6:
	beq $f3bb
$f3b8:
	jmp $f3d5
$f3bb:
	jmp $f3be
$f3be:
	lda $00b6
$f3c1:
	clc
$f3c2:
	adc $0062
$f3c5:
	sta $00b6
$f3c8:
	rts
$f3c9:
	lda #$01
$f3cb:
	sta $0064
$f3ce:
	rts
$f3cf:
	lda #$01
$f3d1:
	sta $0067
$f3d4:
	rts
$f3d5:
	lda #$01
$f3d7:
	sta $00b7
$f3da:
	rts
$f3db:
	ldx $0022
$f3de:
	lda $006c
$f3e1:
	sta $0300,x
$f3e4:
	lda #$01
$f3e6:
	clc
$f3e7:
	adc $0022
$f3ea:
	tax
$f3eb:
	lda $006e
$f3ee:
	sta $0300,x
$f3f1:
	lda #$02
$f3f3:
	clc
$f3f4:
	adc $0022
$f3f7:
	tax
$f3f8:
	lda $006d
$f3fb:
	sta $0300,x
$f3fe:
	lda #$03
$f400:
	clc
$f401:
	adc $0022
$f404:
	tax
$f405:
	lda $006b
$f408:
	sta $0300,x
$f40b:
	lda #$04
$f40d:
	clc
$f40e:
	adc $0022
$f411:
	tax
$f412:
	lda $006c
$f415:
	sta $0300,x
$f418:
	lda #$05
$f41a:
	clc
$f41b:
	adc $0022
$f41e:
	tax
$f41f:
	lda $006e
$f422:
	clc
$f423:
	adc #$02
$f425:
	sta $0300,x
$f428:
	lda #$06
$f42a:
	clc
$f42b:
	adc $0022
$f42e:
	tax
$f42f:
	lda $006d
$f432:
	sta $0300,x
$f435:
	lda #$07
$f437:
	clc
$f438:
	adc $0022
$f43b:
	tax
$f43c:
	lda $006b
$f43f:
	clc
$f440:
	adc #$08
$f442:
	sta $0300,x
$f445:
	lda $0022
$f448:
	clc
$f449:
	adc #$08
$f44b:
	sta $0022
$f44e:
	rts
$f44f:
	ldx $0022
$f452:
	lda $006c
$f455:
	sta $0300,x
$f458:
	lda #$01
$f45a:
	clc
$f45b:
	adc $0022
$f45e:
	tax
$f45f:
	lda $006e
$f462:
	sta $0300,x
$f465:
	lda #$02
$f467:
	clc
$f468:
	adc $0022
$f46b:
	tax
$f46c:
	lda $006d
$f46f:
	sta $0300,x
$f472:
	lda #$03
$f474:
	clc
$f475:
	adc $0022
$f478:
	tax
$f479:
	lda #$08
$f47b:
	clc
$f47c:
	adc $006b
$f47f:
	sta $0300,x
$f482:
	lda #$04
$f484:
	clc
$f485:
	adc $0022
$f488:
	tax
$f489:
	lda $006c
$f48c:
	sta $0300,x
$f48f:
	lda #$05
$f491:
	clc
$f492:
	adc $0022
$f495:
	tax
$f496:
	lda $006e
$f499:
	clc
$f49a:
	adc #$02
$f49c:
	sta $0300,x
$f49f:
	lda #$06
$f4a1:
	clc
$f4a2:
	adc $0022
$f4a5:
	tax
$f4a6:
	lda $006d
$f4a9:
	sta $0300,x
$f4ac:
	lda #$07
$f4ae:
	clc
$f4af:
	adc $0022
$f4b2:
	tax
$f4b3:
	lda $006b
$f4b6:
	sta $0300,x
$f4b9:
	lda $0022
$f4bc:
	clc
$f4bd:
	adc #$08
$f4bf:
	sta $0022
$f4c2:
	rts
$f4c3:
	jsr $f3db
$f4c6:
	lda $006c
$f4c9:
	clc
$f4ca:
	adc #$10
$f4cc:
	sta $006c
$f4cf:
	lda $006e
$f4d2:
	clc
$f4d3:
	adc #$04
$f4d5:
	sta $006e
$f4d8:
	jsr $f3db
$f4db:
	rts
$f4dc:
	jsr $f44f
$f4df:
	lda $006c
$f4e2:
	clc
$f4e3:
	adc #$10
$f4e5:
	sta $006c
$f4e8:
	lda $006e
$f4eb:
	clc
$f4ec:
	adc #$04
$f4ee:
	sta $006e
$f4f1:
	jsr $f44f
$f4f4:
	rts
$f4f5:
	ldx $0022
$f4f8:
	lda $006c
$f4fb:
	sta $0300,x
$f4fe:
	lda #$01
$f500:
	clc
$f501:
	adc $0022
$f504:
	tax
$f505:
	lda $006e
$f508:
	sta $0300,x
$f50b:
	lda #$02
$f50d:
	clc
$f50e:
	adc $0022
$f511:
	tax
$f512:
	lda $006d
$f515:
	sta $0300,x
$f518:
	lda #$03
$f51a:
	clc
$f51b:
	adc $0022
$f51e:
	tax
$f51f:
	lda $006b
$f522:
	sta $0300,x
$f525:
	lda $0022
$f528:
	clc
$f529:
	adc #$04
$f52b:
	sta $0022
$f52e:
	rts
$f52f:
	ldx $0022
$f532:
	lda $006c
$f535:
	sta $0300,x
$f538:
	lda #$01
$f53a:
	clc
$f53b:
	adc $0022
$f53e:
	tax
$f53f:
	lda $006e
$f542:
	sta $0300,x
$f545:
	lda #$02
$f547:
	clc
$f548:
	adc $0022
$f54b:
	tax
$f54c:
	lda $006d
$f54f:
	sta $0300,x
$f552:
	lda #$03
$f554:
	clc
$f555:
	adc $0022
$f558:
	tax
$f559:
	lda $006b
$f55c:
	sec
$f55d:
	sbc #$08
$f55f:
	sta $0300,x
$f562:
	lda #$04
$f564:
	clc
$f565:
	adc $0022
$f568:
	tax
$f569:
	lda $006c
$f56c:
	sta $0300,x
$f56f:
	lda #$05
$f571:
	clc
$f572:
	adc $0022
$f575:
	tax
$f576:
	lda $006e
$f579:
	clc
$f57a:
	adc #$02
$f57c:
	sta $0300,x
$f57f:
	lda #$06
$f581:
	clc
$f582:
	adc $0022
$f585:
	tax
$f586:
	lda $006d
$f589:
	sta $0300,x
$f58c:
	lda #$07
$f58e:
	clc
$f58f:
	adc $0022
$f592:
	tax
$f593:
	lda $006b
$f596:
	sta $0300,x
$f599:
	lda #$08
$f59b:
	clc
$f59c:
	adc $0022
$f59f:
	tax
$f5a0:
	lda $006c
$f5a3:
	sta $0300,x
$f5a6:
	lda #$09
$f5a8:
	clc
$f5a9:
	adc $0022
$f5ac:
	tax
$f5ad:
	lda $006e
$f5b0:
	clc
$f5b1:
	adc #$04
$f5b3:
	sta $0300,x
$f5b6:
	lda #$0a
$f5b8:
	clc
$f5b9:
	adc $0022
$f5bc:
	tax
$f5bd:
	lda $006d
$f5c0:
	sta $0300,x
$f5c3:
	lda #$0b
$f5c5:
	clc
$f5c6:
	adc $0022
$f5c9:
	tax
$f5ca:
	lda $006b
$f5cd:
	clc
$f5ce:
	adc #$08
$f5d0:
	sta $0300,x
$f5d3:
	lda $0022
$f5d6:
	clc
$f5d7:
	adc #$0c
$f5d9:
	sta $0022
$f5dc:
	rts
$f5dd:
	jsr $db80
$f5e0:
	jsr $db8e
$f5e3:
	jsr $c31d
$f5e6:
	jsr $dbc3
$f5e9:
	jsr $dbda
$f5ec:
	jsr $db8e
$f5ef:
	jsr $db8e
$f5f2:
	jsr $f6d3
$f5f5:
	lda #$00
$f5f7:
	sta $00bc
$f5fa:
	lda #$5a
$f5fc:
	sta $00bd
$f5ff:
	lda #$56
$f601:
	sta $00be
$f604:
	lda #$ff
$f606:
	sta $00bf
$f609:
	lda #$01
$f60b:
	sta $00c0
$f60e:
	lda #$00
$f610:
	sta $00c1
$f613:
	lda #$00
$f615:
	sta $005c
$f618:
	lda #$00
$f61a:
	sta $00c2
$f61d:
	jsr $f7e2
$f620:
	jsr $f7ee
$f623:
	jsr $f7e8
$f626:
	jsr $f7e2
$f629:
	jsr $f7ee
$f62c:
	lda #$00
$f62e:
	sta $0009
$f631:
	lda $00c2
$f634:
	cmp $0009
$f637:
	beq $f698
	jsr $f6e9
	lda $00be
	clc
	adc $00bf
	sta $00be
	lda $00bd
	clc
	adc $00c0
	sta $00bd
	lda #$32
	sta $0009
	lda $00be
	cmp $0009
	bne $f662
	lda #$01
	sta $00bf
	lda #$82
	sta $0009
	lda $00be
	cmp $0009
	bne $f674
	lda #$ff
	sta $00bf
	lda #$46
	sta $0009
	lda $00bd
	cmp $0009
	bne $f686
	lda #$01
	sta $00c0
	lda #$6e
	sta $0009
	lda $00bd
	cmp $0009
	bne $f698
	lda #$ff
	sta $00c0
$f698:
	lda $0004
$f69b:
	clc
$f69c:
	adc #$03
$f69e:
	sta $0004
$f6a1:
	lda $0005
$f6a4:
	clc
$f6a5:
	adc #$07
$f6a7:
	sta $0005
$f6aa:
	jsr $f836
$f6ad:
	lda #$00
$f6af:
	sta $0009
$f6b2:
	lda $0019
$f6b5:
	cmp $0009
$f6b8:
	beq $f6bf
	lda #$01
	sta $00c2
$f6bf:
	lda #$00
$f6c1:
	sta $0009
$f6c4:
	lda $001a
$f6c7:
	cmp $0009
$f6ca:
	beq $f6cf
$f6cc:
	jmp $f6d2
$f6cf:
	jmp $f61d
$f6d2:
	rts
$f6d3:
	jsr $dc26
$f6d6:
	jsr $db8e
$f6d9:
	jsr $f71c
$f6dc:
	jsr $db8e
$f6df:
	jsr $f7a8
$f6e2:
	jsr $db8e
$f6e5:
	jsr $db8e
$f6e8:
	rts
	lda #$00
	sta OamAddr_2003
	ldy #$f0
	lda $00bd
	sta $0069
	lda $00be
	sta OamData_2004
	inx
	tya
	sta OamData_2004
	inx
	lda #$20
	sta OamData_2004
	inx
	lda $0069
	sta OamData_2004
	clc
	adc #$08
	sta $0069
	inx
	iny
	iny
	cpy #$00
	bne $f6f6
	rts
$f71c:
	jsr $db8e
$f71f:
	lda #$20
$f721:
	sta PpuAddr_2006
$f724:
	lda #$c4
$f726:
	sta PpuAddr_2006
$f729:
	ldx #$00
$f72b:
	lda $e2b2,x
$f72e:
	sta PpuData_2007
$f731:
	inx
$f732:
	cpx #$80
$f734:
	bne $f72b
$f736:
	jsr $db8e
$f739:
	lda #$21
$f73b:
	sta PpuAddr_2006
$f73e:
	lda #$44
$f740:
	sta PpuAddr_2006
$f743:
	ldx #$80
$f745:
	lda $e2b2,x
$f748:
	sta PpuData_2007
$f74b:
	inx
$f74c:
	cpx #$b9
$f74e:
	bne $f745
$f750:
	jsr $db8e
$f753:
	lda #$21
$f755:
	sta PpuAddr_2006
$f758:
	lda #$ab
$f75a:
	sta PpuAddr_2006
$f75d:
	ldx #$00
$f75f:
	lda $e36b,x
$f762:
	sta PpuData_2007
$f765:
	inx
$f766:
	cpx #$80
$f768:
	bne $f75f
$f76a:
	jsr $db8e
$f76d:
	lda #$22
$f76f:
	sta PpuAddr_2006
$f772:
	lda #$c9
$f774:
	sta PpuAddr_2006
$f777:
	ldx #$00
$f779:
	lda $e3eb,x
$f77c:
	sta PpuData_2007
$f77f:
	inx
$f780:
	cpx #$0d
$f782:
	bne $f779
$f784:
	jsr $db8e
$f787:
	lda #$23
$f789:
	sta PpuAddr_2006
$f78c:
	lda #$c0
$f78e:
	sta PpuAddr_2006
$f791:
	ldx #$00
$f793:
	lda #$00
$f795:
	sta PpuData_2007
$f798:
	inx
$f799:
	cpx #$18
$f79b:
	bne $f795
$f79d:
	lda #$55
$f79f:
	sta PpuData_2007
$f7a2:
	inx
$f7a3:
	cpx #$40
$f7a5:
	bne $f79f
$f7a7:
	rts
$f7a8:
	lda #$3f
$f7aa:
	sta PpuAddr_2006
$f7ad:
	lda #$00
$f7af:
	sta PpuAddr_2006
$f7b2:
	lda #$00
$f7b4:
	sta $0066
$f7b7:
	ldx $0066
$f7ba:
	lda $e23a,x
$f7bd:
	sta PpuData_2007
$f7c0:
	inc $0066
$f7c3:
	lda #$1f
$f7c5:
	sta $0009
$f7c8:
	lda $0066
$f7cb:
	cmp $0009
$f7ce:
	bpl $f7d3
$f7d0:
	jmp $f7b7
$f7d3:
	rts
	ldy $0011
	lda #$00
	sta PpuData_2007
	dey
	cpy #$00
	bne $f7d9
	rts
$f7e2:
	lda PpuStatus_2002
$f7e5:
	bpl $f7e2
$f7e7:
	rts
$f7e8:
	lda PpuStatus_2002
$f7eb:
	bmi $f7e8
$f7ed:
	rts
$f7ee:
	lda PpuStatus_2002
$f7f1:
	and #$10
$f7f3:
	bne $f7ee
$f7f5:
	ldy #$c8
$f7f7:
	lda PpuStatus_2002
$f7fa:
	and #$10
$f7fc:
	bne $f7f7
$f7fe:
	lda #$00
$f800:
	sta PpuScroll_2005
$f803:
	sta PpuScroll_2005
$f806:
	dey
$f807:
	cpy #$00
$f809:
	bne $f7f7
$f80b:
	ldx $001d
$f80e:
	ldy #$ff
$f810:
	lda PpuStatus_2002
$f813:
	and #$10
$f815:
	bne $f810
$f817:
	lda $e4eb,x
$f81a:
	sta PpuScroll_2005
$f81d:
	lda #$00
$f81f:
	sta PpuScroll_2005
$f822:
	inx
$f823:
	dey
$f824:
	cpy #$00
$f826:
	bne $f810
$f828:
	inc $001d
$f82b:
	lda #$00
$f82d:
	sta PpuScroll_2005
$f830:
	lda #$00
$f832:
	sta PpuScroll_2005
$f835:
	rts
$f836:
	jsr $f8b1
$f839:
	lda #$0a
$f83b:
	sta $0009
$f83e:
	lda $00c1
$f841:
	cmp $0009
$f844:
	bmi $f85d
	lda #$00
	sta $0009
	lda $005c
	cmp $0009
	beq $f854
	rts
	lda #$01
	sta $005c
	jsr $d5d8
	rts
$f85d:
	lda #$00
$f85f:
	sta $0009
$f862:
	lda $00c3
$f865:
	cmp $0009
$f868:
	beq $f880
	lda #$00
	sta $0009
	lda $00c4
	cmp $0009
	bne $f880
	lda #$00
	sta $00c3
	inc $00c1
	rts
$f880:
	lda #$00
$f882:
	sta $0009
$f885:
	lda $00c4
$f888:
	cmp $0009
$f88b:
	bne $f88e
$f88d:
	rts
$f88e:
	ldx $00c1
$f891:
	lda $f908,x
$f894:
	sta $00c5
$f897:
	lda $00c5
$f89a:
	sta $0009
$f89d:
	lda $00c4
$f8a0:
	cmp $0009
$f8a3:
	bne $f8ab
	lda #$01
	sta $00c3
	rts
$f8ab:
	lda #$00
$f8ad:
	sta $00c1
$f8b0:
	rts
$f8b1:
	jsr $d539
$f8b4:
	lda $0013
$f8b7:
	sta $00c4
$f8ba:
	lda $00c4
$f8bd:
	asl a
$f8be:
	clc
$f8bf:
	adc $0014
$f8c2:
	sta $00c4
$f8c5:
	lda $00c4
$f8c8:
	asl a
$f8c9:
	clc
$f8ca:
	adc $0015
$f8cd:
	sta $00c4
$f8d0:
	lda $00c4
$f8d3:
	asl a
$f8d4:
	clc
$f8d5:
	adc $0016
$f8d8:
	sta $00c4
$f8db:
	lda $00c4
$f8de:
	asl a
$f8df:
	clc
$f8e0:
	adc $0018
$f8e3:
	sta $00c4
$f8e6:
	lda $00c4
$f8e9:
	asl a
$f8ea:
	clc
$f8eb:
	adc $0017
$f8ee:
	sta $00c4
$f8f1:
	lda $00c4
$f8f4:
	asl a
$f8f5:
	clc
$f8f6:
	adc $0019
$f8f9:
	sta $00c4
$f8fc:
	lda $00c4
$f8ff:
	asl a
$f900:
	clc
$f901:
	adc $001a
$f904:
	sta $00c4
$f907:
	rts