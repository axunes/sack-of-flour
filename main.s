.include "nes.inc"

     ; unidentified
     
     ; unmapped
     
     ; unidentified

.segment "PRG0E"
.org $C000
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
sta $0006
jsr $c26a
lda #$00
sta $0007
jsr $e5eb
lda #$03
sta $0008
jsr $dc71
jsr $cabb
jsr $d539
jsr $c7ec
jsr $d2bb
jsr $e8ed
jsr $c24e
lda #$00
sta $0009
lda $000a
cmp $0009
beq $c069
jsr $e679
jsr $c17f
jsr $e816
jsr $db8e
jsr $db61
lda #$00
sta $0009
lda $000b
cmp $0009
beq $c085
jmp $c0e9
lda #$fc
sta $0009
lda $000c
and #$fc
cmp $0009
bne $c0aa
jsr $c9e2
lda #$02
sta $0009
lda $000c
cmp $0009
bne $c0a7
jmp $c04a
jmp $c0cd
lda #$00
sta $0009
lda $000a
cmp $0009
bne $c0ca
lda #$00
sta $0009
lda $000d
cmp $0009
bne $c0ca
jsr $cab7
jmp $c0cd
jmp $c04a
lda #$00
sta $0009
lda $0008
cmp $0009
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
sta $000e
jsr $db8e
jsr $d5ed
dec $000e
lda #$00
sta $0009
lda $000e
cmp $0009
beq $c110
jmp $c0f7
jsr $d5c3
lda #$01
sta $000f
jsr $db8e
jsr $d2bb
jsr $db61
lda $000c
sec
sbc #$03
sta $000c
lda #$00
sta $0009
lda $000c
and #$f8
cmp $0009
beq $c13c
jmp $c118
lda #$1e
sta $000e
jsr $db8e
jsr $d5ed
dec $000e
lda #$00
sta $0009
lda $000e
cmp $0009
beq $c15a
jmp $c141
jmp $c15d
inc $0006
lda #$05
sta $0009
lda $0006
cmp $0009
bne $c170
jmp $d8b7
jsr $c26a
jsr $c1c2
jsr $dc71
jsr $cabb
jmp $c04a
     ; sub start
lda $0004
pha
lda #$0d
pha
lda $0010
clc
adc $0086
sta $0011
pla
clc
adc $0011
sta $0011
pla
clc
adc $0011
sta $0004
lda $0005
pha
lda #$11
pha
lda $0012
clc
adc $005b
sta $0011
pla
clc
adc $0011
sta $0011
pla
clc
adc $0011
sta $0005
rts
     
     ; sub start
lda #$00
sta $0013
lda #$00
sta $0014
lda #$00
sta $0015
lda #$00
sta $0016
lda #$00
sta $0017
lda #$00
sta $0018
lda #$00
sta $0019
lda #$00
sta $001a
lda #$00
sta $001b
lda #$01
sta $001c
lda #$00
sta $000e
lda #$00
sta $001d
lda #$00
sta $001e
lda #$00
sta $001f
lda #$00
sta $0020
lda #$00
sta $0021
lda #$10
sta $0022
lda #$00
sta $000b
lda #$00
sta $0023
lda #$20
sta $0024
lda #$00
sta $0025
lda #$00
sta $0026
lda #$00
sta $0027
rts
     
     ; sub start
lda #$00
sta ApuStatus_4015
lda #$1f
sta ApuStatus_4015
rts
     
     ; sub start
ldx #$00
lda #$00
sta Sq0Duty_4000,x
inx
cpx #$10
bne $c245
rts
     
     ; sub start
lda #$0f
sta $0009
lda $0022
cmp $0009
bpl $c25c
rts
     
ldx $0022
lda #$f5
sta $0300,x
inc $0022
jmp $c24e
     ; sub start
lda $0006
asl a
sta $0028
lda #$06
sta $8000
lda $0028
sta $8001
lda #$07
sta $8000
lda $0028
clc
adc #$01
sta $8001
rts
     
     ; sub start
lda #$00
sta $8000
lda #$08
sta $8001
lda #$01
sta $8000
lda #$0a
sta $8001
lda $0006
asl a
asl a
clc
adc #$0c
sta $0028
lda #$02
sta $8000
lda $0028
sta $8001
lda #$03
sta $8000
lda $0028
clc
adc #$01
sta $8001
lda #$04
sta $8000
lda $0028
clc
adc #$02
sta $8001
lda #$05
sta $8000
lda $0028
clc
adc #$03
sta $8001
rts
     
     ; sub start
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
     
     ; sub start
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
     
     ; sub start
jmp $c31d
     ; unidentified
     ; sub start
jsr $dc6b
jsr $db8e
jsr $dbc3
jsr $dc26
jsr $db8e
ldx #$00
lda #$f5
sta $002a,x
sta $0032,x
sta $0042,x
sta $004a,x
sta $003a,x
inx
cpx #$08
bne $c371
lda #$07
sta $0052
lda #$0b
sta $0029
jsr $db8e
lda #$07
sta $0052
jsr $db8e
jsr $c4b4
jsr $db8e
jsr $c5aa
jsr $db8e
jsr $c6a0
dec $0052
lda #$ff
sta $0009
lda $0052
cmp $0009
beq $c3bc
jmp $c397
lda #$00
sta $0052
jsr $db8e
jsr $c706
inc $0052
lda #$05
sta $0009
lda $0052
cmp $0009
beq $c3da
jmp $c3c1
jsr $db8e
jsr $c414
lda #$00
sta PpuScroll_2005
lda #$00
sta PpuScroll_2005
rts
     
     ; sub start
jsr $db8e
lda #$01
sta $0009
lda $0053
cmp $0009
bne $c3ff
jsr $c47d
rts
     
lda #$03
sta $0009
lda $0053
cmp $0009
bne $c410
jsr $c414
rts
     
jsr $c44b
rts
     
     ; sub start
lda #$55
sta $0054
lda #$00
sta $0053
lda #$3f
sta PpuAddr_2006
lda #$00
sta PpuAddr_2006
lda #$00
sta $000e
ldx $000e
lda $8004,x
sta PpuData_2007
inc $000e
lda #$20
sta $0009
lda $000e
cmp $0009
bne $c447
rts
     
jmp $c42d
     ; unidentified
     ; sub start
lda #$01
clc
adc $0053
sta $0053
lda #$3f
sta PpuAddr_2006
lda #$00
sta PpuAddr_2006
lda #$00
sta $000e
lda #$0e
sta PpuData_2007
inc $000e
lda #$20
sta $0009
lda $000e
cmp $0009
bne $c479
rts
     
jmp $c463
     ; unidentified
     ; sub start
lda #$aa
sta $0054
lda #$02
sta $0053
lda #$3f
sta PpuAddr_2006
lda #$00
sta PpuAddr_2006
lda #$00
sta $000e
ldx $000e
lda $8024,x
sta PpuData_2007
inc $000e
lda #$20
sta $0009
lda $000e
cmp $0009
bne $c4b0
rts
     
jmp $c496
     ; unidentified
     ; sub start
lda $0052
and #$07
sta $0055
ldx $0055
lda $002a,x
sta $0011
lda $0052
sta $0009
lda $0011
cmp $0009
bne $c4d4
rts
     
ldx $0055
lda $0052
sta $002a,x
lda $0052
asl a
tax
lda $e13a,x
sta $0000
inx
lda $e13a,x
sta $0001
ldx $0055
lda $e10a,x
sta $0056
ldx $0055
lda $e112,x
sta $0057
ldy #$00
ldx #$00
lda $0056
sta PpuAddr_2006
lda $0057
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
lda $0057
adc #$20
sta $0057
lda $0056
adc #$00
sta $0056
lda $0056
sta PpuAddr_2006
lda $0057
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
lda $0057
adc #$20
sta $0057
lda $0056
adc #$00
sta $0056
jmp $c505
rts
     
     ; sub start
lda $0052
and #$07
sta $0055
ldx $0055
lda $0032,x
sta $0011
lda $0052
sta $0009
lda $0011
cmp $0009
bne $c5ca
rts
     
ldx $0055
lda $0052
sta $0032,x
lda $0052
asl a
tax
lda $e13a,x
sta $0000
inx
lda $e13a,x
sta $0001
ldx $0055
lda $e11a,x
sta $0056
ldx $0055
lda $e122,x
sta $0057
ldy #$20
ldx #$00
lda $0056
sta PpuAddr_2006
lda $0057
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
lda $0057
adc #$20
sta $0057
lda $0056
adc #$00
sta $0056
lda $0056
sta PpuAddr_2006
lda $0057
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
lda $0057
adc #$20
sta $0057
lda $0056
adc #$00
sta $0056
jmp $c5fb
rts
     
     ; sub start
lda $0052
and #$07
sta $0055
ldx $0055
lda $003a,x
sta $0011
lda $0052
sta $0009
lda $0011
cmp $0009
bne $c6c0
rts
     
ldx $0055
lda $0052
sta $003a,x
ldx $0055
lda $e12a,x
sta $0056
ldx $0055
lda $e132,x
sta $0057
ldy #$3c
lda $0056
sta PpuAddr_2006
lda $0057
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
lda $0057
adc #$08
sta $0057
jmp $c6dd
rts
     
     ; sub start
lda $0052
and #$07
sta $0055
ldx $0055
lda $0042,x
sta $0011
lda $0052
sta $0009
lda $0011
cmp $0009
bne $c726
rts
     
ldx $0055
lda $0052
sta $0042,x
lda $0052
asl a
tax
lda $e13a,x
sta $0000
inx
lda $e13a,x
sta $0001
ldy #$4c
clc
lda $0052
asl a
asl a
asl a
asl a
asl a
sta $0026
tax
lda ($00),y
iny
sta $0011
and #$03
sta $0400,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0400,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0400,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0400,x
lsr $0011
lsr $0011
inx
cpy #$54
bne $c750
ldy #$54
clc
lda $0052
asl a
asl a
asl a
asl a
asl a
sta $0026
tax
lda ($00),y
iny
sta $0011
and #$03
sta $0200,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0200,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0200,x
lsr $0011
lsr $0011
inx
lda $0011
and #$03
sta $0200,x
lsr $0011
lsr $0011
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
     
     ; sub start
lda #$00
sta $0058
lda #$00
sta $0059
lda #$00
sta $0012
lda #$00
sta $005a
lda #$00
sta $0009
lda $001a
cmp $0009
beq $c810
jsr $c99e
lda #$00
sta $0009
lda $0015
cmp $0009
beq $c820
jsr $dd2d
lda #$00
sta $0009
lda $000a
cmp $0009
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
lda #$00
sta $0009
lda $0016
cmp $0009
beq $c862
lda #$01
sta $0012
lda #$00
sta $0009
lda $0017
cmp $0009
beq $c88c
lda #$01
sta $001c
jsr $cbaa
lda #$00
sta $0009
lda $0014
cmp $0009
beq $c887
jsr $cbaa
lda #$01
sta $0059
lda #$00
sta $0009
lda $0018
cmp $0009
beq $c8b6
lda #$00
sta $001c
jsr $ccfa
lda #$00
sta $0009
lda $0014
cmp $0009
beq $c8b1
jsr $ccfa
lda #$01
sta $0059
lda #$00
sta $0009
lda $0013
cmp $0009
bne $c8dd
lda #$00
sta $0009
lda $005b
cmp $0009
beq $c8d5
lda #$0a
sta $0010
lda #$00
sta $005b
jmp $c984
lda #$00
sta $0009
lda $0013
cmp $0009
beq $c90c
lda #$01
sta $0009
lda $005c
cmp $0009
bne $c90c
lda #$23
sta $0010
lda #$01
sta $000f
lda #$01
sta $005a
jsr $d5d8
jmp $c984
lda #$00
sta $0009
lda $0013
cmp $0009
beq $c92c
lda #$00
sta $0009
lda $005b
cmp $0009
beq $c92c
dec $005b
jmp $c984
lda #$00
sta $0009
lda $0013
cmp $0009
beq $c984
lda #$00
sta $0009
lda $005d
cmp $0009
beq $c984
jsr $d584
lda #$01
sta $000f
lda #$28
sta $0010
lda #$03
sta $0009
lda $0006
cmp $0009
bne $c965
lda #$2d
sta $0010
lda #$00
sta $0009
lda $0012
cmp $0009
beq $c977
lda #$26
sta $0010
lda #$00
sta $005d
lda #$0f
sta $005b
jmp $c984
jsr $cb8c
lda #$00
sta $0009
lda $000d
cmp $0009
beq $c997
dec $000d
jsr $ee7e
jsr $d4d9
rts
     
     ; sub start
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
     
     ; sub start
lda $805c
sta $0009
lda $005e
cmp $0009
bne $c9f3
jmp $ca36
lda $805d
sta $0009
lda $005e
cmp $0009
bne $ca04
jmp $ca36
lda $805e
sta $0009
lda $005e
cmp $0009
bne $ca15
jmp $ca36
lda #$00
sta $000e
jsr $db8e
jsr $d5ed
inc $000e
lda #$1e
sta $0009
lda $000e
cmp $0009
beq $ca33
jmp $ca1a
jmp $cab7
jsr $dc26
lda $805f
sta $0009
lda $005e
cmp $0009
beq $ca6c
jsr $e679
     ; unidentified
     
lda #$02
sta $000c
rts
     
     ; sub start
lda #$00
sta $0009
lda $000d
cmp $0009
beq $ca80
rts
     
lda #$96
sta $000d
lda #$01
sta $000f
lda #$0a
sta $0010
dec $000a
lda #$ff
sta $0009
lda $000a
cmp $0009
bne $caa4
lda #$00
sta $000a
lda #$00
sta $0009
lda $000a
cmp $0009
bne $cab6
lda #$37
sta $0010
rts
     
     ; sub start
dec $0008
rts
     
     ; sub start
jsr $c241
jsr $dbc3
jsr $dbda
lda #$03
sta $000a
lda #$64
sta $000d
lda #$01
sta $001c
lda #$0a
sta $000c
lda #$00
sta $005f
lda #$02
sta $005e
lda #$01
sta $0009
lda $0027
cmp $0009
bne $caf5
lda $8059
sta $005e
lda #$00
sta $0010
lda #$00
sta $000f
lda #$ff
sta $0060
jsr $d825
lda #$00
sta $0061
jsr $db8e
inc $0061
lda #$78
sta $0009
lda $0061
cmp $0009
bpl $cb22
jmp $cb0c
lda #$00
sta $0061
jsr $dbc3
jsr $c35e
lda #$00
sta $0007
jsr $e5eb
lda #$0f
sta ApuStatus_4015
lda #$00
sta $001e
lda #$00
sta $001f
lda #$00
sta $0020
lda #$00
sta $0021
lda $0020
sta $0009
lda $005e
sec
sbc #$06
cmp $0009
bmi $cb75
jsr $d6e5
lda #$00
sta $0009
lda $0058
cmp $0009
beq $cb72
jsr $d629
jmp $cb4e
jsr $c28b
jsr $db8e
jsr $e7c4
lda #$00
sta $005d
lda #$00
sta $0025
jsr $d2bb
rts
     
     ; sub start
ldx $0010
lda $e040,x
sta $0062
lda #$01
sta $0009
lda $000f
cmp $0009
bne $cba6
jmp $ce4a
     ; unidentified
jmp $d023
     ; unidentified
     ; sub start
lda #$03
sta $0009
lda $005f
cmp $0009
bpl $cbba
jmp $d204
lda $005e
asl a
asl a
asl a
clc
adc #$08
sta $0063
lda #$7f
sta $0009
lda $000c
cmp $0009
bmi $cc2b
lda #$81
sta $0009
lda $000c
cmp $0009
bpl $cc2b
ldx $0063
lda $0200,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cbfa
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cc0a
jmp $d204
lda $0063
clc
adc #$06
tax
lda $0400,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cc28
rts
     
jmp $d204
lda #$7f
sta $0009
lda $000c
cmp $0009
bpl $cc97
lda $000c
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0400,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cc66
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cc76
jmp $d204
lda $0066
sec
sbc #$01
tax
lda $0400,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cc94
rts
     
jmp $d204
lda $000c
sec
sbc #$70
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0200,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $ccc8
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $ccd8
jmp $d204
lda $0066
sec
sbc #$01
tax
lda $0200,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $ccf6
rts
     
jsr $d204
rts
     
     ; sub start
lda #$00
sta $0009
lda $005f
cmp $0009
beq $cd0a
jmp $d255
lda $005e
sec
sbc #$01
asl a
asl a
asl a
sta $0063
lda #$7f
sta $0009
lda $000c
cmp $0009
bmi $cd7b
lda #$81
sta $0009
lda $000c
cmp $0009
bpl $cd7b
ldx $0063
lda $0200,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cd4a
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cd5a
jmp $d255
lda $0063
clc
adc #$06
tax
lda $0400,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cd78
rts
     
jmp $d255
lda #$7f
sta $0009
lda $000c
cmp $0009
bpl $cde7
lda $000c
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0400,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cdb6
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cdc6
jmp $d255
lda $0066
sec
sbc #$01
tax
lda $0400,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cde4
rts
     
jmp $d255
lda $000c
clc
adc #$90
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0200,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $ce18
rts
     
lda #$00
sta $0009
lda $0012
cmp $0009
beq $ce28
jmp $d255
lda $0066
sec
sbc #$01
tax
lda $0200,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $ce46
rts
     
jmp $d255
     ; unidentified
lda #$00
sta $0009
lda $000c
and #$f8
cmp $0009
bne $ce6f
dec $0010
lda #$00
sta $0009
lda $0010
cmp $0009
bne $ce6e
lda #$00
sta $000f
rts
     
lda #$00
sta $0009
lda $000a
cmp $0009
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
     
lda $005e
asl a
asl a
asl a
sta $0063
lda #$97
sta $0009
lda $000c
cmp $0009
bmi $ceb8
jmp $cf71
lda $000c
pha
lda #$e8
sec
sbc $0062
sta $0011
pla
clc
adc $0011
lsr a
lsr a
lsr a
lsr a
sta $0065
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cef7
lda $000c
pha
lda #$ef
sec
sbc $0062
sta $0011
pla
clc
adc $0011
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0400,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cf1d
jmp $d01a
lda #$00
sta $0064
lda #$04
sta $0009
lda $005f
cmp $0009
bmi $cf3e
beq $cf3e
lda $0066
clc
adc #$08
tax
lda $0400,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cf51
jmp $d01a
lda $000c
sec
sbc $0062
sta $000c
dec $0010
lda #$00
sta $0009
lda $0010
cmp $0009
bne $cf70
lda #$00
sta $000f
rts
     
lda $000c
clc
adc #$79
sec
sbc $0062
lsr a
lsr a
lsr a
lsr a
sta $0065
lda #$00
sta $0009
lda $0012
cmp $0009
beq $cfa0
lda $000c
clc
adc #$7f
sec
sbc $0062
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0200,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $cfc6
jmp $d01a
lda #$00
sta $0064
lda #$04
sta $0009
lda $005f
cmp $0009
bmi $cfe7
beq $cfe7
lda $0066
clc
adc #$08
tax
lda $0200,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $cffa
jmp $d01a
lda $000c
sec
sbc $0062
sta $000c
dec $0010
lda #$00
sta $0009
lda $0010
cmp $0009
bne $d019
lda #$00
sta $000f
rts
     
lda #$00
sta $000f
jsr $dc92
rts
     
lda #$00
sta $0009
lda $000a
cmp $0009
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
     
lda $005e
asl a
asl a
asl a
sta $0063
lda #$e8
sta $0009
lda $000c
and #$f8
cmp $0009
bne $d080
lda $000c
clc
adc $0062
sta $000c
rts
     
lda #$f0
sta $0009
lda $000c
and #$f0
cmp $0009
bne $d09a
lda $000c
clc
adc $0062
sta $000c
rts
     
lda #$7f
sta $0009
lda $000c
cmp $0009
bmi $d0aa
jmp $d144
lda $000c
clc
adc $0062
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0400,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $d0de
jmp $d1e1
lda #$00
sta $0064
lda #$04
sta $0009
lda $005f
cmp $0009
bmi $d0ff
beq $d0ff
lda $0066
clc
adc #$08
tax
lda $0400,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $d112
jmp $d1e1
lda $000c
clc
adc $0062
sta $000c
lda #$00
sta $0009
lda $0062
cmp $0009
beq $d12e
lda #$00
sta $000f
lda #$3c
sta $0009
lda $0010
cmp $0009
bpl $d13e
inc $0010
lda #$00
sta $005d
rts
     
lda $000c
clc
adc $0062
clc
adc #$90
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0200,x
sta $0067
lda #$00
sta $0009
lda $0067
and $0054
cmp $0009
beq $d17b
jmp $d1e1
lda #$00
sta $0064
lda #$04
sta $0009
lda $005f
cmp $0009
bmi $d19c
beq $d19c
lda $0066
clc
adc #$08
tax
lda $0200,x
sta $0064
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $d1af
jmp $d1e1
lda $000c
clc
adc $0062
sta $000c
lda #$00
sta $0009
lda $0062
cmp $0009
beq $d1cb
lda #$00
sta $000f
lda #$3c
sta $0009
lda $0010
cmp $0009
bpl $d1db
inc $0010
lda #$00
sta $005d
rts
     
lda #$02
sta $000f
lda #$11
sta $0009
lda $0010
cmp $0009
bmi $d1f9
lda #$0c
sta $0010
rts
     
lda #$00
sta $0010
lda #$01
sta $005d
rts
     
     ; sub start
lda $8058
sta $0009
lda $005e
cmp $0009
bne $d213
rts
     
lda $8059
sta $0009
lda $005e
cmp $0009
bne $d226
lda #$01
sta $0027
inc $005f
lda #$10
sta $0009
lda $005f
cmp $0009
bne $d23e
lda #$00
sta $005f
inc $005e
lda #$0a
sta $0009
lda $005e
sec
sbc $0020
cmp $0009
bmi $d254
beq $d254
jsr $d6e5
rts
     
     ; sub start
lda #$00
sta $0009
lda $005e
cmp $0009
bne $d270
lda #$08
sta $0009
lda $005f
cmp $0009
bpl $d270
rts
     
lda $805a
sta $0009
lda $005e
cmp $0009
bne $d28c
lda #$01
sta $0009
lda $005f
cmp $0009
bpl $d28c
rts
     
dec $005f
lda #$ff
sta $0009
lda $005f
cmp $0009
bne $d2a4
lda #$0f
sta $005f
dec $005e
lda #$06
sta $0009
lda $005e
sec
sbc $0020
cmp $0009
bpl $d2ba
beq $d2ba
jsr $d773
rts
     
     ; sub start
lda #$20
sta $0024
inc $0025
lda #$00
sta $0009
lda $0025
and #$08
cmp $0009
beq $d2d7
lda #$28
sta $0024
lda #$00
sta $0009
lda $0059
cmp $0009
bne $d2e9
lda #$00
sta $0025
lda #$02
sta $0009
lda $000f
cmp $0009
beq $d2fb
lda #$30
sta $0024
lda #$00
sta $0009
lda $0012
cmp $0009
beq $d30d
lda #$38
sta $0024
lda $000c
sec
sbc #$20
sta $0068
lda $005e
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $005f
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sec
sbc #$01
sta $0069
lda #$01
sta $006a
lda #$00
sta $0009
lda $000d
cmp $0009
beq $d351
lda $000d
and #$03
sta $006a
lda #$00
sta $0009
lda $005a
cmp $0009
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
lda #$01
sta $0009
lda $001c
cmp $0009
bne $d3a1
jmp $d3a4
jmp $d43a
ldx #$00
lda $0068
sta $0300,x
ldx #$01
lda $0024
sta $0300,x
ldx #$02
lda $006a
sta $0300,x
ldx #$03
lda $0069
sta $0300,x
ldx #$04
lda #$10
clc
adc $0068
sta $0300,x
ldx #$05
lda #$02
clc
adc $0024
sta $0300,x
ldx #$06
lda $006a
sta $0300,x
ldx #$07
lda $0069
sta $0300,x
ldx #$08
lda $0068
sta $0300,x
ldx #$09
lda #$04
clc
adc $0024
sta $0300,x
ldx #$0a
lda $006a
sta $0300,x
ldx #$0b
lda #$08
clc
adc $0069
sta $0300,x
ldx #$0c
lda #$10
clc
adc $0068
sta $0300,x
ldx #$0d
lda #$06
clc
adc $0024
sta $0300,x
ldx #$0e
lda $006a
sta $0300,x
ldx #$0f
lda #$08
clc
adc $0069
sta $0300,x
rts
     
lda $006a
clc
adc #$40
sta $006a
ldx #$00
lda $0068
sta $0300,x
ldx #$01
lda #$04
clc
adc $0024
sta $0300,x
ldx #$02
lda $006a
sta $0300,x
ldx #$03
lda $0069
sta $0300,x
ldx #$04
lda #$10
clc
adc $0068
sta $0300,x
ldx #$05
lda #$06
clc
adc $0024
sta $0300,x
ldx #$06
lda $006a
sta $0300,x
ldx #$07
lda $0069
sta $0300,x
ldx #$08
lda $0068
sta $0300,x
ldx #$09
lda $0024
sta $0300,x
ldx #$0a
lda $006a
sta $0300,x
ldx #$0b
lda #$08
clc
adc $0069
sta $0300,x
ldx #$0c
lda #$10
clc
adc $0068
sta $0300,x
ldx #$0d
lda #$02
clc
adc $0024
sta $0300,x
ldx #$0e
lda $006a
sta $0300,x
ldx #$0f
lda #$08
clc
adc $0069
sta $0300,x
rts
     
     ; sub start
lda #$00
sta $000e
lda $000a
sta $0009
lda $000e
cmp $0009
bmi $d4ed
rts
     
ldx $0022
lda #$08
sta $0300,x
lda #$01
clc
adc $0022
tax
lda #$02
sta $0300,x
lda #$02
clc
adc $0022
tax
lda #$02
sta $0300,x
lda #$03
clc
adc $0022
tax
lda #$10
pha
lda $000e
asl a
asl a
asl a
sta $0011
pla
clc
adc $0011
sta $0300,x
lda $0022
clc
adc #$04
sta $0022
inc $000e
jmp $d4de
     ; unidentified
     
     ; sub start
lda #$01
sta Ctrl1_4016
lda #$00
sta Ctrl1_4016
lda Ctrl1_4016
and #$01
sta $0013
lda Ctrl1_4016
and #$01
sta $0014
lda Ctrl1_4016
and #$01
sta $0019
lda Ctrl1_4016
and #$01
sta $001a
lda Ctrl1_4016
and #$01
sta $0015
lda Ctrl1_4016
and #$01
sta $0016
lda Ctrl1_4016
and #$01
sta $0018
lda Ctrl1_4016
and #$01
sta $0017
rts
     
     ; sub start
lda #$9f
sta Sq1Duty_4004
lda #$8c
sta Sq1Sweep_4005
lda #$4d
sta Sq1Timer_4006
lda #$95
sta Sq1Length_4007
rts
     
     ; unidentified
     
     ; sub start
lda #$0b
sta NoiseVolume_400C
lda #$ff
sta $400d
lda #$ff
sta NoisePeriod_400E
lda #$08
sta NoiseLength_400F
rts
     
     ; unidentified
     
     ; sub start
lda #$00
sta $0009
lda $001e
and #$04
cmp $0009
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
lda $001e
asl a
asl a
asl a
asl a
asl a
asl a
clc
adc $001f
sta PpuScroll_2005
lda #$00
sta PpuScroll_2005
rts
     
     ; sub start
lda #$00
sta $0009
lda $0058
cmp $0009
bne $d637
rts
     
lda #$06
sta $0009
lda $0058
cmp $0009
bmi $d647
jmp $d696
lda $001e
clc
adc #$05
sta $0052
lda #$01
sta $0009
lda $0058
cmp $0009
bne $d660
jsr $c4b4
lda #$03
sta $0009
lda $0058
cmp $0009
bne $d670
jsr $c5aa
lda #$04
sta $0009
lda $0058
cmp $0009
bne $d680
jsr $c6a0
lda #$05
sta $0009
lda $0058
cmp $0009
bne $d690
jsr $c706
lda #$00
sta $0058
rts
     
lda $001e
sec
sbc #$01
sta $0052
lda #$06
sta $0009
lda $0058
cmp $0009
bne $d6af
jsr $c4b4
lda #$08
sta $0009
lda $0058
cmp $0009
bne $d6bf
jsr $c5aa
lda #$09
sta $0009
lda $0058
cmp $0009
bne $d6cf
jsr $c6a0
lda #$0a
sta $0009
lda $0058
cmp $0009
bne $d6df
jsr $c706
lda #$00
sta $0058
rts
     
     ; sub start
lda $805b
sta $0009
lda $0020
cmp $0009
bne $d6f9
lda #$01
sta $000b
rts
     
inc $0021
lda #$10
sta $0009
lda $0021
cmp $0009
bne $d711
lda #$00
sta $0021
inc $0020
lda #$3f
sta $0009
lda $001f
cmp $0009
bne $d727
lda #$00
sta $001f
inc $001e
rts
     
inc $001f
lda #$0a
sta $0009
lda $001f
cmp $0009
bne $d73c
lda #$01
sta $0058
lda #$1e
sta $0009
lda $001f
cmp $0009
bne $d74e
lda #$03
sta $0058
lda #$28
sta $0009
lda $001f
cmp $0009
bne $d760
lda #$04
sta $0058
lda #$32
sta $0009
lda $001f
cmp $0009
bne $d772
lda #$05
sta $0058
rts
     
     ; sub start
lda #$00
sta $0009
lda $001e
cmp $0009
bne $d78e
lda #$01
sta $0009
lda $001f
cmp $0009
bpl $d78e
rts
     
lda $805b
sta $0009
lda $0020
cmp $0009
bne $d79d
rts
     
dec $0021
lda #$ff
sta $0009
lda $0021
cmp $0009
bne $d7b5
lda #$0f
sta $0021
dec $0020
lda #$00
sta $0009
lda $001f
cmp $0009
bne $d7cb
lda #$3f
sta $001f
dec $001e
rts
     
dec $001f
lda #$00
sta $0009
lda $001e
cmp $0009
bne $d7dc
rts
     
lda #$08
sta $0009
lda $001f
cmp $0009
bne $d7ee
lda #$06
sta $0058
lda #$1c
sta $0009
lda $001f
cmp $0009
bne $d800
lda #$08
sta $0058
lda #$26
sta $0009
lda $001f
cmp $0009
bne $d812
lda #$09
sta $0058
lda #$30
sta $0009
lda $001f
cmp $0009
bne $d824
lda #$0a
sta $0058
rts
     
     ; sub start
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
lda $0008
sta $000e
lda #$22
sta PpuAddr_2006
lda #$04
sta PpuAddr_2006
lda #$ee
sta PpuData_2007
lda #$ef
sta PpuData_2007
dec $000e
lda #$00
sta $0009
lda $000e
cmp $0009
beq $d886
jmp $d869
lda $0008
sta $000e
lda #$22
sta PpuAddr_2006
lda #$24
sta PpuAddr_2006
lda #$fe
sta PpuData_2007
lda #$ff
sta PpuData_2007
dec $000e
lda #$00
sta $0009
lda $000e
cmp $0009
beq $d8b3
jmp $d896
jsr $db09
rts
     
     ; unidentified
     
jsr $db8e
jsr $d539
lda #$00
sta $0009
lda $001a
cmp $0009
bne $da7e
jmp $da68
     ; unidentified
     
     ; sub start
jsr $dae9
lda #$21
sta PpuAddr_2006
lda #$08
sta PpuAddr_2006
lda #$00
sta $000e
ldx $000e
lda $e3f8,x
sta PpuData_2007
inc $000e
lda #$09
sta $0009
lda $000e
cmp $0009
beq $dac3
jmp $daa7
jsr $db09
jsr $c241
lda #$c8
sta $0071
jsr $dad2
rts
     
     ; sub start
jsr $db8e
dec $0071
lda #$00
sta $0009
lda $0071
cmp $0009
beq $dae8
jmp $dad2
rts
     
     ; sub start
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
     
     ; sub start
lda #$3f
sta PpuAddr_2006
lda #$00
sta PpuAddr_2006
lda #$00
sta $000e
ldx $000e
lda $e25a,x
sta PpuData_2007
inc $000e
lda #$10
sta $0009
lda $000e
cmp $0009
bne $db32
rts
     
jmp $db18
     ; unidentified
     
     ; sub start
jsr $d629
jsr $d5ed
lda #$03
sta SpriteDma_4014
lda #$10
sta $0022
rts
     
     ; unidentified
     
     ; sub start
jsr $db8e
lda #$20
sta PpuControl_2000
lda #$1c
sta PpuMask_2001
rts
     
     ; sub start
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
inc $001b
rts
     
     ; unidentified
     
     ; sub start
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
     ; sub start
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
     
     ; sub start
ldx #$00
sta PpuData_2007
inx
cpx #$00
bne $dc1d
rts
     
     ; sub start
lda #$00
sta $0066
lda #$00
sta OamAddr_2003
lda #$f5
sta OamData_2004
inc $0066
lda #$00
sta $0009
lda $0066
cmp $0009
beq $dc48
jmp $dc30
rts
     
     ; unidentified
     
     ; sub start
lda #$05
sta $007e
rts
     
     ; sub start
lda #$00
sta $000e
ldx $000e
lda #$00
sta $0072,x
inc $000e
lda #$0c
sta $0009
lda $000e
cmp $0009
beq $dc91
jmp $dc76
rts
     
     ; sub start
lda #$00
sta $007f
ldx $007f
lda $0072,x
sta $0080
lda #$00
sta $0009
lda $0080
cmp $0009
beq $dcb0
jmp $dd19
ldx $007f
lda $8070,x
sta $0081
ldx $007f
lda $807c,x
sta $0082
lda $0082
sta $0009
lda $000c
sec
sbc #$20
lsr a
lsr a
lsr a
lsr a
cmp $0009
beq $dcda
jmp $dd19
lda $0081
sta $0009
lda $005e
cmp $0009
bne $dcf8
lda #$06
sta $0009
lda $005f
cmp $0009
bpl $dcf8
jmp $ddd8
lda $0081
sta $0009
lda $005e
clc
adc #$01
cmp $0009
bne $dd19
lda #$0a
sta $0009
lda $005f
cmp $0009
bmi $dd19
jmp $ddd8
inc $007f
lda #$0c
sta $0009
lda $007f
cmp $0009
beq $dd2c
jmp $dc97
rts
     
     ; sub start
lda #$00
sta $0083
ldx $0083
lda $8044,x
sta $0084
ldx $0083
lda $8049,x
sta $0085
lda $0085
sta $0009
lda $000c
sec
sbc #$02
lsr a
lsr a
lsr a
lsr a
cmp $0009
beq $dd5c
jmp $dd9b
lda $0084
sta $0009
lda $005e
cmp $0009
bne $dd7a
lda #$04
sta $0009
lda $005f
cmp $0009
bpl $dd7a
jmp $ddb0
lda $0084
sta $0009
lda $005e
clc
adc #$01
cmp $0009
bne $dd9b
lda #$0c
sta $0009
lda $005f
cmp $0009
bmi $dd9b
jmp $ddb0
inc $0083
lda $007e
sta $0009
lda $0083
cmp $0009
bpl $ddaf
jmp $dd32
rts
     
jsr $c3eb
lda #$00
sta $0086
jsr $db8e
jsr $e679
jsr $de0d
inc $0086
lda #$15
sta $0009
lda $0086
cmp $0009
beq $ddd4
jmp $ddb8
jsr $c3eb
rts
     
ldx $007f
lda #$01
sta $0072,x
ldx #$05
lda #$08
sta $00a4,x
ldx #$05
lda $0082
asl a
asl a
asl a
asl a
sec
sbc #$08
sta $009e,x
ldx #$05
lda $0081
sta $0092,x
ldx #$05
lda #$00
sta $0098,x
ldx #$05
lda #$01
sta $00aa,x
rts
     
     ; sub start
lda #$00
sta $000e
lda #$00
sta $0087
inc $0087
lda #$40
sta $0009
lda $0087
cmp $0009
beq $de2a
jmp $de17
inc $000e
lda #$11
sta $0009
lda $000e
cmp $0009
beq $de3d
jmp $de12
rts
     
     ; unidentified
     
     ; sub start
lda #$00
sta $008e
lda #$00
sta $008f
lda #$1f
sta ApuStatus_4015
lda #$00
sta $0090
lda $0007
asl a
asl a
sta $0091
ldx $0091
lda $8000,x
sta $0088
sta $0002
inx
lda $8000,x
sta $0089
sta $0003
inx
lda $8000,x
sta $008a
inx
lda $8000,x
sta $008b
rts
     
iny
lda ($02),y
sta $008e
clc
lda $0002
adc #$02
sta $0002
sta $008c
lda $0003
adc #$00
sta $0003
sta $008d
jmp $e679
dec $008e
lda $008e
cmp #$00
beq $e665
lda $008c
sta $0002
lda $008d
sta $0003
jmp $e679
clc
lda $0002
adc #$01
sta $0002
lda $0003
adc #$00
sta $0003
jmp $e679
     ; sub start
lda #$00
sta $0009
lda $008f
cmp $0009
beq $e68a
dec $008f
rts
     
ldy #$00
lda ($02),y
cmp #$ff
beq $e62c
cmp #$fe
beq $e64c
sta $008f
iny
lda ($02),y
sta $0090
iny
lda #$00
sta $0009
lda $0090
and #$03
cmp $0009
bne $e6b2
jmp $e6dc
lda #$03
sta $0009
lda $0090
and #$03
cmp $0009
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
sta $0009
lda $0090
and #$0c
cmp $0009
bne $e6ee
jmp $e718
lda #$0c
sta $0009
lda $0090
and #$0c
cmp $0009
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
sta $0009
lda $0090
and #$30
cmp $0009
bne $e72a
jmp $e754
lda #$30
sta $0009
lda $0090
and #$30
cmp $0009
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
sta $0009
lda $0090
and #$c0
cmp $0009
bne $e766
jmp $e790
lda #$c0
sta $0009
lda $0090
and #$c0
cmp $0009
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
sta $0011
clc
lda $0002
adc $0011
sta $0002
lda $0003
adc #$00
sta $0003
clc
lda $0002
cmp $008a
bne $e7c3
lda $0003
cmp $008b
bne $e7c3
lda $0088
sta $0002
lda $0089
sta $0003
rts
     
     ; sub start
ldx #$00
lda #$00
sta $00a4,x
ldx #$01
lda #$00
sta $00a4,x
ldx #$02
lda #$00
sta $00a4,x
ldx #$03
lda #$00
sta $00a4,x
ldx #$04
lda #$00
sta $00a4,x
ldx #$05
lda #$00
sta $00a4,x
lda #$05
sta $00b0
rts
     
     ; sub start
lda #$00
sta $000e
ldx $000e
lda #$00
sta $00a4,x
inc $000e
lda $00b0
sta $0009
lda $000e
cmp $0009
bpl $e815
jmp $e7f9
rts
     
     ; sub start
lda #$01
sta $0009
lda $0004
cmp $0009
beq $e824
rts
     
lda #$00
sta $000e
ldx $000e
lda $00a4,x
sta $00b1
lda #$00
sta $0009
lda $00b1
cmp $0009
bne $e842
jmp $e85e
inc $000e
lda $00b0
sta $0009
lda $000e
cmp $0009
bpl $e858
beq $e858
jmp $e829
rts
     
     ; unidentified
     
lda $0005
and #$0f
sta $00b1
ldx $00b1
lda $8060,x
sta $00b1
lda #$06
sta $0009
lda $00b1
cmp $0009
bne $e87f
jmp $e8b0
ldx $000e
lda $00b1
sta $00a4,x
ldx $000e
lda #$07
sta $009e,x
ldx $000e
lda #$00
sta $0098,x
ldx $000e
lda $005e
clc
adc #$05
sta $0092,x
ldx $000e
lda #$ff
sta $00aa,x
inc $0004
rts
     
lda #$00
sta $0009
lda $000c
and #$f0
cmp $0009
bne $e8c0
rts
     
ldx $000e
lda $00b1
sta $00a4,x
ldx $000e
lda $000c
sec
sbc #$11
sta $009e,x
ldx $000e
lda #$00
sta $0098,x
ldx $000e
lda $005e
clc
adc #$0a
sta $0092,x
jsr $d5c3
rts
     
     ; sub start
lda #$ff
sta $00b2
inc $00b2
ldx $00b2
lda $00a4,x
sta $00b1
lda #$02
sta $0009
lda $00b1
cmp $0009
bne $e90e
jsr $e960
lda #$03
sta $0009
lda $00b1
cmp $0009
bne $e91e
jsr $e960
lda #$04
sta $0009
lda $00b1
cmp $0009
bne $e92e
jsr $ec12
lda #$06
sta $0009
lda $00b1
cmp $0009
bne $e93e
jsr $edca
lda #$08
sta $0009
lda $00b1
cmp $0009
bne $e94e
jsr $e960
lda $00b0
sta $0009
lda $00b2
cmp $0009
bpl $e95f
jmp $e8f2
rts
     
     ; sub start
ldx $00b2
lda $00aa,x
sta $00b3
ldx $00b2
lda $0092,x
sta $00b4
ldx $00b2
lda $0098,x
sta $00b5
ldx $00b2
lda $009e,x
sta $00b6
lda $00b4
clc
adc #$02
sta $0009
lda $0020
cmp $0009
bmi $e998
jmp $ee75
lda $00b4
sta $0009
lda $0020
clc
adc #$12
cmp $0009
bpl $e9ac
jmp $ee75
lda #$00
sta $00b7
lda #$03
sta $0062
jsr $f2cd
lda #$00
sta $0009
lda $001b
and #$01
cmp $0009
beq $e9cb
jmp $ea9f
lda #$ff
sta $0009
lda $00b3
cmp $0009
bne $e9ed
lda #$01
sta $0009
lda $00b7
cmp $0009
bne $e9ea
lda #$02
sta $00b3
jmp $ea41
lda #$01
sta $0009
lda $00b3
cmp $0009
bne $ea17
lda #$00
sta $0064
jsr $f083
lda #$00
sta $0009
lda $0064
cmp $0009
beq $ea14
lda #$02
sta $00b3
jmp $ea41
lda #$02
sta $0009
lda $00b3
cmp $0009
bne $ea41
lda #$00
sta $0067
jsr $f193
lda #$00
sta $0009
lda $0067
cmp $0009
beq $ea3e
lda #$01
sta $00b3
jmp $ea41
lda #$fc
sta $0009
lda $00b6
and #$fc
cmp $0009
bne $ea53
jmp $ee75
lda $00b4
clc
adc #$05
sta $0009
lda $0020
cmp $0009
bmi $ea67
jmp $ee75
lda $00b4
sta $0009
lda $0020
clc
adc #$15
cmp $0009
bpl $ea7b
jmp $ee75
ldx $00b2
lda $00b3
sta $00aa,x
ldx $00b2
lda $00b4
sta $0092,x
ldx $00b2
lda $00b5
sta $0098,x
ldx $00b2
lda $00b6
sta $009e,x
lda #$08
sta $0009
lda $00b1
cmp $0009
bne $eaaf
jmp $ebb7
lda #$03
sta $0009
lda $00b1
cmp $0009
bne $eabf
jmp $eb32
lda #$02
sta $006d
lda #$0a
sta $006e
lda $0020
sta $0009
lda $00b4
cmp $0009
bmi $eb31
beq $eb31
lda $0020
clc
adc #$10
sta $0009
lda $00b4
cmp $0009
bpl $eb31
beq $eb31
ldx $00b2
lda $009e,x
sec
sbc #$10
sta $006c
lda $00b4
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $00b5
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sta $006b
lda #$00
sta $0009
lda $001b
and #$10
cmp $0009
beq $eb2e
lda #$42
sta $006d
jmp $f44f
     ; unidentified
jmp $f3db
rts
     
lda $0020
sta $0009
lda $00b4
cmp $0009
bmi $ebb6
beq $ebb6
lda $0020
clc
adc #$10
sta $0009
lda $00b4
cmp $0009
bpl $ebb6
beq $ebb6
lda #$00
sta $006d
lda #$40
sta $006e
lda #$00
sta $0009
lda $001b
and #$10
cmp $0009
beq $eb73
lda #$48
sta $006e
ldx $00b2
lda $009e,x
sec
sbc #$20
sta $006c
lda $00b4
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $00b5
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sta $006b
lda #$01
sta $0009
lda $00b3
cmp $0009
bne $ebb3
lda #$40
sta $006d
jmp $f4dc
     ; unidentified
jmp $f4c3
rts
     
lda #$02
sta $006d
lda #$02
sta $006e
lda $0020
sta $0009
lda $00b4
cmp $0009
bmi $ec11
beq $ec11
lda $0020
clc
adc #$10
sta $0009
lda $00b4
cmp $0009
bpl $ec11
beq $ec11
ldx $00b2
lda $009e,x
sec
sbc #$10
sta $006c
lda $00b4
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $00b5
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sta $006b
jmp $f4f5
rts
     
     ; sub start
ldx $00b2
lda $00aa,x
sta $00b3
ldx $00b2
lda $0092,x
sta $00b4
ldx $00b2
lda $0098,x
sta $00b5
ldx $00b2
lda $009e,x
sta $00b6
lda $00b4
clc
adc #$02
sta $0009
lda $0020
cmp $0009
bmi $ec4a
jmp $ee75
lda $00b4
sta $0009
lda $0020
clc
adc #$12
cmp $0009
bpl $ec5e
jmp $ee75
lda #$00
sta $00b7
lda #$02
sta $0062
jsr $f2cd
lda #$ff
sta $0009
lda $00b3
cmp $0009
bne $ec8d
lda #$01
sta $0009
lda $00b7
cmp $0009
bne $ec8a
lda #$01
sta $00b3
jmp $ed11
lda $005e
sta $0009
lda $00b4
clc
adc #$02
cmp $0009
bpl $eca5
beq $eca5
lda #$01
sta $00b3
lda $005e
sta $0009
lda $00b4
sec
sbc #$02
cmp $0009
bmi $ecbd
beq $ecbd
lda #$02
sta $00b3
lda #$01
sta $0009
lda $00b3
cmp $0009
bne $ece7
lda #$00
sta $0064
jsr $f083
lda #$00
sta $0009
lda $0064
cmp $0009
beq $ece4
lda #$02
sta $00b3
jmp $ed11
lda #$02
sta $0009
lda $00b3
cmp $0009
bne $ed11
lda #$00
sta $0067
jsr $f193
lda #$00
sta $0009
lda $0067
cmp $0009
beq $ed0e
lda #$01
sta $00b3
jmp $ed11
lda #$fc
sta $0009
lda $00b6
and #$fc
cmp $0009
bne $ed23
jmp $ee75
ldx $00b2
lda $00b3
sta $00aa,x
ldx $00b2
lda $00b4
sta $0092,x
ldx $00b2
lda $00b5
sta $0098,x
ldx $00b2
lda $00b6
sta $009e,x
lda #$00
sta $006d
lda $001b
and #$0c
sta $006e
lda $006e
clc
adc #$0e
sta $006e
lda $0020
sta $0009
lda $00b4
cmp $0009
bmi $edc1
lda $0020
clc
adc #$10
sta $0009
lda $00b4
cmp $0009
bpl $edc1
beq $edc1
ldx $00b2
lda $009e,x
sec
sbc #$10
sta $006c
lda $00b4
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $00b5
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sta $006b
lda #$01
sta $0009
lda $00b3
cmp $0009
bne $edbe
lda #$40
sta $006d
jmp $f44f
     ; unidentified
jmp $f3db
lda #$f5
sta $006c
jmp $f3db
     ; unidentified
     ; sub start
ldx $00b2
lda $00aa,x
sta $00b3
ldx $00b2
lda $0092,x
sta $00b4
ldx $00b2
lda $0098,x
sta $00b5
ldx $00b2
lda $009e,x
sta $00b6
lda $00b4
clc
adc #$02
sta $0009
lda $0020
cmp $0009
bmi $ee02
jmp $ee75
jsr $f29b
jsr $f29b
ldx $00b2
lda $00b4
sta $0092,x
ldx $00b2
lda $00b5
sta $0098,x
lda $0020
sta $0009
lda $00b4
cmp $0009
bmi $ee74
beq $ee74
lda $0020
clc
adc #$10
sta $0009
lda $00b4
cmp $0009
bpl $ee74
beq $ee74
lda #$02
sta $006d
lda #$04
sta $006e
ldx $00b2
lda $009e,x
sec
sbc #$10
sta $006c
lda $00b4
sec
sbc $0020
asl a
asl a
asl a
asl a
pha
lda $00b5
sec
sbc $0021
sta $0011
pla
clc
adc $0011
sta $006b
jmp $f52f
rts
     
ldx $00b2
lda #$00
sta $00a4,x
rts
     
     ; sub start
lda #$00
sta $00b2
ldx $00b2
lda $00a4,x
sta $00b1
lda #$00
sta $0009
lda $00b1
cmp $0009
bne $ee9c
jmp $f015
ldx $00b2
lda $009e,x
sta $00b6
lda #$0e
sta $00b8
lda #$08
sta $0009
lda $00b1
cmp $0009
bne $eebc
lda #$08
sta $00b8
lda #$03
sta $0009
lda $00b1
cmp $0009
bne $eece
lda #$16
sta $00b8
lda $000c
sta $0009
lda $00b6
sec
sbc $00b8
cmp $0009
bmi $eee3
jmp $f015
lda $00b6
sta $0009
lda $000c
sec
sbc #$18
cmp $0009
bmi $eef7
jmp $f015
lda #$00
sta $0009
lda $0012
cmp $0009
beq $ef18
lda $00b6
sta $0009
lda $000c
sec
sbc #$10
cmp $0009
bmi $ef18
jmp $f015
lda #$00
sta $00b9
lda #$00
sta $00b7
ldx $00b2
lda $0092,x
sta $00b4
ldx $00b2
lda $0098,x
sta $00b5
lda $005e
sta $0009
lda $00b4
cmp $0009
bne $ef47
lda #$01
sta $00b9
lda $00b4
sta $0009
lda $005e
clc
adc #$01
cmp $0009
bne $ef6d
lda $005f
sta $0009
lda $00b5
cmp $0009
bpl $ef6d
beq $ef6d
lda #$01
sta $00b9
lda $005e
sta $0009
lda $00b4
clc
adc #$01
cmp $0009
bne $ef93
lda $00b5
sta $0009
lda $005f
cmp $0009
bpl $ef93
beq $ef93
lda #$01
sta $00b9
lda #$00
sta $0009
lda $00b9
cmp $0009
bne $efa3
jmp $f015
lda $00b6
sta $0009
lda $000c
pha
lda $00b8
sec
sbc #$05
sta $0011
pla
clc
adc $0011
cmp $0009
bpl $efc5
lda #$01
sta $00b7
lda #$08
sta $0009
lda $00b1
cmp $0009
bne $efd5
jmp $f067
lda #$02
sta $0009
lda $00b1
cmp $0009
bne $efe5
jmp $f02d
lda #$03
sta $0009
lda $00b1
cmp $0009
bne $eff5
jmp $f02d
lda #$04
sta $0009
lda $00b1
cmp $0009
bne $f005
jmp $f02d
lda #$06
sta $0009
lda $00b1
cmp $0009
bne $f015
jmp $f063
inc $00b2
lda $00b0
clc
adc #$01
sta $0009
lda $00b2
cmp $0009
bpl $f02c
jmp $ee83
rts
     
lda #$00
sta $0009
lda $00b7
cmp $0009
beq $f05f
ldx $00b2
lda #$00
sta $00a4,x
lda #$01
sta $000f
lda #$14
sta $0010
lda #$00
sta $0009
lda $0013
cmp $0009
beq $f05e
lda #$37
sta $0010
rts
     
jsr $ca72
rts
     
jsr $ca72
rts
     
ldx $00b2
lda #$00
sta $00a4,x
inc $000a
lda #$06
sta $0009
lda $000a
cmp $0009
bne $f082
dec $000a
rts
     
     ; sub start
lda #$02
sta $0009
lda $00b5
cmp $0009
bpl $f093
jmp $f2b4
lda #$08
pha
lda $00b4
asl a
asl a
asl a
sta $0011
pla
clc
adc $0011
sta $0063
lda $00b6
and #$0f
sta $00ba
lda #$7f
sta $0009
lda $00b6
cmp $0009
bpl $f126
lda $00b6
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
tax
lda $0400,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f0e7
jmp $f3c9
lda #$0f
sta $0009
lda $00ba
cmp $0009
bne $f0f7
jmp $f2b4
lda $0063
pha
lda $0065
sec
sbc #$01
sta $0011
pla
clc
adc $0011
tax
lda $0400,x
sta $00bb
lda #$00
sta $0009
lda $00bb
and $0054
cmp $0009
beq $f123
jmp $f3c9
jmp $f2b4
lda $00b6
sec
sbc #$70
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
tax
lda $0200,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f154
jmp $f3c9
lda #$0f
sta $0009
lda $00ba
cmp $0009
bne $f164
jmp $f2b4
lda $0063
pha
lda $0065
sec
sbc #$01
sta $0011
pla
clc
adc $0011
tax
lda $0200,x
sta $00bb
lda #$00
sta $0009
lda $00bb
and $0054
cmp $0009
beq $f190
jmp $f3c9
jmp $f2b4
     ; sub start
lda #$00
sta $0009
lda $00b5
cmp $0009
beq $f1a3
jmp $f29b
lda $00b4
asl a
asl a
asl a
sec
sbc #$08
sta $0063
lda $00b6
and #$0f
sta $00ba
lda #$7f
sta $0009
lda $00b6
cmp $0009
bpl $f22e
lda $00b6
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
tax
lda $0400,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f1ef
jmp $f3cf
lda #$0f
sta $0009
lda $00ba
cmp $0009
bne $f1ff
jmp $f29b
lda $0063
pha
lda $0065
sec
sbc #$01
sta $0011
pla
clc
adc $0011
tax
lda $0400,x
sta $00bb
lda #$00
sta $0009
lda $00bb
and $0054
cmp $0009
beq $f22b
jmp $f3cf
jmp $f29b
lda $00b6
sec
sbc #$70
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
tax
lda $0200,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f25c
jmp $f3cf
lda #$0f
sta $0009
lda $00ba
cmp $0009
bne $f26c
jmp $f29b
lda $0063
pha
lda $0065
sec
sbc #$01
sta $0011
pla
clc
adc $0011
tax
lda $0200,x
sta $00bb
lda #$00
sta $0009
lda $00bb
and $0054
cmp $0009
beq $f298
jmp $f3cf
jmp $f29b
     ; sub start
dec $00b5
lda #$ff
sta $0009
lda $00b5
cmp $0009
bne $f2b3
lda #$0f
sta $00b5
dec $00b4
rts
     
inc $00b5
lda #$10
sta $0009
lda $00b5
cmp $0009
bne $f2cc
lda #$00
sta $00b5
inc $00b4
rts
     
     ; sub start
lda $00b4
asl a
asl a
asl a
sta $0063
lda #$7f
sta $0009
lda $00b6
cmp $0009
bpl $f350
beq $f350
lda $00b6
clc
adc $0062
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0400,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f319
jmp $f3d5
lda #$00
sta $00bb
lda #$04
sta $0009
lda $00b5
cmp $0009
bmi $f33a
beq $f33a
lda $0066
clc
adc #$08
tax
lda $0400,x
sta $00bb
lda #$00
sta $0009
lda $0064
and $0054
cmp $0009
beq $f34d
jmp $f3d5
jmp $f3be
lda $00b6
clc
adc $0062
clc
adc #$90
lsr a
lsr a
lsr a
lsr a
sta $0065
lda $0063
clc
adc $0065
sta $0066
ldx $0066
lda $0200,x
sta $0086
lda #$00
sta $0009
lda $0086
and $0054
cmp $0009
beq $f387
jmp $f3d5
lda #$00
sta $00bb
lda #$04
sta $0009
lda $00b5
cmp $0009
bmi $f3a8
beq $f3a8
lda $0066
clc
adc #$08
tax
lda $0200,x
sta $00bb
lda #$00
sta $0009
lda $00bb
and $0054
cmp $0009
beq $f3bb
jmp $f3d5
jmp $f3be
lda $00b6
clc
adc $0062
sta $00b6
rts
     
lda #$01
sta $0064
rts
     
lda #$01
sta $0067
rts
     
lda #$01
sta $00b7
rts
     
     ; sub start
ldx $0022
lda $006c
sta $0300,x
lda #$01
clc
adc $0022
tax
lda $006e
sta $0300,x
lda #$02
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$03
clc
adc $0022
tax
lda $006b
sta $0300,x
lda #$04
clc
adc $0022
tax
lda $006c
sta $0300,x
lda #$05
clc
adc $0022
tax
lda $006e
clc
adc #$02
sta $0300,x
lda #$06
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$07
clc
adc $0022
tax
lda $006b
clc
adc #$08
sta $0300,x
lda $0022
clc
adc #$08
sta $0022
rts
     
     ; sub start
ldx $0022
lda $006c
sta $0300,x
lda #$01
clc
adc $0022
tax
lda $006e
sta $0300,x
lda #$02
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$03
clc
adc $0022
tax
lda #$08
clc
adc $006b
sta $0300,x
lda #$04
clc
adc $0022
tax
lda $006c
sta $0300,x
lda #$05
clc
adc $0022
tax
lda $006e
clc
adc #$02
sta $0300,x
lda #$06
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$07
clc
adc $0022
tax
lda $006b
sta $0300,x
lda $0022
clc
adc #$08
sta $0022
rts
     
jsr $f3db
lda $006c
clc
adc #$10
sta $006c
lda $006e
clc
adc #$04
sta $006e
jsr $f3db
rts
     
jsr $f44f
lda $006c
clc
adc #$10
sta $006c
lda $006e
clc
adc #$04
sta $006e
jsr $f44f
rts
     
ldx $0022
lda $006c
sta $0300,x
lda #$01
clc
adc $0022
tax
lda $006e
sta $0300,x
lda #$02
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$03
clc
adc $0022
tax
lda $006b
sta $0300,x
lda $0022
clc
adc #$04
sta $0022
rts
     
ldx $0022
lda $006c
sta $0300,x
lda #$01
clc
adc $0022
tax
lda $006e
sta $0300,x
lda #$02
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$03
clc
adc $0022
tax
lda $006b
sec
sbc #$08
sta $0300,x
lda #$04
clc
adc $0022
tax
lda $006c
sta $0300,x
lda #$05
clc
adc $0022
tax
lda $006e
clc
adc #$02
sta $0300,x
lda #$06
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$07
clc
adc $0022
tax
lda $006b
sta $0300,x
lda #$08
clc
adc $0022
tax
lda $006c
sta $0300,x
lda #$09
clc
adc $0022
tax
lda $006e
clc
adc #$04
sta $0300,x
lda #$0a
clc
adc $0022
tax
lda $006d
sta $0300,x
lda #$0b
clc
adc $0022
tax
lda $006b
clc
adc #$08
sta $0300,x
lda $0022
clc
adc #$0c
sta $0022
rts
     
     ; sub start
jsr $db80
jsr $db8e
jsr $c31d
jsr $dbc3
jsr $dbda
jsr $db8e
jsr $db8e
jsr $f6d3
lda #$00
sta $00bc
lda #$5a
sta $00bd
lda #$56
sta $00be
lda #$ff
sta $00bf
lda #$01
sta $00c0
lda #$00
sta $00c1
lda #$00
sta $005c
lda #$00
sta $00c2
jsr $f7e2
jsr $f7ee
jsr $f7e8
jsr $f7e2
jsr $f7ee
lda #$00
sta $0009
lda $00c2
cmp $0009
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
lda $0004
clc
adc #$03
sta $0004
lda $0005
clc
adc #$07
sta $0005
jsr $f836
lda #$00
sta $0009
lda $0019
cmp $0009
beq $f6bf
lda #$01
sta $00c2
lda #$00
sta $0009
lda $001a
cmp $0009
beq $f6cf
jmp $f6d2
jmp $f61d
rts
     
     ; sub start
jsr $dc26
jsr $db8e
jsr $f71c
jsr $db8e
jsr $f7a8
jsr $db8e
jsr $db8e
rts
     
     ; sub start
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
     
     ; sub start
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
     
     ; sub start
lda #$3f
sta PpuAddr_2006
lda #$00
sta PpuAddr_2006
lda #$00
sta $0066
ldx $0066
lda $e23a,x
sta PpuData_2007
inc $0066
lda #$1f
sta $0009
lda $0066
cmp $0009
bpl $f7d3
jmp $f7b7
rts
     
     ; unidentified
     
     ; sub start
lda PpuStatus_2002
bpl $f7e2
rts
     
     ; sub start
lda PpuStatus_2002
bmi $f7e8
rts
     
     ; sub start
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
ldx $001d
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
inc $001d
lda #$00
sta PpuScroll_2005
lda #$00
sta PpuScroll_2005
rts
     
     ; sub start
jsr $f8b1
lda #$0a
sta $0009
lda $00c1
cmp $0009
bmi $f85d
lda #$00
sta $0009
lda $005c
cmp $0009
beq $f854
rts
     
     ; unidentified
     
lda #$00
sta $0009
lda $00c3
cmp $0009
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
     
lda #$00
sta $0009
lda $00c4
cmp $0009
bne $f88e
rts
     
ldx $00c1
lda $f908,x
sta $00c5
lda $00c5
sta $0009
lda $00c4
cmp $0009
bne $f8ab
lda #$01
sta $00c3
rts
     
lda #$00
sta $00c1
rts
     
     ; sub start
jsr $d539
lda $0013
sta $00c4
lda $00c4
asl a
clc
adc $0014
sta $00c4
lda $00c4
asl a
clc
adc $0015
sta $00c4
lda $00c4
asl a
clc
adc $0016
sta $00c4
lda $00c4
asl a
clc
adc $0018
sta $00c4
lda $00c4
asl a
clc
adc $0017
sta $00c4
lda $00c4
asl a
clc
adc $0019
sta $00c4
lda $00c4
asl a
clc
adc $001a
sta $00c4
rts
     
jsr $1020
bpl $f915

; DEETA

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
.byte $FF, $00, $C0, $00, $C0, $6A, $DC