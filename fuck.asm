; da65 V2.18 - N/A
; Created:    2023-11-07 01:54:29
; Input file: SOF_v1d.nes
; Page:       1


        .setcpu "6502"

L0000:  .byte   $4E
L0001:  .byte   $45
L0002:  .byte   $53
L0003:  .byte   $1A
L0004:  php
L0005:  .byte   $04
L0006:  .byte   $41
L0007:  brk
L0008:  brk
L0009:  brk
L000A:  brk
L000B:  brk
L000C:  brk
L000D:  brk
L000E:  brk
L000F:  brk
L0010:  sei
L0011:  sta     L9F18,y
L0014:  asl     a
L0015:  .byte   $1A
        and     #$31
L0018:  asl     a
        and     (L0030),y
        .byte   $0F
        asl     a
        sec
        .byte   $0F
        .byte   $31
L0020:  asl     a
        .byte   $37
L0022:  and     (L0029),y
L0024:  asl     a
L0025:  .byte   $0E
L0026:  .byte   $1A
L0027:  .byte   $20
L0028:  brk
L0029:  .byte   $0E
L002A:  .byte   $20
        .byte   $10
L002C:  brk
        .byte   $0E
L002E:  .byte   $39
        clc
L0030:  brk
L0031:  .byte   $37
L0032:  .byte   $27
L0033:  asl     L000E,x
L0035:  .byte   $07
        .byte   $17
        ora     (L000D,x)
        ora     (L0028,x)
        .byte   $0F
L003C:  ora     L0F26
L003F:  .byte   $01
L0040:  .byte   $0D
L0041:  .byte   $26
L0042:  .byte   $0C
        .byte   $17
L0044:  .byte   $0E
L0045:  .byte   $0E
L0046:  .byte   $1A
L0047:  .byte   $20
L0048:  brk
L0049:  .byte   $0E
L004A:  .byte   $20
        .byte   $10
L004C:  brk
        .byte   $0E
L004E:  .byte   $39
        clc
L0050:  brk
L0051:  .byte   $37
        .byte   $27
L0053:  .byte   $16
L0054:  clc
L0055:  .byte   $27
L0056:  .byte   $45
L0057:  .byte   $47
L0058:  .byte   $7B
L0059:  .byte   $0C
        .byte   $0B
L005B:  .byte   $03
        .byte   $0D
L005D:  .byte   $07
        brk
L005F:  brk
L0060:  brk
        brk
L0062:  brk
        brk
L0064:  brk
L0065:  brk
L0066:  brk
        brk
L0068:  .byte   $E3
L0069:  .byte   $73
L006A:  .byte   $D4
        .byte   $D2
L006C:  brk
        brk
L006E:  brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L0075:  .byte   $02
        .byte   $02
L0077:  .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L0006
        .byte   $06
L0080:  ora     $13
L0082:  .byte   $20
L0083:  .byte   $33
L0084:  .byte   $7F
L0085:  .byte   $9B
L0086:  .byte   $A9
L0087:  .byte   $C2
L0088:  cmp     (L0000),y
L008A:  brk
        brk
L008C:  php
        php
L008E:  php
        .byte   $03
        .byte   $02
        .byte   $07
        ora     #$02
L0094:  .byte   $04
L0095:  brk
L0096:  brk
        brk
        brk
L0099:  brk
L009A:  brk
        brk
        brk
        brk
        brk
        brk
L00A0:  brk
L00A1:  brk
L00A2:  brk
L00A3:  brk
L00A4:  brk
L00A5:  brk
L00A6:  brk
        brk
L00A8:  brk
L00A9:  brk
L00AA:  brk
        brk
L00AC:  brk
        brk
L00AE:  brk
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
L00BB:  brk
        brk
        brk
        brk
L00BF:  brk
L00C0:  brk
        brk
L00C2:  brk
L00C3:  brk
L00C4:  brk
        brk
L00C6:  brk
        brk
L00C8:  brk
        brk
L00CA:  brk
        brk
L00CC:  brk
        brk
L00CE:  brk
L00CF:  brk
        brk
L00D1:  brk
        brk
        brk
        brk
L00D5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L00DD:  brk
        brk
L00DF:  brk
L00E0:  brk
L00E1:  brk
L00E2:  brk
L00E3:  brk
L00E4:  brk
        brk
L00E6:  brk
L00E7:  brk
L00E8:  brk
        brk
L00EA:  brk
        brk
L00EC:  brk
        brk
L00EE:  brk
        brk
L00F0:  brk
        brk
        brk
L00F3:  brk
        brk
L00F5:  brk
        brk
L00F7:  brk
        brk
        brk
        brk
        brk
L00FC:  brk
L00FD:  brk
L00FE:  brk
L00FF:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

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
        beq     L0167
L0167:  beq     L0169
L0169:  beq     L016B
L016B:  beq     L016D
L016D:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
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
        beq     L01DF
        beq     L01D5
L01D5:  beq     L01D7
L01D7:  beq     L01D9
L01D9:  brk
        brk
        brk
        brk
        brk
        brk
L01DF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L0200:  .byte   $02
        .byte   $02
L0202:  .byte   $02
        ror     a
        .byte   $02
        .byte   $02
L0206:  .byte   $02
        txa
L0208:  .byte   $02
        .byte   $02
L020A:  asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
L0220:  .byte   $64
        rts

L0222:  .byte   $62
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dey
L022C:  brk
        .byte   $0B
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
        beq     L023F
L023F:  beq     L024D
        beq     L0243
L0243:  beq     L0245
L0245:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L024D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $6C
        .byte   $6E
L026E:  .byte   $02
        .byte   $02
        sty     L028E
        .byte   $02
        rol     L0028
        .byte   $02
        .byte   $02
        lsr     L0048
        .byte   $02
        .byte   $02
        ror     L0068
        .byte   $02
        .byte   $02
        stx     L0088
        .byte   $02
        .byte   $02
        inc     L00E8
L0286:  .byte   $20
        .byte   $20
L0288:  rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
L028E:  .byte   $64
        rts

        brk
        brk
        brk
        rti

        brk
        .byte   $04
        tax
        brk
        tax
        brk
        tax
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
        beq     L02AB
L02AB:  .byte   $F0
L02AC:  brk
L02AD:  beq     L02AF
L02AF:  beq     L02B1
L02B1:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L02C6:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
L02CE:  .byte   $02
        .byte   $02
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L02EE:  .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        .byte   $10
L02FF:  brk
L0300:  ora     (L0000,x)
        brk
L0303:  brk
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
        beq     L0317
L0317:  beq     L031D
        beq     L0327
        beq     L031D
L031D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L0327:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0020
        jsr     L4422
        rti

        rti

        php
        .byte   $64
        rts

        rts

        .byte   $62
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
        .byte   $04
        beq     L0387
        beq     L0385
L0385:  beq     L0387
L0387:  beq     L0389
L0389:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldx     L0080
        .byte   $82
        sty     L002E
        ldy     #$A2
        ldy     L004E
        cpx     #$E2
        cpx     L0008
        php
        .byte   $42
        .byte   $44
        php
        rts

        .byte   $62
        .byte   $64
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
        dey
        tax
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
        beq     L03EF
L03EF:  beq     L03F1
L03F1:  beq     L03F3
L03F3:  beq     L03F5
L03F5:  brk
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
        .byte   $02
        .byte   $02
L0406:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$A2
        ldy     L00A0
        cpx     #$E2
        cpx     L00E0
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

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
        tax
        tax
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
        beq     L045B
L045B:  beq     L045D
L045D:  beq     L045F
L045F:  beq     L0461
L0461:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $82
        sty     L0080
        .byte   $82
        ldx     #$A4
        ldy     #$A2
        .byte   $E2
        cpx     L00E0
        .byte   $E2
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
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
        tax
        tax
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
        .byte   $0C
        beq     L04C7
L04C7:  beq     L04C9
L04C9:  beq     L04CB
L04CB:  beq     L04CD
L04CD:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        tax
        tay
        sty     L0084
        tax
        rol     LA4A4
        tax
        lsr     L08E4
        php
        php
        php
        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

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
        tax
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
        beq     L0533
L0533:  .byte   $FC
        .byte   $54
        sbc     LFC04,x
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $80
        .byte   $82
        sty     L00AA
        ldy     #$A2
        ldy     L0008
        php
        php
        php
        .byte   $42
        .byte   $44
        rti

        php
        .byte   $62
        .byte   $64
        rts

        php
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
        dey
        tax
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
        .byte   $54
        sbc     LFC00,x
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     LEE20
        .byte   $02
        asl     L0006
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LACAC
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $0C
        .byte   $0C
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
L0600:  brk
        brk
L0602:  brk
        .byte   $03
        brk
        .byte   $03
L0606:  brk
        .byte   $03
L0608:  brk
        php
        brk
        php
        brk
        php
        brk
        php
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
        .byte   $02
        .byte   $02
L0622:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L062E:  .byte   $02
        .byte   $04
        .byte   $02
L0631:  .byte   $02
        .byte   $02
L0633:  .byte   $02
        .byte   $02
        .byte   $02
        cpx     L02EE
        .byte   $02
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L064E:  .byte   $02
        .byte   $02
        ldy     LACAC
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
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
        bmi     L0633
        bmi     L0675
L0675:  php
        brk
        php
        brk
        php
        brk
        php
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
L0686:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L06AA:  .byte   $02
        .byte   $02
L06AC:  .byte   $02
        cpx     LEE22
        .byte   $02
        asl     L0006
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LACAC
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        .byte   $44
        brk
        brk
        brk
        brk
        cpy     #$C0
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
        php
        bmi     L06EC
        bmi     L06EE
        bmi     L06F0
        brk
        brk
        brk
        brk
L06EC:  brk
        brk
L06EE:  brk
        brk
L06F0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $0C
        .byte   $02
        rol     a
        bit     L022C
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L2220
        ldy     L4008
        .byte   $42
        .byte   $02
        php
        rts

        .byte   $62
L0730:  .byte   $02
        php
        php
        php
        brk
        bvc     L0748
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L0748:  brk
        brk
        brk
        brk
        brk
        php
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0020
        inc     L4402
        rti

        php
        .byte   $02
        .byte   $64
        rts

        php
        .byte   $02
        php
        php
        php
        .byte   $02
        brk
        brk
        brk
        bvc     L07A5
L07A5:  ora     L0000
        brk
        brk
        brk
        brk
        .byte   $02
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $EC
        .byte   $EE
L0800:  .byte   $02
        .byte   $02
L0802:  php
        php
L0804:  .byte   $02
        .byte   $02
L0806:  php
        php
L0808:  .byte   $02
        .byte   $02
        php
        php
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
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
L0820:  brk
        brk
L0822:  .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        .byte   $0F
        .byte   $FC
        brk
        brk
L082E:  brk
        brk
L0830:  brk
L0831:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpy     #$02
        .byte   $02
        .byte   $02
        .byte   $2E
L0846:  .byte   $02
        .byte   $02
        inc     LEC4E
        jsr     L0808
L084E:  php
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L00EE
        .byte   $02
        .byte   $02
        asl     L0006
        asl     L0002
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
L0866:  tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C2
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L24EC
        inc     L084E
        php
        php
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
L0882:  brk
        brk
        brk
        brk
L0886:  brk
        brk
L0888:  brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
L088E:  brk
        .byte   $03
        .byte   $0C
        cpy     #$0C
        cpy     #$5C
        cpy     #$40
        cpy     #$00
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L08AC:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0020
        bit     L00EE
        php
        php
        php
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
L08CA:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        ldy     LACAA
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
L08E4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $44
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        rti

        sbc     L0000,x
        php
L0900:  brk
        .byte   $04
        brk
        php
        brk
        brk
        brk
        brk
L0908:  brk
        brk
        brk
        brk
        brk
        brk
        brk
L090F:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        ldy     LACAA
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        ora     (L0000),y
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
        cpy     #$03
        brk
        .byte   $04
        brk
        php
        brk
        .byte   $04
        brk
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        inc     L0202
        .byte   $02
        asl     L00EE
        .byte   $02
        .byte   $02
        php
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L09A8:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        ldy     LACAA
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $0C
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
        cpy     #$03
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        php
        brk
        .byte   $04
        brk
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        asl     L0008
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $80
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     #$AA
        cpx     LE022
        .byte   $02
        php
        .byte   $42
        .byte   $44
        .byte   $02
        php
        .byte   $62
        .byte   $64
        bvc     L0A2A
L0A2A:  ora     L0000
        brk
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        dey
        brk
        brk
        brk
        brk
        brk
        bmi     L0A3B
L0A3B:  beq     L0A3D
L0A3D:  bmi     L0A3F
L0A3F:  brk
        brk
        .byte   $04
        .byte   $03
        beq     L0A45
L0A45:  beq     L0A47
L0A47:  beq     L0A49
L0A49:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        php
        .byte   $82
        sty     L0080
        .byte   $82
        ldx     #$A4
        ldy     #$A2
        .byte   $E2
        cpx     L00E0
        .byte   $E2
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        rti

        bpl     L0A9D
        ora     (L0000,x)
        brk
        brk
L0A9D:  brk
        tax
        tax
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
        beq     L0ADF
        beq     L0AE1
        beq     L0AE3
        beq     L0AB5
L0AB5:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ror     a
L0ADF:  .byte   $6C
        .byte   $02
L0AE1:  .byte   $02
        txa
L0AE3:  sty     L0202
        .byte   $02
        rol     L0002
        .byte   $02
        .byte   $02
        lsr     L0084
        .byte   $02
        .byte   $02
        ror     L00A4
        .byte   $02
        .byte   $02
        stx     L00E4
        bit     L0020
        inc     L0042
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        brk
        dey
        .byte   $22
        dey
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
        beq     L0B1B
L0B1B:  beq     L0B1D
L0B1D:  beq     L0B1F
L0B1F:  beq     L0B21
L0B21:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        stx     L0202
        .byte   $02
        plp
        .byte   $02
        .byte   $02
        .byte   $02
        pha
        .byte   $02
        .byte   $02
        .byte   $02
        pla
        .byte   $02
        .byte   $02
        cpx     L0288
        .byte   $02
        asl     L00E8
        jsr     L0822
        .byte   $44
        rti

        .byte   $42
        rti

        .byte   $64
        rts

        .byte   $62
        rts

        brk
        brk
        brk
        .byte   $44
        brk
        brk
        .byte   $22
        brk
        .byte   $22
        brk
        .byte   $22
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
        beq     L0B87
L0B87:  beq     L0B89
L0B89:  beq     L0B8B
L0B8B:  .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        php
        php
        .byte   $02
        cpx     L0608
        php
        asl     L0008
        asl     L0008
        asl     L0006
        php
        asl     L0008
        asl     L0008
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        ora     (L0000),y
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        .byte   $3C
        .byte   $03
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
        cpy     #$FF
        cpy     #$FF
        .byte   $FC
        .byte   $FF
        .byte   $FC
        .byte   $FF
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
L0C02:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        cpx     L2008
        php
        php
        asl     L0006
        php
        asl     L0006
        php
        asl     L0008
        asl     L0008
        asl     L0006
        asl     L0006
        asl     L0006
        php
        asl     L0008
        asl     L0006
        .byte   $44
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C3
        beq     L0C8F
        brk
        .byte   $0F
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        .byte   $FC
        .byte   $FC
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L2022
        .byte   $22
        php
        asl     L0008
        asl     L0006
        php
        php
L0C8F:  asl     L0006
        asl     L0006
        asl     L0008
        asl     L0008
        php
        php
        asl     L0006
        asl     L0008
        php
        asl     L0006
        php
        php
        asl     L0006
        asl     L0006
        php
        php
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $F3
        .byte   $FC
        cpy     a:L00F0
        .byte   $CF
        .byte   $0C
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L0CCC:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L02EE
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        php
        asl     L0002
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        asl     L0008
        cpx     L4220
        php
        php
        php
        .byte   $62
        rts

        .byte   $62
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $33
        brk
        brk
        brk
        bmi     L0D28
L0D28:  brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        beq     L0D3B
L0D3B:  beq     L0D3D
L0D3D:  brk
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
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        asl     a
        asl     L0002
        .byte   $02
        rol     a
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L00EE
        php
        php
        php
        php
        php
        rts

        .byte   $62
        rts

        .byte   $64
        .byte   $33
        rti

        .byte   $33
        .byte   $04
        .byte   $33
        brk
        .byte   $33
        brk
        .byte   $33
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        beq     L0DA3
L0DA3:  beq     L0DA5
L0DA5:  beq     L0DA7
L0DA7:  .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpy     L0002
        .byte   $02
        .byte   $02
        rol     L0202
        .byte   $02
        lsr     L0202
        cpx     L0208
        .byte   $02
        php
        .byte   $02
        .byte   $80
        .byte   $82
        sty     L0002
        ldy     #$A2
        ldy     L0002
        cpx     #$E2
        cpx     L0020
        .byte   $42
        rti

        rti

        .byte   $42
        .byte   $62
        rts

        rts

        .byte   $62
        bpl     L0DF6
L0DF6:  ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        .byte   $22
L0E00:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L0E0A:  brk
        brk
        brk
        beq     L0E0F
L0E0F:  beq     L0E41
        beq     L0E1F
        beq     L0E15
L0E15:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L0E1F:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
L0E30:  .byte   $02
L0E31:  .byte   $02
L0E32:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LACAC
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L0E41:  .byte   $02
        .byte   $02
        .byte   $02
        ldy     LACAC
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        inc     L4044
        .byte   $42
        php
        .byte   $64
        rts

        .byte   $62
        php
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
        php
        brk
        php
        bmi     L0E80
        php
        beq     L0E83
        beq     L0E85
        beq     L0E87
        .byte   $F0
L0E80:  brk
        brk
        brk
L0E83:  brk
        brk
L0E85:  brk
        brk
L0E87:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L02AC
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L02AC
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L02AC
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
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
        jsr     L2008
        php
        brk
        brk
        brk
        brk
        php
        .byte   $04
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L0F00:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
L0F26:  tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        eor     L0000,x
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
        .byte   $04
        brk
        ora     (L0040,x)
        brk
        bpl     L0F58
L0F58:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L0F9F:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
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
        .byte   $44
        ora     (L0000),y
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        brk
        bpl     L0FBB
L0FBB:  rti

        .byte   $04
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        bvc     L1014
L1014:  ora     L0000
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
L1020:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        bpl     L102C
L102C:  rti

        brk
        brk
        ora     (L0000,x)
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
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
        .byte   $0C
        brk
        .byte   $04
        brk
        bpl     L1099
L1099:  rti

        brk
        rti

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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        .byte   $0C
        bmi     L10EE
L10EE:  brk
        .byte   $03
        brk
        bmi     L10F3
L10F3:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0C
        bmi     L112E
        bmi     L1100
L1100:  brk
        rti

        brk
        rti

        bmi     L1116
        bmi     L110C
        brk
        brk
        brk
        brk
L110C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L1116:  brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L112C:  .byte   $02
        .byte   $02
L112E:  .byte   $02
        .byte   $02
L1130:  .byte   $02
L1131:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        php
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L2220
        bit     L0008
        rti

        .byte   $42
        .byte   $44
        php
        rts

        .byte   $62
        .byte   $64
        brk
        brk
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        bmi     L115E
L115E:  brk
        .byte   $03
        brk
        brk
        brk
        brk
        bmi     L1166
L1166:  bmi     L1168
L1168:  bmi     L116A
L116A:  bmi     L112C
        bmi     L115E
        cpy     #$F0
        cpy     #$F0
        .byte   $C3
        beq     L1175
L1175:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        asl     L0006
        php
        .byte   $02
        .byte   $02
L1192:  .byte   $02
        .byte   $02
L1194:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        cpx     L2008
        .byte   $22
        php
        php
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     L1192
        bmi     L1194
        bmi     L11D6
L11D6:  bmi     L11D8
L11D8:  .byte   $03
        beq     L11EA
        beq     L11DD
L11DD:  .byte   $FC
        brk
        .byte   $FF
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
L11EA:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        inc     L0202
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        php
        php
        inc     L0602
        .byte   $02
        asl     L0002
        php
        .byte   $02
        .byte   $02
        cpx     L0206
        .byte   $02
        php
        asl     L0002
        .byte   $02
        asl     L0008
        .byte   $80
        .byte   $82
        php
        php
        ldy     #$A2
        php
        php
        cpx     #$E2
        rti

        .byte   $42
        rti

        .byte   $42
        rts

        .byte   $62
        rts

        .byte   $62
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $C0
L1235:  brk
        brk
        tax
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        .byte   $FF
        brk
        .byte   $0C
        brk
        bmi     L1235
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        beq     L124B
L124B:  beq     L124D
L124D:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ror     a
        jmp     (L026E)

        php
        sty     L028E
        .byte   $02
        asl     L0006
        asl     L0002
        lsr     L0048
        .byte   $02
        sty     L0066
        pla
        .byte   $02
        ldy     L0086
        dey
        .byte   $02
        cpx     L00E6
        inx
        jsr     L4044
        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        bvc     L129A
L129A:  ora     L0000
        brk
        brk
        txa
        .byte   $22
        sty     LAA2C
        .byte   $22
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        beq     L12BF
        beq     L12C1
        beq     L12C3
        beq     L12B9
L12B9:  brk
        brk
        brk
        brk
        brk
        brk
L12BF:  brk
        brk
L12C1:  brk
        brk
L12C3:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        inc     L0202
        cpx     L0406
        asl     L0008
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$A2
        ldy     L00A0
        cpx     #$E2
        cpx     L00E0
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $30
L130E:  tax
        tax
L1310:  brk
        brk
L1312:  brk
        brk
L1314:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     L130E
        bmi     L1310
        bmi     L1312
        bmi     L1314
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0608
        .byte   $02
        asl     L0008
        php
        asl     L0006
        asl     L0008
        php
        .byte   $82
        sty     L0002
        .byte   $02
        ldx     #$A4
        .byte   $02
        .byte   $02
        .byte   $E2
        cpx     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L1386
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        .byte   $C0
L1386:  brk
        brk
        .byte   $3C
        beq     L13CA
        beq     L13CC
        beq     L13CB
        beq     L1391
L1391:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ror     a
        .byte   $02
        .byte   $02
        .byte   $02
        txa
        inc     L0202
        .byte   $02
        asl     L0002
        .byte   $02
        asl     L0002
        .byte   $02
L13CA:  .byte   $02
L13CB:  .byte   $02
L13CC:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        .byte   $44
        ora     (L0000),y
        brk
        brk
        dey
        brk
        .byte   $C0
L13E6:  brk
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
        bmi     L13E6
        brk
        beq     L13F9
L13F9:  beq     L142B
        beq     L13FD
L13FD:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jmp     (L026E)

        .byte   $02
        sty     L028E
L142B:  .byte   $02
        rol     L0028
        .byte   $02
        .byte   $02
        php
        php
        asl     L0006
        ror     L0068
        .byte   $02
        .byte   $02
        stx     L0088
        .byte   $02
        .byte   $02
        inc     L00E8
        bit     L0022
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        brk
        asl     a
        .byte   $C0
L1452:  tax
        brk
L1454:  brk
        brk
L1456:  brk
        brk
L1458:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     L1452
        bmi     L1454
        bmi     L1456
        bmi     L1458
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        cpx     L0606
        asl     L0008
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
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
        beq     L14FD
        beq     L14FF
        beq     L1501
        beq     L1512
        beq     L14D5
L14D5:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        asl     L0006
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
        .byte   $02
        .byte   $02
        rol     a
        .byte   $2C
        .byte   $02
L14FD:  .byte   $02
        .byte   $02
L14FF:  .byte   $02
        .byte   $02
L1501:  .byte   $02
        .byte   $02
        .byte   $02
        cpx     L2220
        jsr     L0606
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $80
        .byte   $82
        .byte   $02
        .byte   $02
L1512:  ldy     #$A2
        jsr     LE022
        .byte   $E2
        rti

        .byte   $42
        rti

        .byte   $42
        rts

        .byte   $62
        rts

        .byte   $62
        brk
        brk
        .byte   $0C
        brk
        brk
        eor     L0000,x
        brk
        bmi     L155A
L152A:  dey
        tax
L152C:  brk
        brk
L152E:  brk
        brk
L1530:  bmi     L1532
L1532:  bmi     L1534
L1534:  bmi     L1536
L1536:  bmi     L1538
L1538:  bmi     L152A
        bmi     L152C
        bmi     L152E
        bmi     L1530
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
L155A:  .byte   $04
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        inc     LEC02
        .byte   $22
        asl     L0008
        php
        asl     L0084
        .byte   $80
        .byte   $82
        sty     L00A4
        ldy     #$A2
        ldy     L00E4
        cpx     #$E2
        cpx     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
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
L1596:  tax
        tax
L1598:  brk
        brk
L159A:  brk
        brk
L159C:  bmi     L159E
L159E:  bmi     L15A0
L15A0:  bmi     L15D2
        bmi     L15A4
L15A4:  bmi     L1596
        bmi     L1598
        bmi     L159A
        bmi     L159C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0C
L15D2:  .byte   $02
        .byte   $02
        rol     a
        bit     L0602
        .byte   $02
        .byte   $02
        .byte   $02
        php
        bit     L0020
        inc     L0606
        asl     L0006
        php
        .byte   $80
        .byte   $82
        sty     L0002
        ldy     #$A2
        ldy     L0002
        cpx     #$E2
        cpx     L0020
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        .byte   $03
        .byte   $0C
        bvc     L15FE
L15FE:  ora     L0000
L1600:  bmi     L163E
L1602:  tax
        .byte   $22
L1604:  brk
        brk
L1606:  brk
        brk
        bmi     L160A
L160A:  bmi     L160C
L160C:  bmi     L160E
L160E:  bmi     L1600
        bmi     L1602
        bmi     L1604
        bmi     L1606
        .byte   $3F
        beq     L1619
L1619:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L163E:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2222
        inc     L0606
        php
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0022
        bit     L0020
        asl     L0042
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        brk
        brk
        brk
        .byte   $44
        brk
        brk
        brk
        brk
        cpy     #$00
L166E:  brk
        .byte   $0C
L1670:  brk
        .byte   $0C
L1672:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     L166E
        bmi     L1670
        bmi     L1672
        .byte   $F0
L1683:  .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        ora     (L0000),y
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
        cpy     #$30
        beq     L16EB
L16EB:  beq     L16ED
L16ED:  beq     L16F2
        beq     L16F1
L16F1:  brk
L16F2:  brk
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
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $04
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        php
        php
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        ldx     L02C6
        .byte   $02
        dec     L02C6
        .byte   $02
        ldx     L22C6
        bit     L0008
        php
        .byte   $42
        .byte   $44
        rti

        rti

        .byte   $62
        .byte   $64
        rts

        rts

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
        cpy     #$00
        .byte   $C3
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $03
        beq     L175A
        beq     L1768
        .byte   $FC
L175A:  .byte   $0F
        .byte   $FC
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
L1768:  brk
        brk
        brk
        brk
        php
        php
        php
        php
        php
        php
        php
        php
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
        php
        php
        php
        php
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
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
        .byte   $0F
        brk
        .byte   $0F
        brk
        .byte   $0F
        brk
        .byte   $0F
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        php
        php
        php
        php
        php
        php
        php
        php
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
        php
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
        php
        php
        php
        php
        .byte   $44
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
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
        .byte   $0F
        brk
        .byte   $0F
        brk
        .byte   $0F
        brk
        .byte   $0F
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $0C
        .byte   $FC
        brk
        brk
        brk
        brk
        brk
L1839:  brk
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
        php
        php
        php
        php
        php
        php
        php
        php
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
        php
        php
        php
        php
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
        php
        php
        php
        php
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

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
        .byte   $0F
        cpy     #$0F
        cpy     #$0F
        cpy     #$0F
        cpy     #$03
        .byte   $FC
        .byte   $03
        .byte   $FC
        .byte   $03
        .byte   $FC
        .byte   $03
        .byte   $FC
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
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        php
        php
        brk
        brk
        brk
        php
        brk
        brk
        brk
        php
        brk
        brk
        brk
        php
        brk
        brk
        brk
        php
        brk
        brk
        php
        php
        brk
        brk
        .byte   $42
        .byte   $44
        brk
        brk
        .byte   $62
        .byte   $64
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $FC
        .byte   $FF
        .byte   $FF
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
        asl     L963F
        brk
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        .byte   $FB
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        cmp     #$30
        sta     L0000
        sbc     L0E30,x
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        sbc     L0E30,x
        .byte   $0F
        stx     L0000,y
        stx     L0030
        sta     L0000
        ora     L0E31
        .byte   $3C
        brk
        brk
        brk
        brk
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        stx     L0030,y
        sta     L0000
        sbc     L0E30,x
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        sbc     L0E30,x
        .byte   $0F
        stx     L0000,y
        ora     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        .byte   $7B
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        cmp     #$30
        sta     L0000
        and     L0E31
        .byte   $3F
        stx     L0000,y
        lda     #$30
        sta     L0000
        and     L8531
        brk
        .byte   $93
        and     (L000E),y
        .byte   $0F
        brk
        brk
        brk
        brk
        sta     L0000
        .byte   $53
        and     (L000E),y
        .byte   $3F
L1A0E:  stx     L0000,y
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        cpy     L0031
        asl     L960F
        brk
        cmp     #$30
        sta     L0000
        and     L0E31
        .byte   $3F
        stx     L0000,y
        lda     #$30
        sta     L0000
        sbc     L8530,x
        brk
        .byte   $53
        and     (L000E),y
        .byte   $0F
        brk
        brk
        brk
        brk
        sta     L0000
        sbc     L0E30,x
        .byte   $3F
        stx     L0000,y
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        .byte   $FB
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        cmp     #$30
        sta     L0000
        and     L0E31
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        and     L0E31
        .byte   $0F
        stx     L0000,y
        stx     L0030
        sta     L0000
        .byte   $53
        and     (L000E),y
        .byte   $3C
        brk
        brk
        brk
        brk
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        stx     L0030,y
        sta     L0000
        ora     L0E31
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        ora     L0E31
        .byte   $0F
        stx     L0000,y
        ora     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     L8530,x
        brk
        and     L8531
        brk
        .byte   $7B
        and     (L000E),y
        .byte   $0F
L1AA0:  stx     L0000,y
        cmp     #$30
        sta     L0000
        sbc     L0E30,x
        .byte   $3F
        stx     L0000,y
        .byte   $53
        and     (L0085),y
        brk
        .byte   $93
        and     (L0085),y
        brk
        .byte   $93
        and     (L000E),y
        .byte   $0F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L9633
        brk
        sbc     L8530,x
        brk
        cpy     L0031
        asl     L960F
        brk
        cmp     #$30
        sta     L0000
        and     L0E31
        .byte   $3F
        stx     L0000,y
        .byte   $53
        and     (L0085),y
        brk
        and     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $0F
        brk
        brk
        brk
        brk
        sta     L0000
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     L8530,x
        brk
        and     L8531
        brk
        .byte   $FB
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        cmp     #$30
        brk
        brk
        brk
        brk
        asl     L960F
        brk
        lda     #$30
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        stx     L0030
        sta     L0000
        .byte   $7B
        and     (L000E),y
        bmi     L1AA0
        brk
        cpy     L0031
        asl     L960F
        brk
        stx     L0030,y
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        .byte   $7B
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        ora     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     L8530,x
        brk
        and     L8531
        brk
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        sbc     L8530,x
        brk
        .byte   $93
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     L8530,x
        brk
        .byte   $7B
        and     (L0085),y
        brk
        .byte   $7B
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        ora     L8531
        brk
        .byte   $7B
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        cpy     L0031
        asl     L960F
        brk
        cmp     #$30
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        lda     #$30
        sta     L0000
        .byte   $7B
        and     (L000E),y
        .byte   $0F
        brk
        brk
        brk
        brk
        sta     L0000
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        .byte   $53
        and     (L0000),y
        brk
        brk
        brk
        sta     L0000
        .byte   $FB
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        .byte   $53
        and     (L0085),y
        brk
        .byte   $93
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        .byte   $53
        and     (L0085),y
        brk
        .byte   $53
        and     (L0085),y
        brk
        ora     L0E32,y
        .byte   $0F
        stx     L0000,y
        and     L8531
        brk
        sbc     L0E30,x
        .byte   $3F
        stx     L0000,y
        and     a:L0031
        brk
        brk
        brk
        sta     L0000
        .byte   $FB
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
        and     L8531
        brk
        ora     L0E31
        .byte   $3F
        stx     L0000,y
        ora     L8531
        brk
        sbc     L8530,x
        brk
        cpy     L0031
        .byte   $0E
        .byte   $0F
L1BF0:  stx     L0000,y
        ora     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $3F
L1BFA:  stx     L0000,y
        ora     a:L0031
        brk
        brk
        brk
        sta     L0000
L1C04:  cpy     L0031
        asl     L960F
        brk
        sbc     L8530,x
        brk
        and     L0E31
        .byte   $3F
        stx     L0000,y
        sbc     L8530,x
        brk
L1C18:  sbc     L8530,x
        brk
        .byte   $93
        and     (L000E),y
        .byte   $0F
        stx     L0000,y
L1C22:  ora     L8531
        brk
        .byte   $53
        and     (L000E),y
        .byte   $3F
        stx     L0000,y
        sbc     a:L0030,x
        brk
        brk
        brk
        sta     L0000
        ora     L0E32,y
        .byte   $0F
        stx     L0000,y
        cmp     #$30
        sta     L0000
        and     L0E31
        .byte   $3F
        stx     L0000,y
L1C44:  .byte   $53
        and     (L0085),y
        brk
        and     L8531
        brk
        .byte   $FB
        .byte   $31
L1C4E:  asl     a:L000F
        brk
        brk
        brk
        sta     L0000
        .byte   $93
        and     (L000E),y
        .byte   $3F
        sta     L0000
        ror     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $3F
        bmi     L1C75
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1BF0
        brk
        ror     L0E30,x
        .byte   $0F
        sta     L0000
L1C74:  .byte   $54
L1C75:  bmi     L1BFA
        brk
        ror     L0E30,x
        .byte   $0F
        sta     L0000
L1C7E:  .byte   $42
        bmi     L1C04
        brk
        stx     L0030
        asl     a:L003C
        brk
        brk
        brk
        .byte   $83
        brk
        and     (L0030),y
        asl     L850F
        brk
        .byte   $4B
        bmi     L1C18
        brk
        ror     L0E30,x
        .byte   $0F
        sta     L0000
        .byte   $54
        bmi     L1C22
        brk
        ror     L0E30,x
        .byte   $0F
L1CA4:  sta     L0000
        stx     L0030
        .byte   $83
        brk
        lda     #$30
        .byte   $0E
        .byte   $3F
L1CAE:  sta     L0000
        ror     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
L1CB8:  .byte   $2F
        bmi     L1CC9
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1C44
        brk
        stx     L0030,y
        asl     L853F
        brk
        .byte   $54
L1CC9:  bmi     L1C4E
        brk
L1CCC:  stx     L0030,y
        .byte   $83
        brk
        and     (L0030),y
        asl     a:L000F
        brk
L1CD6:  brk
        brk
        .byte   $83
        brk
        lda     #$30
        asl     L853F
        brk
        ror     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
        sec
        bmi     L1CF9
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1C74
        brk
        stx     L0030,y
        asl     L853F
        brk
L1CF8:  .byte   $54
L1CF9:  bmi     L1C7E
        brk
        ror     L8330,x
        brk
        and     #$30
L1D02:  asl     a:L000F
        brk
        brk
        brk
        .byte   $83
        brk
        ror     L0E30,x
        .byte   $3F
        sta     L0000
        ror     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $3F
        bmi     L1D29
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1CA4
        brk
        stx     L0030,y
L1D24:  asl     L850F
        brk
        .byte   $54
L1D29:  bmi     L1CAE
        brk
        stx     L0030,y
L1D2E:  asl     L850F
        brk
        .byte   $42
        bmi     L1CB8
        brk
        lda     #$30
        asl     a:L003C
        brk
        brk
        brk
        .byte   $83
        brk
        and     (L0030),y
        asl     L850F
        brk
        .byte   $4B
        bmi     L1CCC
        brk
        stx     L0030
        asl     L850F
        brk
        .byte   $54
        bmi     L1CD6
        brk
        stx     L0030
        asl     L850F
        brk
        stx     L0030
        .byte   $83
        brk
L1D5E:  lda     #$30
        asl     L853F
        brk
        ror     L8330,x
        brk
L1D68:  stx     L0030,y
        .byte   $83
        brk
        .byte   $2F
        .byte   $30
L1D6E:  asl     L850F
        brk
        .byte   $64
        bmi     L1CF8
        brk
        .byte   $7E
        .byte   $30
L1D78:  asl     L853F
        brk
        .byte   $A9
L1D7D:  bmi     L1D02
        brk
        cmp     #$30
L1D82:  .byte   $83
        brk
        and     (L0030),y
        asl     a:L000F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L8533
        brk
        ror     L8330,x
        brk
        sec
        bmi     L1DA9
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1D24
        brk
        stx     L0030,y
        asl     L853F
        brk
        .byte   $A9
L1DA9:  bmi     L1D2E
        brk
        stx     L0030,y
        .byte   $83
        brk
        and     #$30
        asl     a:L000F
        brk
        brk
        brk
        .byte   $83
        brk
        lda     #$30
        asl     L853F
        brk
        ror     L8330,x
        brk
        stx     L0030,y
        .byte   $83
        brk
        .byte   $3F
        bmi     L1DD9
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1DD1
L1DD1:  brk
        brk
        brk
L1DD4:  asl     L850F
        brk
        .byte   $54
L1DD9:  bmi     L1D5E
        brk
        cmp     #$30
L1DDE:  asl     L850F
        brk
        .byte   $42
        bmi     L1D68
        brk
        ldx     L0E30,y
        bmi     L1D6E
        brk
        sec
        bmi     L1DFD
        .byte   $0F
        sta     L0000
        .byte   $4B
        bmi     L1D78
        brk
        cmp     #$30
        asl     L850F
        brk
        .byte   $54
L1DFD:  bmi     L1D82
        brk
        ldx     L0E30,y
        .byte   $0F
        sta     L0000
        stx     L0030
        .byte   $83
        brk
L1E0A:  lda     #$30
        asl     L853F
        brk
        ror     L8330,x
        brk
        stx     L0030,y
        .byte   $83
        brk
        and     (L0030),y
        asl     L850F
        brk
        ror     L8330,x
        brk
        cmp     #$30
        asl     L853F
        brk
        ror     L8330,x
        brk
        ldx     L8330,y
        brk
        .byte   $2F
        bmi     L1E41
        .byte   $0F
        sta     L0000
        stx     L0030
        .byte   $83
        brk
L1E3A:  ldx     L0E30,y
        .byte   $3F
        sta     L0000
        .byte   $7E
L1E41:  bmi     L1E43
L1E43:  brk
        brk
        brk
        .byte   $83
        brk
        sec
        bmi     L1E59
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1DD4
        brk
        cmp     #$30
        asl     L850F
        brk
        .byte   $54
L1E59:  bmi     L1DDE
        brk
        ldx     L0E30,y
        .byte   $0F
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        lda     #$30
        .byte   $0E
        .byte   $3F
L1E6A:  sta     L0000
        lda     #$30
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $3F
        bmi     L1E85
        .byte   $0F
        sta     L0000
        lda     #$30
        .byte   $83
        brk
        cmp     #$30
        asl     L853F
        brk
        .byte   $A9
L1E85:  bmi     L1E0A
        brk
        lda     #$30
        .byte   $83
        brk
        .byte   $42
        bmi     L1E9D
        .byte   $0F
L1E90:  sta     L0000
        stx     L0030,y
        .byte   $83
        brk
        ror     L0E30,x
        .byte   $3F
L1E9A:  sta     L0000
        .byte   $96
L1E9D:  bmi     L1E9F
L1E9F:  brk
        brk
        brk
        .byte   $83
        brk
        .byte   $3F
        bmi     L1EB5
        .byte   $0F
        sta     L0000
        stx     L0030,y
        .byte   $83
        brk
        stx     L0030
        asl     L853F
        brk
        .byte   $86
L1EB5:  bmi     L1E3A
        brk
        ror     L8330,x
        brk
        sec
        bmi     L1ECD
        .byte   $0F
        sta     L0000
        stx     L0030
        .byte   $83
        brk
        lda     #$30
        asl     L853F
        brk
        .byte   $86
L1ECD:  bmi     L1ECF
L1ECF:  brk
        brk
        brk
        .byte   $83
        brk
        sec
        bmi     L1EE5
        .byte   $0F
        sta     L0000
        ror     L8330,x
        brk
        stx     L0030,y
        asl     L853F
        brk
        .byte   $7E
L1EE5:  bmi     L1E6A
        brk
        ror     L8330,x
        brk
        and     (L0030),y
        asl     L850F
        brk
        stx     L0030
        .byte   $83
        brk
        lda     #$30
        asl     L853F
        brk
        ror     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $42
        bmi     L1F15
        .byte   $0F
        sta     L0000
        .byte   $64
        bmi     L1E90
        brk
        stx     L0030,y
        asl     L853F
        brk
        .byte   $A9
L1F15:  bmi     L1E9A
        brk
        stx     L0030,y
        .byte   $83
        brk
        .byte   $3F
        bmi     L1F2D
        .byte   $0F
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        cmp     #$30
        brk
        brk
        brk
        brk
        brk
L1F2D:  brk
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
L2000:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2008:  brk
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
L201A:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2022:  brk
        brk
L2024:  brk
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
L2050:  brk
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
L20AE:  brk
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
L2109:  brk
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
L2208:  brk
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
L2220:  brk
        brk
L2222:  brk
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
L2266:  brk
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
L22A0:  brk
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
L22C6:  brk
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
L2330:  brk
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
L2400:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2408:  brk
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
L2422:  brk
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
L24EC:  brk
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
L2856:  brk
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
L2886:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L288E:  brk
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
L28C8:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2A86:  brk
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
L2C68:  brk
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
L2C86:  brk
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
L2E86:  brk
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
L3103:  brk
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
L3530:  brk
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
L3600:  brk
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
        brk
        brk
L3C00:  brk
        brk
        brk
        brk
        brk
        brk
        brk
L3C07:  brk
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
L3CC0:  brk
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
        jmp     L5645

        eor     L004C
        jsr     L0031
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
        .byte   $54
        pha
        eor     L0020
        bvc     L4033
        .byte   $52
        lsr     L4349
        eor     #$4F
        eor     L0053,x
        jsr     L4C50
        eor     (L0049,x)
        lsr     a:L0053
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
L4008:  brk
        brk
        .byte   $FF
        .byte   $FF
L400C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sei
        sta     LA126,y
        ora     #$2A
        .byte   $1A
        .byte   $1C
        ora     #$1C
        .byte   $0C
        .byte   $3C
        ora     #$0F
        bmi     L405C
L4020:  ora     #$0E
L4022:  asl     L090F
        asl     L201A
        brk
        asl     L1020
        brk
        asl     L1839
        brk
        .byte   $37
        .byte   $27
L4033:  asl     L000C,x
        ora     (L0001),y
        clc
        .byte   $0C
        clc
        php
        .byte   $17
        .byte   $0C
        .byte   $03
        plp
        .byte   $17
        .byte   $0C
        .byte   $04
        clc
        .byte   $16
L4044:  .byte   $0C
        asl     L201A
        brk
        asl     L1020
        brk
        asl     L1839
        brk
        .byte   $37
        .byte   $27
        asl     L0053,x
        .byte   $87
        .byte   $89
        sty     L00D1,x
        .byte   $0B
        .byte   $03
        .byte   $03
L405C:  .byte   $0B
        .byte   $02
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
        .byte   $E3
        .byte   $7F
        .byte   $D3
        .byte   $D2
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L0006
        asl     L000F
        .byte   $83
        cpy     #$C0
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        php
        .byte   $02
        ora     #$00
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L020A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     L0002
        .byte   $02
        .byte   $02
        cpx     #$0E
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ror     L0022
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        ror     L0000
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $E7
        sbc     #$02
        .byte   $02
        cpy     L02CE
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0028
        rol     a
        .byte   $02
        lsr     L006A
        lsr     a
        pla
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
L4220:  .byte   $64
        rts

        .byte   $62
        .byte   $64
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        eor     L55AA,y
        eor     L0000,y
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
        .byte   $FC
        brk
        .byte   $FC
L4240:  brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        ldx     L00AA
        tax
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $0C
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L42EE:  .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        tax
        tax
        tax
        tax
L4300:  tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L4349:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        asl     L0002
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        .byte   $44
        ora     L0004,x
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        brk
        brk
        cpy     #$00
        bmi     L4389
L4389:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $82
        .byte   $02
        .byte   $02
        jmp     (L0286)

        php
        php
        pha
        asl     L0008
        jsr     L0222
        php
        rti

        .byte   $42
        .byte   $02
        php
        rts

        .byte   $62
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        ror     L002A
        eor     L0010
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FC
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
L4402:  brk
        brk
        .byte   $02
        .byte   $02
L4406:  .byte   $02
        .byte   $02
L4408:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L4422:  .byte   $02
        .byte   $02
        rol     L0028
        rol     a
        .byte   $02
        lsr     L006A
        lsr     a
        pla
        pha
        pha
        pha
        ldx     #$6A
        pha
        pha
        pha
        bit     L0020
        jsr     L4422
        rti

        rti

        .byte   $42
        .byte   $64
        rts

        rts

        .byte   $62
        ror     a
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L0055,x
        eor     L0055,x
        eor     L0000,x
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L008C
        .byte   $02
        asl     L0008
        stx     L0806
        php
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0015,x
        ora     L0000,x
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
        .byte   $FC
        brk
        .byte   $FF
        cpy     #$FF
        .byte   $F0
L44CB:  .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        php
        asl     L0002
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        .byte   $04
        eor     L0000,x
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
        cpy     #$FF
        brk
        .byte   $FF
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        asl     L0008
        .byte   $02
        asl     L0008
        php
        asl     L0008
        php
        php
        asl     L0008
        php
        php
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        sta     L00A6,x
        eor     L556A,y
        ora     L0015,x
        .byte   $14
        .byte   $04
        .byte   $14
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
        cpy     #$C0
        .byte   $FF
        .byte   $F0
L459F:  .byte   $FF
        .byte   $FC
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        php
        .byte   $42
        .byte   $44
        rti

        php
        .byte   $62
        .byte   $64
        rts

        php
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055
        .byte   $44
        eor     L0044,x
        eor     L0000,x
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
L4608:  .byte   $FF
        .byte   $FF
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L0E0A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        .byte   $02
        .byte   $02
        cpx     #$CC
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        php
        php
        sta     L0055,x
        txs
        lsr     L0055,x
        sta     L0055,x
        tax
        eor     L0059,x
        eor     L0055,x
        eor     L0055,x
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
        cpy     #$00
        cpy     #$00
        cpy     #$00
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L4686:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     #$02
        .byte   $02
        .byte   $02
        dec     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        ror     L00AA
        eor     L00AA,x
        eor     L000A,x
        eor     L00AA,x
        .byte   $04
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        .byte   $03
L46E6:  brk
        .byte   $03
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0028
        php
        php
        lsr     L0048
        .byte   $02
        php
        jsr     L0222
        php
        rti

        .byte   $42
        .byte   $02
        php
        rts

        .byte   $62
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        asl     a
        eor     L0022,x
        brk
        .byte   $02
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
        .byte   $03
        brk
        .byte   $FF
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        lsr     a
        pla
        .byte   $02
        .byte   $02
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        eor     L00AA,y
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        .byte   $02
        .byte   $02
        cpx     #$CC
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     #$88
        txa
        .byte   $02
        .byte   $80
        pha
        pha
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
L480A:  .byte   $64
        rts

        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        ror     a
        txs
        ror     L0055
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
        .byte   $FC
L4826:  brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L4846:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     #$02
        .byte   $02
        .byte   $02
        .byte   $CE
        .byte   $02
L4856:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sty     L0202
        .byte   $02
        stx     L0202
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        adc     L0055
        lsr     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
L4886:  brk
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
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L48AE:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        php
        php
        .byte   $02
        php
        asl     L0006
        .byte   $22
        jsr     L2422
        .byte   $42
        rti

        .byte   $42
        .byte   $44
        .byte   $62
        rts

        rts

        rts

        eor     L00AA,x
L48E6:  eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L008A,x
        ora     (L0000),y
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
        .byte   $FC
        cpy     #$FF
        .byte   $F0
L4901:  .byte   $FF
        cpy     #$FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        .byte   $06
L4948:  php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        dey
        .byte   $22
        dey
        .byte   $22
        php
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$FF
        brk
        brk
        brk
        brk
        cpy     #$FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldx     L0002
        .byte   $02
        .byte   $02
        rol     L0202
        .byte   $02
        lsr     L0606
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        ror     a
        tax
        .byte   $22
        lda     (L00A1,x)
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L0E0A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L0E0A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        lda     (L00A1,x)
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L4A86:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L00AA,x
        eor     L000A,x
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L4AAC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     L0002
        .byte   $02
        .byte   $02
        cpx     #$02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LAC08
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0099,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     (L0055),y
        ora     L0005
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        brk
        .byte   $0C
        brk
        php
        brk
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $E7
        sbc     #$02
        .byte   $02
        cpy     L02CE
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        eor     L0055,x
        adc     L0055
        tax
        eor     L0056,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        ora     (L0005),y
        ora     (L0000,x)
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
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        tax
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0002
        .byte   $02
        .byte   $82
        lsr     L0022
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0095,x
        sta     L0055,x
L4C4A:  tax
        ror     L0059
        eor     L0055,x
        .byte   $55
L4C50:  brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L020A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        plp
        rol     a
        .byte   $02
        .byte   $02
        pha
        lsr     a
        pla
        .byte   $82
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L00A9,x
        adc     L0059
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $02
        bit     L0E0A
        .byte   $02
        .byte   $02
        ror     L0202
        rol     L0028
        rol     a
        .byte   $02
        lsr     L006A
        lsr     a
        pla
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        adc     L0055
        eor     L0055,x
        eor     L0055,x
        sta     L0055,x
        txs
        lsr     L0055,x
        eor     L0000,x
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        ldy     L0202
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        .byte   $02
        .byte   $02
        cpx     #$CC
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0095,x
        eor     L00AA,x
        eor     L0059,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $02
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LAAAA
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     #$02
        .byte   $02
        .byte   $02
        dec     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        php
        .byte   $02
        php
        asl     L0006
        .byte   $02
        php
        asl     L0006
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        ror     L0055
        ora     L0005,x
        ora     (L0041),y
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FC
        .byte   $F0
L4E0F:  .byte   $FF
        .byte   $F0
L4E11:  .byte   $FF
        .byte   $F0
L4E13:  .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        ldy     L02AC
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0065,x
        eor     L0059,x
        eor     L0055,x
        eor     L0055,x
        ora     L0055
        ora     (L0055,x)
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $02
        brk
        .byte   $02
        .byte   $F0
L4E79:  .byte   $FF
        .byte   $F0
L4E7B:  .byte   $FF
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        brk
        brk
        brk
        brk
        brk
L4E86:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     LAAAC
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        .byte   $FD
L4EE6:  rti

        .byte   $FC
        bpl     L4EE6
        .byte   $0C
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tay
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0202
        .byte   $02
        lsr     LAAAC
        tax
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0028
        .byte   $02
        .byte   $82
        lsr     L006A
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0011,x
        eor     L0041,x
        eor     (L0055,x)
        eor     L0055,x
        eor     L0055,x
        brk
        brk
L4F46:  brk
        brk
        brk
        .byte   $C2
        brk
        and     (L0000),y
        ora     L0300
        .byte   $03
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        cpy     #$02
        .byte   $02
        .byte   $02
        rol     L0202
        .byte   $02
        lsr     L0202
        ldy     L02AC
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        .byte   $02
        .byte   $02
        cpx     #$CC
        .byte   $02
        .byte   $02
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rol     a
        .byte   $02
        .byte   $02
        .byte   $02
        lsr     a
        pla
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        ora     (L0055),y
        eor     L00A9,x
        eor     L009A,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     L0002
        .byte   $02
        .byte   $02
        cpx     #$02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     #$02
        .byte   $02
        .byte   $02
        dec     L0C02
        .byte   $02
        .byte   $02
        bit     L0E0A
        .byte   $02
        .byte   $02
        ror     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        bit     L0008
        .byte   $02
        .byte   $02
        .byte   $44
        php
        .byte   $02
        .byte   $02
        .byte   $64
        php
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0099,x
        adc     L0055
        stx     L00A6,y
        eor     L0056,x
        eor     L0041,x
        brk
        eor     L0000,x
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $03
        cpy     #$00
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $E7
        sbc     #$02
        .byte   $02
        cpy     L02CE
        .byte   $02
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        adc     L0055
        tax
        eor     L0056,x
        eor     L0055,x
        eor     L0041
        eor     L0055,x
        eor     L0055,x
        eor     (L0005),y
        ora     L0000
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        bmi     L5096
L5096:  jmp     L4300

        brk
        brk
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        asl     L0006
        .byte   $02
L50BD:  .byte   $02
        asl     L00CC
        .byte   $02
        .byte   $02
        asl     L00EC
        .byte   $02
        php
        asl     L0002
        .byte   $02
        php
        asl     L0006
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C2
        .byte   $02
        .byte   $02
        .byte   $02
        rol     L0602
        asl     L004E
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0009,x
        eor     L0088,x
        ora     (L0004),y
        eor     L0055,x
        .byte   $44
        bvc     L5149
        eor     L0005,x
        ora     L0000
        brk
        brk
        beq     L50BD
        .byte   $FF
        cpy     #$C0
        .byte   $04
        .byte   $0C
        .byte   $03
        brk
        .byte   $C3
        brk
        .byte   $C3
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        asl     L0006
        dec     L0602
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        asl     L0002
        asl     L0002
        asl     L0002
        asl     L0002
        asl     L00AA
        asl     L0006
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
L5149:  .byte   $02
        php
        jsr     L0202
        php
        rti

        .byte   $02
        .byte   $02
        php
        rts

        eor     L0055,x
        eor     L0005
        lsr     L0044,x
        eor     L0044
        .byte   $44
        .byte   $04
        .byte   $14
        eor     L0055,x
        brk
        ora     L0000
        cpy     #$C0
        brk
        brk
        cpy     #$FF
        cpy     #$00
        .byte   $FF
        brk
        bpl     L5173
        .byte   $3F
        .byte   $FC
        .byte   $30
L5173:  .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L000C
        .byte   $02
        .byte   $02
        asl     L000A
        asl     L0602
        ror     L0202
        asl     L0002
        .byte   $02
        asl     L0006
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        ora     L0055
        ora     (L0065),y
        ora     (L006A),y
        ora     (L0055,x)
        eor     L0055,x
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$FF
        brk
        brk
L51D6:  brk
        brk
        bmi     L51D6
        .byte   $3F
        .byte   $FC
        jsr     L00FC
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        asl     L0002
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $C7
        .byte   $02
        asl     L0006
        asl     L0002
        asl     L00E0
        cpy     L0602
        .byte   $02
        cpx     L0602
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        ora     L0005,x
        ora     (L0095),y
        ora     (L00A0),y
        ora     (L0059),y
        eor     L0015,x
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$FF
        cpy     #$30
        cpy     #$30
        brk
        .byte   $FC
L5246:  .byte   $3F
        .byte   $FC
        bpl     L5246
        brk
        .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     #$02
        .byte   $02
        .byte   $02
        dec     L0802
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        php
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        jsr     L2022
        .byte   $22
        rti

        .byte   $42
        rti

        .byte   $42
        rts

        .byte   $62
        rts

        .byte   $62
        eor     L0055,x
        ora     L0055
        eor     L0055,x
        ror     L0045
        eor     L0040,x
        .byte   $04
        eor     L0000,x
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        brk
        cpy     #$00
        brk
        cpy     #$FF
        brk
        .byte   $FF
        .byte   $3F
        .byte   $FC
        .byte   $0C
        .byte   $FC
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        asl     L0008
        asl     L0002
        php
        .byte   $02
        php
        .byte   $02
        asl     L0008
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bit     L0008
        .byte   $02
        .byte   $02
        .byte   $44
        php
        .byte   $02
        .byte   $02
        .byte   $64
        php
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0005
        .byte   $44
        .byte   $04
        eor     L0055,x
        brk
        eor     L0000,x
        ora     L0000
        cpy     #$00
        brk
        brk
        cpy     #$00
        cpy     #$3F
        .byte   $FC
        rti

        .byte   $FC
        .byte   $3F
        brk
        .byte   $33
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L5345:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L534C:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        php
        asl     L0008
        .byte   $02
        asl     L0002
        asl     L0002
        php
        asl     L0002
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0008
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0005
        .byte   $44
        .byte   $04
        eor     L0055,x
        eor     L0050,x
        ora     L0005
        brk
        cpy     #$00
        brk
        brk
        cpy     #$00
        cpy     #$3F
        brk
        .byte   $80
        brk
        .byte   $3F
        .byte   $0C
        .byte   $33
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L00AA
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055
        .byte   $44
        eor     L0044,x
        eor     L0054,x
        eor     (L0005),y
        ora     L0000
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $0F
        rti

        brk
        brk
        brk
        brk
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        tax
        tax
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0051,x
        ora     L0005
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $0C
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L08AC
        ldy     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0054,x
        ora     L0005
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        brk
        php
        brk
        .byte   $0C
        brk
        php
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        tax
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ldy     L08AC
        jsr     L0202
        php
        rti

        .byte   $02
        .byte   $02
        php
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0000,x
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     L5539
L5539:  php
        brk
        php
        brk
        .byte   $FC
        brk
        .byte   $FC
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
L554F:  brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L5555:  .byte   $02
L5556:  .byte   $02
        .byte   $02
        .byte   $04
L5559:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L00AC
L556A:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $22
        php
        .byte   $02
        .byte   $02
        .byte   $42
        php
        .byte   $02
        .byte   $02
        .byte   $62
        php
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        .byte   $54
        eor     L0055,x
        eor     L0055,x
        eor     L0000,x
        eor     L0000,x
        ora     L0030
        bmi     L559F
L559F:  jsr     L0000
L55A2:  brk
        brk
        bmi     L55A2
        brk
        .byte   $FC
        brk
        brk
L55AA:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $C7
        .byte   $02
        .byte   $02
        sbc     L00E7
        sbc     #$02
        cpx     #$CC
        dec     L0202
        cpx     L0202
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sta     L0055,x
        tax
        ror     L0059
        eor     L0051,x
        eor     L0055,x
        ora     L0055,x
        bvc     L5656
        eor     L0005,x
        ora     L0000
        brk
        brk
        bmi     L560D
L560D:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        cpy     #$00
        beq     L5618
L5618:  brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        asl     L0006
        .byte   $06
L5645:  .byte   $02
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L5656:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        rti

        bvc     L56B1
        eor     L0054,x
        eor     L0056,x
        eor     L0005,x
        ora     L0000
        beq     L5677
L5677:  bmi     L5679
L5679:  bmi     L567B
L567B:  .byte   $30
L567C:  .byte   $FF
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0006
        .byte   $02
L56A5:  .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        asl     L0008
        php
        php
        .byte   $02
L56B1:  php
        php
        php
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        .byte   $02
        .byte   $02
        .byte   $02
        php
        php
        .byte   $02
        .byte   $02
        php
        rti

        .byte   $02
        .byte   $02
        php
        rts

        eor     L00AA,x
        eor     L000A,x
        eor     L0000,x
        bpl     L56D8
L56D8:  tax
        rti

        .byte   $5A
        .byte   $44
        eor     L0000,x
        ora     L0000
        brk
        bmi     L56E3
L56E3:  beq     L56A5
        .byte   $FF
        cpy     #$FF
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $FC
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
        .byte   $02
        cpy     L0006
        asl     L0002
        rol     a:L0006
        .byte   $02
        lsr     a:L0006
        ldy     L06AC
        brk
        ldy     L06AC
        brk
        ldy     L06AC
        brk
        ldy     L06AC
        brk
        ldy     L06AC
        brk
        ldy     L06AC
        asl     L0002
        .byte   $02
        inc     L0200
        .byte   $02
        inc     L0200
        .byte   $02
        inc     L0800
        php
        php
        php
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        rol     L0040
        .byte   $52
        .byte   $44
        eor     L0044,x
        eor     L0044,x
        eor     L0050,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        .byte   $80
        tax
        .byte   $80
        tax
        .byte   $FF
        .byte   $FF
        .byte   $03
        brk
        asl     a
        .byte   $FC
        asl     a
        .byte   $FC
        .byte   $0F
        .byte   $FC
        .byte   $0C
        .byte   $FC
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
        asl     L0006
        asl     L0006
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
        asl     L0006
        asl     L0006
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
        php
        php
        php
        php
        .byte   $44
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        bvc     L57FA
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        bvc     L5802
        eor     L0055,x
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $0C
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $0C
        .byte   $FC
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
        asl     L0006
        asl     L0006
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
        asl     L0006
L57FA:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L5802:  brk
        brk
        brk
        brk
        brk
        brk
        php
        php
        php
        php
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        bvc     L5866
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        bvc     L5873
        eor     L0055,x
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $0C
        .byte   $FC
        .byte   $0C
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        asl     L0006
        asl     L0006
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
        asl     L0006
        asl     L0000
        brk
        brk
        brk
        brk
        brk
L5866:  brk
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
L5873:  brk
        php
        php
        php
        php
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        bvc     L58D2
        eor     L0055,x
        eor     L0055,x
        eor     (L0050),y
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        bmi     L5898
        bmi     L589A
        .byte   $30
L5898:  brk
        .byte   $FC
L589A:  brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        asl     L0006
        ora     (L0001,x)
        brk
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0006,x)
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0000,x)
        .byte   $06
L58D2:  ora     (L0001,x)
        brk
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0000,x)
        asl     L0001
        ora     (L0008,x)
        php
        ora     (L0001,x)
        .byte   $42
        .byte   $44
        ora     (L0001,x)
        .byte   $62
        .byte   $64
        ora     (L0001,x)
        .byte   $10
L58ED:  .byte   $FF
        ora     (L00FF),y
        ora     (L00FF),y
        .byte   $10
L58F3:  .byte   $FF
        ora     (L00FF),y
        ora     (L00FF),y
        brk
        .byte   $FF
        brk
        .byte   $0F
        .byte   $03
        .byte   $30
L58FE:  .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        .byte   $FF
        .byte   $FF
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
L5932:  brk
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
L5955:  brk
        brk
        brk
        brk
        brk
L595A:  brk
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
L596E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L5978:  brk
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
        .byte   $FF
        .byte   $02
L598A:  asl     L8FFF
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
L5994:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L8F0F
        brk
        .byte   $9F
        bmi     L5932
        brk
        cmp     #$30
        asl     L8F0F
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
        asl     L8F0F
        brk
        ora     L8F31
        brk
        cmp     L0030,x
        .byte   $0E
        .byte   $0F
L59BC:  .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
        .byte   $0E
        .byte   $0F
L59C6:  .byte   $8F
        brk
        .byte   $9F
        bmi     L595A
        brk
        cmp     #$30
        .byte   $0E
        .byte   $0F
L59D0:  .byte   $8F
        brk
        stx     L0030,y
        .byte   $8F
        brk
        .byte   $EF
        bmi     L59E7
        .byte   $0F
        .byte   $8F
        brk
        .byte   $9F
        bmi     L596E
        brk
        cmp     L0030,x
        asl     L8FFF
        brk
        .byte   $B3
L59E7:  bmi     L5978
        brk
        stx     L0030
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0E
        .byte   $0F
L59F6:  .byte   $8F
        brk
        .byte   $9F
        bmi     L598A
        brk
        cmp     #$30
        asl     L8F0F
        brk
        .byte   $B3
        bmi     L5994
        brk
        stx     L0030
        asl     L8F0F
        brk
        cmp     L0030,x
        .byte   $8F
        brk
        stx     L0030,y
        asl     L8F0F
        brk
        cmp     #$30
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5A2B
        .byte   $0F
        .byte   $8F
        brk
        .byte   $0D
        .byte   $31
L5A22:  .byte   $8F
        brk
        cmp     #$30
        asl     L8F0F
        brk
        .byte   $C9
L5A2B:  bmi     L59BC
        brk
        stx     L0030
        asl     L8F0F
        brk
        .byte   $9F
        bmi     L59C6
        brk
        cmp     #$30
        asl     L8FFF
        brk
        .byte   $B3
        bmi     L59D0
        brk
        cmp     L0030,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L8F0F
        brk
        stx     L0030,y
        .byte   $8F
        brk
        .byte   $EF
        bmi     L5A65
        .byte   $0F
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $8F
        brk
L5A5E:  cmp     L0030,x
        asl     L8F0F
        brk
        .byte   $B3
L5A65:  bmi     L59F6
        brk
        stx     L0030
        ora     L8F0F,x
        brk
        cmp     #$30
        .byte   $8F
L5A71:  brk
        cmp     #$30
        ora     L8F03,x
        brk
        .byte   $0D
        .byte   $31
L5A7A:  asl     L8FFF
        brk
        cmp     #$30
        .byte   $8F
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $93
        .byte   $31
L5A88:  brk
        brk
        brk
        brk
        asl     L8FCF
        brk
        .byte   $9F
        bmi     L5A22
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $2F
        .byte   $30
L5A9A:  asl     L8FCF
        brk
        cmp     #$30
        .byte   $8F
        brk
        cmp     #$30
        brk
        brk
        brk
        brk
L5AA8:  .byte   $0E
L5AA9:  .byte   $CF
        .byte   $8F
        brk
        ora     L8F31
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $2F
        bmi     L5AC5
        .byte   $FF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $93
        and     (L0000),y
L5AC5:  brk
        brk
        brk
        asl     L8FCF
        brk
        .byte   $9F
L5ACD:  bmi     L5A5E
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $2F
        bmi     L5AE5
        .byte   $CF
        .byte   $8F
        brk
        stx     L0030,y
        .byte   $8F
        brk
        cmp     #$30
        brk
        brk
        brk
        brk
        .byte   $0E
L5AE5:  .byte   $CF
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5A7A
        brk
        .byte   $EF
        bmi     L5A71
        brk
        .byte   $2F
        .byte   $30
L5AF2:  asl     L8FFF
        brk
        .byte   $B3
        bmi     L5A88
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $0D
        .byte   $31
L5B00:  brk
L5B01:  brk
        brk
        brk
        asl     L8FCF
        brk
        .byte   $9F
        bmi     L5A9A
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $34
        bmi     L5B21
        .byte   $CF
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5AA8
        brk
        cmp     #$30
        brk
        brk
        brk
        brk
        .byte   $0E
L5B21:  .byte   $CF
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $8F
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $34
        bmi     L5B3D
        .byte   $FF
        .byte   $8F
        brk
        cmp     #$30
L5B34:  .byte   $8F
        brk
        stx     L0030,y
        .byte   $82
        brk
        .byte   $93
        and     (L0000),y
L5B3D:  brk
        brk
        brk
        asl     L8FCF
        brk
        ora     L8F31
        brk
        .byte   $9F
        bmi     L5ACD
        brk
        .byte   $2F
        bmi     L5B5D
        .byte   $CF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        cmp     #$30
        brk
        brk
        brk
        brk
        .byte   $0E
L5B5D:  .byte   $CF
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5AF2
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $2F
        bmi     L5B79
        .byte   $FF
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5B00
        brk
        cmp     #$30
        .byte   $82
        brk
        ora     L0032,y
L5B79:  brk
        brk
        brk
        .byte   $07
        .byte   $CF
        .byte   $8F
        brk
        stx     L0030,y
L5B82:  .byte   $8F
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $34
        bmi     L5B91
        cpy     #$82
        brk
        .byte   $34
        bmi     L5B9F
L5B91:  .byte   $CF
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $8F
        brk
        .byte   $EF
        bmi     L5B9B
L5B9B:  brk
        brk
        brk
        .byte   $07
L5B9F:  .byte   $CF
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5B34
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $34
        bmi     L5BB3
        cpy     #$82
        brk
        .byte   $34
        bmi     L5BC1
L5BB3:  .byte   $FF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
        .byte   $82
        brk
L5BBE:  .byte   $93
        and     (L0000),y
L5BC1:  brk
        brk
        brk
        asl     L8FCC
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $2F
        bmi     L5BDD
        .byte   $C3
        .byte   $8F
        brk
        ora     a:L0031
        brk
        brk
        brk
        asl     L82C0
        brk
        .byte   $2F
L5BDD:  bmi     L5BED
        .byte   $F3
L5BE0:  .byte   $8F
        brk
        cmp     #$30
        .byte   $82
L5BE5:  brk
        .byte   $93
        and     (L0000),y
        brk
        brk
        brk
        .byte   $0E
L5BED:  .byte   $CF
L5BEE:  .byte   $8F
        brk
        .byte   $9F
        bmi     L5B82
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $34
        bmi     L5C09
        .byte   $CF
        .byte   $8F
        brk
        cmp     #$30
L5C00:  .byte   $8F
        brk
        stx     L0030
        brk
        brk
        brk
        brk
        .byte   $0E
L5C09:  .byte   $CF
        .byte   $8F
        brk
        .byte   $0D
        .byte   $31
L5C0E:  .byte   $8F
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $34
        bmi     L5C25
        .byte   $FF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $93
        and     (L0000),y
L5C25:  brk
        brk
        brk
        .byte   $07
        .byte   $CF
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5BBE
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $34
        bmi     L5C3D
        cpy     #$82
        brk
        .byte   $34
        bmi     L5C4B
L5C3D:  .byte   $CF
        .byte   $8F
        brk
        stx     L0030,y
        .byte   $8F
        brk
        stx     L0030
        brk
        brk
        brk
        brk
        .byte   $0E
L5C4B:  .byte   $CF
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5BE0
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $34
        .byte   $30
L5C58:  asl     L8FFF
        brk
        .byte   $B3
        bmi     L5BEE
        brk
        .byte   $EF
        bmi     L5BE5
        brk
        .byte   $0D
        .byte   $31
L5C66:  brk
L5C67:  brk
        brk
        brk
        asl     L8FCF
        brk
        .byte   $9F
        bmi     L5C00
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $3F
        bmi     L5C87
        .byte   $CF
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5C0E
        brk
        stx     L0030
        brk
        brk
        brk
        brk
        .byte   $0E
L5C87:  .byte   $CF
        .byte   $8F
        brk
        .byte   $D5
L5C8B:  bmi     $5C1C
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $3F
        .byte   $30
L5C94:  asl     L8FFF
        brk
        cmp     #$30
        .byte   $8F
        brk
        stx     L0030
        .byte   $82
        brk
        .byte   $93
        and     (L0000),y
L5CA3:  brk
        brk
        brk
        asl     L8FCF
        brk
        ora     L8F31
        brk
        stx     L0030,y
        .byte   $82
        brk
        .byte   $34
        bmi     L5CC3
        .byte   $CF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5CBF
L5CBF:  brk
        brk
        brk
        .byte   $0E
L5CC3:  .byte   $CF
        .byte   $8F
        brk
        .byte   $9F
        bmi     L5C58
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $34
        bmi     L5CDF
        .byte   $FF
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5C66
        brk
        stx     L0030
        .byte   $82
        brk
        ora     L0032,y
L5CDF:  brk
        brk
        brk
        .byte   $0E
L5CE3:  .byte   $CF
        .byte   $8F
        brk
        stx     L0030,y
        .byte   $8F
        brk
        cmp     #$30
        .byte   $82
        brk
        .byte   $2F
        bmi     L5CFF
        .byte   $CF
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $8F
        brk
        cmp     L0030,x
        brk
        brk
        brk
        brk
        .byte   $0E
L5CFF:  .byte   $CF
        .byte   $8F
        brk
        .byte   $B3
L5D03:  bmi     L5C94
        brk
        .byte   $EF
        bmi     L5C8B
        brk
        .byte   $2F
        bmi     L5D1B
        .byte   $FF
        .byte   $8F
        brk
        cmp     #$30
        .byte   $8F
        brk
        cmp     L0030,x
        .byte   $82
        brk
        .byte   $93
        and     (L0000),y
L5D1B:  brk
        brk
        brk
        .byte   $0E
L5D1F:  cpy     a:$8F
        stx     L0030
        .byte   $82
        brk
        .byte   $34
        bmi     L5D46
        .byte   $CF
        .byte   $8F
        brk
        ora     L8F31
L5D2F:  brk
        cmp     #$30
        brk
        brk
        brk
        brk
        inc     L02FF,x
        .byte   $07
        .byte   $FF
        brk
        brk
        brk
        brk
L5D3F:  brk
        brk
        brk
        brk
        .byte   $8F
        brk
        .byte   $93
L5D46:  and     (L0082),y
        brk
        .byte   $4F
        bmi     L5D52
        cpy     #$82
        brk
        ror     a
        bmi     L5D59
L5D52:  beq     L5CE3
        brk
        .byte   $93
        and     (L0082),y
        brk
L5D59:  ror     a
        bmi     L5D62
        cpy     #$82
        brk
        ror     a
        bmi     L5D69
L5D62:  beq     L5D64
L5D64:  brk
        brk
        brk
L5D67:  .byte   $82
        brk
L5D69:  .byte   $4F
        bmi     L5D72
        cpy     #$82
        brk
        ror     a
        bmi     L5D79
L5D72:  beq     L5D03
        brk
        .byte   $53
        and     (L0082),y
        brk
L5D79:  ror     a
        bmi     L5D82
        cpy     #$82
        brk
        ror     a
        bmi     L5D89
L5D82:  cpy     #$82
        brk
        .byte   $4F
        .byte   $30
L5D87:  asl     L00C0
L5D89:  .byte   $82
        brk
        ror     a
        bmi     L5D95
L5D8E:  beq     L5D1F
        brk
        .byte   $93
        and     (L0082),y
        brk
L5D95:  ror     a
        bmi     L5D9E
        cpy     #$82
        brk
        ror     a
        bmi     L5DA5
L5D9E:  beq     L5D2F
        brk
        .byte   $93
        and     (L0082),y
        brk
L5DA5:  .byte   $4F
        bmi     L5DAE
        cpy     #$82
        brk
        ror     a
        bmi     L5DB5
L5DAE:  beq     L5D3F
        brk
        ora     L8232,y
        brk
L5DB5:  ror     a
        bmi     L5DBE
        cpy     #$82
        brk
        ror     a
        bmi     L5DC5
L5DBE:  .byte   $FF
        brk
        brk
        brk
        brk
L5DC3:  brk
        brk
L5DC5:  brk
        brk
        .byte   $8F
        brk
        .byte   $93
        and     (L0082),y
        brk
        .byte   $4F
        bmi     L5DD6
        cpy     #$82
        brk
        .byte   $54
        bmi     L5DDD
L5DD6:  beq     L5D67
        brk
        .byte   $93
        and     (L0082),y
        brk
L5DDD:  .byte   $54
        bmi     L5DE6
        cpy     #$82
        brk
        .byte   $54
        bmi     L5DED
L5DE6:  beq     L5DE8
L5DE8:  brk
        brk
        brk
        .byte   $82
        brk
L5DED:  .byte   $4F
        bmi     L5DF6
        cpy     #$82
        brk
        .byte   $54
        bmi     L5DFD
L5DF6:  beq     L5D87
        brk
        .byte   $53
        and     (L0082),y
        brk
L5DFD:  .byte   $54
        bmi     L5E06
        cpy     #$82
        brk
L5E03:  .byte   $54
        bmi     L5E0D
L5E06:  .byte   $CF
        brk
        brk
        brk
        brk
        brk
        brk
L5E0D:  brk
        brk
        .byte   $82
        brk
        .byte   $4F
        bmi     L5E1A
        cpy     #$82
        brk
        .byte   $54
        bmi     L5E21
L5E1A:  .byte   $FF
        .byte   $8F
        brk
        stx     L0030
        .byte   $8F
        brk
L5E21:  stx     L0030,y
L5E23:  .byte   $8F
        brk
        .byte   $93
        and     (L0082),y
        brk
        .byte   $54
        bmi     L5E32
        cpy     #$82
        brk
        .byte   $54
        bmi     L5E39
L5E32:  beq     L5DC3
        brk
        .byte   $93
        and     (L0082),y
        brk
L5E39:  .byte   $4F
        bmi     L5E42
        cpy     #$82
        brk
L5E3F:  .byte   $54
        bmi     L5E49
L5E42:  .byte   $FF
        .byte   $8F
        brk
        stx     L0030
        .byte   $8F
        brk
L5E49:  stx     L0030,y
        .byte   $8F
        brk
        .byte   $19
        .byte   $32
L5E4F:  .byte   $82
        brk
        .byte   $54
        bmi     L5E5A
        cpy     #$82
        brk
        .byte   $54
        bmi     L5E61
L5E5A:  .byte   $FF
        brk
        brk
        brk
        brk
L5E5F:  brk
        brk
L5E61:  brk
        brk
        .byte   $8F
        brk
        .byte   $93
        and     (L0082),y
        brk
        .byte   $4F
        bmi     L5E72
        cpy     #$82
        brk
        ror     a
        bmi     L5E79
L5E72:  beq     L5E03
        brk
        .byte   $93
        and     (L0082),y
        brk
L5E79:  ror     a
        bmi     L5E82
        cpy     #$82
        brk
        ror     a
        bmi     L5E89
L5E82:  beq     L5E84
L5E84:  brk
        brk
        brk
L5E87:  .byte   $82
        brk
L5E89:  .byte   $4F
        bmi     L5E92
        cpy     #$82
        brk
        ror     a
        bmi     L5E99
L5E92:  beq     L5E23
        brk
        .byte   $53
        and     (L0082),y
        brk
L5E99:  ror     a
        bmi     L5EA2
        cpy     #$82
        brk
        ror     a
        bmi     L5EA9
L5EA2:  cpy     #$82
        brk
        .byte   $4F
        .byte   $30
L5EA7:  asl     L00C0
L5EA9:  .byte   $82
        brk
        ror     a
        bmi     L5EB5
L5EAE:  beq     L5E3F
        brk
        .byte   $93
        and     (L0082),y
        brk
L5EB5:  ror     a
        bmi     L5EBE
        cpy     #$82
        brk
        ror     a
        bmi     L5EC5
L5EBE:  beq     L5E4F
        brk
        .byte   $93
        and     (L0082),y
        brk
L5EC5:  .byte   $4F
        bmi     L5ECE
        cpy     #$82
        brk
        ror     a
        bmi     L5ED5
L5ECE:  beq     L5E5F
        brk
        ora     L8232,y
        brk
L5ED5:  ror     a
        bmi     L5EDE
        cpy     #$82
        brk
        ror     a
        bmi     L5EE5
L5EDE:  .byte   $FF
        brk
        brk
        brk
        brk
L5EE3:  brk
        brk
L5EE5:  brk
        brk
        .byte   $8F
        brk
        .byte   $93
        and     (L0082),y
        brk
        .byte   $4F
        bmi     L5EF6
        cpy     #$82
        brk
        .byte   $54
        bmi     L5EFD
L5EF6:  beq     L5E87
        brk
        .byte   $93
        and     (L0082),y
        brk
L5EFD:  .byte   $54
        bmi     L5F06
        cpy     #$82
        brk
        .byte   $54
        bmi     L5F0D
L5F06:  beq     L5F08
L5F08:  brk
        brk
        brk
        .byte   $82
        brk
L5F0D:  .byte   $4F
        bmi     L5F16
        cpy     #$82
        brk
        .byte   $54
L5F14:  bmi     L5F1D
L5F16:  beq     L5EA7
        brk
        .byte   $53
        and     (L0082),y
        brk
L5F1D:  .byte   $54
        bmi     L5F26
        cpy     #$82
        brk
        .byte   $54
        bmi     L5F2D
L5F26:  .byte   $CF
        brk
        brk
        brk
        brk
        brk
        brk
L5F2D:  brk
        brk
        .byte   $82
        brk
        .byte   $4F
        bmi     L5F3A
        cpy     #$82
        brk
        .byte   $54
        bmi     L5F41
L5F3A:  .byte   $FF
        .byte   $8F
        brk
        .byte   $86
L5F3E:  bmi     $5ECF
        brk
L5F41:  lda     #$30
        .byte   $8F
        brk
        .byte   $93
        and     (L0082),y
        brk
        .byte   $54
        bmi     L5F52
        cpy     #$82
        brk
        .byte   $54
        bmi     L5F59
L5F52:  beq     L5EE3
        brk
        .byte   $93
        and     (L0082),y
        brk
L5F59:  .byte   $4F
        bmi     L5F62
        cpy     #$82
L5F5E:  brk
        .byte   $54
        bmi     L5F69
L5F62:  .byte   $FF
        .byte   $8F
        brk
        stx     L0030
        .byte   $8F
        brk
L5F69:  lda     #$30
        .byte   $8F
        brk
        ora     L8232,y
        brk
        .byte   $54
        bmi     L5F7A
        cpy     #$82
        brk
        .byte   $54
L5F78:  bmi     L5F78
L5F7A:  ora     L8FFF,x
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5F14
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
        ora     L82C0,x
        brk
        sbc     (L0030,x)
        asl     a:L00FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
L5FA4:  asl     L8F3F
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5F3E
        brk
        cpy     L0031
        .byte   $07
        .byte   $FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
        asl     L003F
        .byte   $8F
        brk
L5FC8:  stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5F5E
        brk
        cpy     L0031
        asl     a:L003F
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
        ora     L8FFF,x
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5F7A
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
L5FF2:  ora     L82C0,x
        brk
        sbc     (L0030,x)
        asl     a:L00FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
        asl     L8FFF
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5FA4
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
L601C:  .byte   $07
        .byte   $FF
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
        asl     L00FF
        .byte   $8F
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5FC8
        brk
        cpy     L0031
L603C:  .byte   $82
        brk
        sbc     (L0030,x)
        .byte   $07
        .byte   $FF
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
        asl     L00C0
        .byte   $82
        brk
        sbc     (L0030,x)
L6058:  ora     L8FFF,x
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L5FF2
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
        ora     L82C0,x
        brk
        sbc     (L0030,x)
        asl     a:L00FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
L6082:  asl     L8F3F
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L601C
        brk
        cpy     L0031
        .byte   $07
        .byte   $FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
        asl     L003F
        .byte   $8F
        brk
L60A6:  stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L603C
        brk
        cpy     L0031
        asl     a:L003F
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
        ora     L8FFF,x
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L6058
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
        ora     L82C0,x
        brk
        sbc     (L0030,x)
        asl     a:L00FF
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
        .byte   $82
        brk
        sbc     (L0030,x)
        asl     L8FFF
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L6082
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
        .byte   $07
        .byte   $FF
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
        asl     L00FF
        .byte   $8F
        brk
        stx     L0030
        .byte   $8F
        brk
        .byte   $B3
        bmi     L60A6
        brk
        cpy     L0031
        .byte   $82
        brk
        sbc     (L0030,x)
        .byte   $07
        .byte   $FF
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
        asl     L00C0
        .byte   $82
        brk
        sbc     (L0030,x)
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
L6608:  brk
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
L66AE:  brk
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
L66E6:  brk
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
L6846:  brk
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
L6856:  brk
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
L6866:  brk
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
L6886:  brk
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
L6C68:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
L6E6E:  brk
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
L6E86:  brk
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
L6EE6:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L7659:  brk
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
L7731:  brk
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
        brk
        brk
        brk
        brk
        brk
L7F33:  brk
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
        brk
        brk
        jmp     L5645

        eor     L004C
        jsr     L0032
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
        .byte   $54
        pha
        eor     L0020
        pha
        eor     L0049
        lsr     L554F
        .byte   $53
        jsr     L4948
        jmp     L534C

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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        plp
        .byte   $9B
        dec     L09A8,x
        .byte   $1B
        rol     a
        ora     L2109,y
        .byte   $1B
        .byte   $0C
        ora     #$1C
        .byte   $0C
        rol     a
        ora     #$21
        rol     a
        .byte   $0F
        ora     #$0E
        .byte   $1A
        jsr     L0E00
        jsr     L0010
        asl     L1839
        brk
        .byte   $37
        .byte   $27
        asl     L000F,x
        .byte   $13
        .byte   $12
        asl     a
        .byte   $0F
        plp
        .byte   $17
        .byte   $13
        .byte   $0F
        .byte   $03
        .byte   $13
        .byte   $17
        .byte   $0F
        plp
        asl     L0028,x
        .byte   $0F
        asl     L201A
        brk
        asl     L1020
        brk
        asl     L1839
        brk
        .byte   $37
        .byte   $27
        asl     L0014,x
        and     (L0032,x)
        .byte   $47
        .byte   $57
        asl     L000B
        ora     L000B
        asl     a
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
        .byte   $F3
        .byte   $83
        sbc     (L00E0,x)
        .byte   $73
        .byte   $74
        adc     L0094,x
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L0006
        asl     L0006
        asl     L0027
        and     L0041,x
        .byte   $4F
        lsr     L006C,x
        adc     LB793,y
        cpy     a:L0000
        php
        ora     #$01
        ora     #$04
        ora     #$08
        .byte   $03
        ora     #$07
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
L80CA:  brk
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $80
        .byte   $82
        sty     L00A0
        ldx     #$A4
        ldy     #$E4
        cpx     L00E0
        cpx     L002A
        iny
        stx     L00C6
        rol     a
        jmp     LE686

        lsr     a
        bit     LE686
        rol     a
        jmp     LE686

L8130:  lsr     a
        bit     L6E86
        rol     a
        jmp     L6E86

        lsr     a
        jmp     (L8E86)

        ror     a
        jmp     (LAE86)

        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        ldx     #$A4
        ldy     #$A2
        .byte   $E2
        cpx     L00E2
        cpx     L0028
        iny
        ror     L480A
        inx
        inc     L0026
        plp
        inx
        inc     L0026
        pla
        iny
        ror     L2856
        inx
        ror     L4826
        inx
        stx     L4856
        inx
        stx     L6856
        inx
        ldx     L2266
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0055
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        .byte   $82
        sty     L0080
        .byte   $82
        ldy     L00A0
        ldx     #$A4
        cpx     #$E0
        .byte   $E2
        cpx     #$0B
        .byte   $0C
        asl     L28C8
        rol     a
        .byte   $62
        inx
L8200:  pha
        lsr     a
        .byte   $62
        inx
        plp
        rol     a
        .byte   $62
        inx
        pha
        lsr     a
        .byte   $62
        iny
        plp
        rol     a
        .byte   $62
        inx
        pla
        lsr     a
        .byte   $62
        inx
        pla
        ror     a
        .byte   $62
        jmp     (L2024)

        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        ora     L0045
        adc     L0055
        ror     L0055
        ror     L0055
        ror     L0055
        brk
        brk
L8232:  brk
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        sty     L0080
        .byte   $82
        sty     L00A0
        ldx     #$A4
        ldy     #$E1
        .byte   $E3
        cpx     L00E0
        stx     L00C6
        plp
        iny
        stx     L00E6
        pha
        inx
        stx     L00E6
        pla
        inx
        stx     L006E
        plp
        bit     L8E86
        pha
        inx
        stx     L00E6
        plp
        jmp     L8E86

        pla
        jmp     LAE86

        pla
        jmp     (L2220)

        bit     L0008
        rti

        .byte   $42
        .byte   $44
        php
        rts

        .byte   $62
        .byte   $64
        php
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        dey
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $FC
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
L82C0:  stx     L0086
        stx     L0086
        .byte   $80
        .byte   $80
        sty     L0082
        ldy     #$A2
        ldy     #$A4
        cpx     #$E2
        cpx     L00E4
        stx     L0086
        dec     L0026
        stx     L0086
        dec     L0046
        stx     L0086
        inc     L0066
        stx     L0086
        ror     L8606
        stx     L008E
        ror     L0086
        asl     L0006
        asl     L0006
        stx     L008E
        lsr     L0086
        stx     L00AE
        ror     L00AA
        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $5F
        .byte   $5F
        eor     L0055,x
        .byte   $FF
        eor     L00FF,x
        eor     L00BF,x
        sta     L00FD,x
        eor     L00F0,x
        beq     L831A
        .byte   $0F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        .byte   $04
        bmi     L831C
        bmi     L831E
L831A:  .byte   $33
        .byte   $04
L831C:  brk
        brk
L831E:  brk
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
        stx     L0086
        stx     L0086
L8330:  .byte   $80
L8331:  .byte   $80
        .byte   $82
        sty     L00A4
        ldy     #$A2
        ldy     L00E4
        cpx     L00E2
        cpx     L00A6
        rol     a
        bit     L2E86
        rol     a
        jmp     L4E86

        lsr     a
        stx     L0086
        asl     L004A
        jmp     L2886

        lsr     a
        stx     L0086
        asl     L002A
        jmp     L4886

        lsr     a
        jmp     L6886

        ror     a
        jmp     (LAA86)

        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
L8366:  stx     L0086
        .byte   $5F
        .byte   $5F
        eor     L0055,x
        adc     L00D5
        ror     L00DF
        lsr     L00DF,x
        ror     L00DD
        beq     L8366
        .byte   $0F
        .byte   $0F
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        .byte   $82
        .byte   $80
        ldy     #$A2
        ldy     L00A0
        .byte   $E2
        cpx     #$E2
        cpx     #$86
        dec     L0048
        iny
        stx     L00E6
        plp
        inx
        stx     L006E
        pla
        bit     L8E86
        pha
        inx
        stx     L00E6
        plp
        bit     LE686
        pha
        .byte   $4C
L83C0:  stx     L008E
        plp
        bit     LAE86
        pla
        jmp     (LAAAA)

        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $5F
        .byte   $5F
        ora     L0045,x
        adc     L0055,x
        .byte   $77
        eor     L0077,x
        eor     L0077,x
        eor     L00F0,x
        beq     L83F2
        .byte   $0F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
L83F2:  brk
        .byte   $04
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        lda     (L00A3,x)
        ldy     L00A1
        cpx     #$E2
        cpx     #$E2
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        tax
        php
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        cli
        eor     L0005,x
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        .byte   $0C
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
        stx     L0086
        stx     L0086
        cpx     L80CA
        .byte   $82
        dec     LA1CC
        .byte   $A3
        inc     LE0EA
        .byte   $E2
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00A8
        stx     L0086
        stx     L002E
        stx     L0086
        stx     L004E
        stx     L0086
        ldy     L8608
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0055
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L00D5,x
        eor     L0099,x
        eor     L005B,x
        eor     L0005,x
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        brk
        .byte   $0C
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
        stx     L0086
        stx     L0086
        sty     L0080
        .byte   $82
        sty     L00A4
        lda     (L00A3,x)
        ldy     L00E2
        cpx     L00E4
        .byte   $E2
        stx     L00C6
        rol     L0028
        stx     L00E6
        rol     L0028
        stx     L00E6
        lsr     L0048
        stx     L00E6
        ror     L0068
        stx     L006E
        lsr     L0004
        stx     L00E6
        ror     L00AA
        stx     L008E
        lsr     L0048
        stx     L00AE
        ror     L0048
        stx     L0008
        .byte   $20
L850F:  .byte   $22
        stx     L0008
        rti

        .byte   $42
        stx     L0008
        rts

        .byte   $62
        eor     L0055,x
        eor     L00A5,x
        eor     L0099,x
        eor     L0099,x
        eor     L0011,x
        eor     L0099,x
        sta     L0900,y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L8530:  brk
L8531:  brk
        brk
L8533:  .byte   $FC
        brk
        .byte   $3C
        .byte   $1C
        .byte   $3C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L853F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        .byte   $80
        .byte   $82
        ldy     L00A3
        ldy     #$A2
        cpx     #$E2
        cpx     L00E2
        rol     a
        iny
        ldy     L2A86
        inx
        ldy     L4A86
        inx
        ldy     L4A86
        inx
        ldy     L4A86
        bit     L86AC
        rol     a
        inx
        ldy     L4AAC
        jmp     L8686

        ror     a
        inx
        stx     L0086
        bit     L0020
        jsr     L4408
        rti

        rti

        php
        .byte   $64
        rts

        rts

        php
        eor     L0055,x
        ora     L0055
        eor     L0077,x
        eor     L0077,x
        eor     L00F7,x
        eor     L0055,x
        brk
        dey
        brk
        php
        brk
        brk
        brk
        brk
        brk
        tax
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        rol     a
        .byte   $3C
        jsr     L00FC
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
        stx     L0086
        stx     L0086
        sty     L0080
        .byte   $82
        sty     L00A4
        ldy     #$A2
        ldy     L00E0
        .byte   $E2
        .byte   $E2
        cpx     #$86
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     LACAC
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     LACAC
        ldy     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     LACAC
        ldy     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     LF55F,x
        sbc     L0055,x
        eor     L005F,x
        .byte   $5F
        ora     L0005
        brk
        brk
        brk
        jsr     L2000
L8606:  brk
        .byte   $20
L8608:  jsr     L2008
        php
        jsr     L2008
        php
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$A2
        ldy     L00A0
        .byte   $E2
        .byte   $E0
L862E:  cpy     #$E2
        stx     L0086
        rol     L8686
        stx     L004E
        dex
        ldy     L06AC
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00AC
        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     LACAC
        ldy     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L0066,x
        .byte   $5F
        .byte   $56
L8664:  and     L0005,x
L8666:  eor     L0055,x
        .byte   $5F
        .byte   $5F
        ora     L0005
        brk
        jsr     L2000
        brk
        bmi     L8673
L8673:  bmi     L8695
        php
        bpl     L8680
        bpl     L8682
        bpl     L8684
        brk
        brk
        brk
        brk
L8680:  brk
        brk
L8682:  brk
        brk
L8684:  brk
        brk
L8686:  brk
        brk
        brk
        brk
        brk
        brk
        stx     L0086
        stx     L0086
        asl     L00EC
        stx     L0086
        .byte   $06
L8695:  dec     L8686
        asl     L00EE
        stx     L0086
        asl     L0086
        stx     L0086
L86A0:  asl     L0086
        stx     L0086
        asl     L0086
        stx     L0086
        ldy     LACAC
        .byte   $AC
L86AC:  ldy     L8686
        tax
        asl     L0004
        tax
        tax
        ldy     L8686
        stx     L00AC
        stx     L0086
        stx     L00AC
        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        lsr     L0055,x
        lsr     L0055,x
        inc     L00F5,x
        .byte   $17
        ora     (L0077,x)
        eor     L0053,x
        bvc     L86DC
        ora     L00FC
        .byte   $BF
        brk
        .byte   $80
L86DC:  brk
        .byte   $80
        brk
        .byte   $80
        tsx
        asl     a
        .byte   $32
        .byte   $04
        .byte   $12
        .byte   $04
        asl     L0004,x
        brk
        brk
L86EA:  brk
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        cpx     L8686
        asl     L0006
        asl     L0006
        stx     L0086
        stx     L0006
        stx     L0086
        stx     L00AC
        stx     L0086
        stx     L0086
        ldy     L8686
        stx     L0086
        ldy     L8686
        stx     L00AC
        stx     L0086
        stx     L00AC
        stx     L00AA
        tax
        tax
        tax
        stx     L0086
        stx     L0086
L8730:  stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L7659,y
        eor     L005D,x
        adc     L0055,x
        .byte   $77
        bvc     L8792
        ora     L0005
        brk
        ldy     L0300,x
        brk
        .byte   $03
        brk
        .byte   $03
        .byte   $02
        .byte   $04
        php
        .byte   $04
        ldy     #$06
        brk
        .byte   $04
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        cpx     L0686
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     L8686
        stx     L00AC
        stx     L0086
        .byte   $86
L8792:  ldy     LAA86
        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L5559,y
        eor     L0055,x
        adc     L0055,x
        .byte   $77
        bvc     L87FE
        ora     L0005
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        .byte   $04
        ldy     #$06
        brk
        .byte   $04
L87C0:  brk
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
        stx     L0086
        stx     L0086
        stx     L0004
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        sty     L00EC
        stx     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ldy     L8686
        stx     L00AC
        stx     L0086
        .byte   $86
L87FE:  ldy     LAA86
        tax
        tax
        tax
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        ora     L0055,x
L880E:  eor     L0055,x
        eor     L5559,y
        eor     L0055,x
        adc     L0055,x
        .byte   $77
        bvc     L886A
        ora     L0005
        brk
        brk
L881E:  .byte   $0C
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        .byte   $04
        ldy     #$06
        brk
        .byte   $04
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0086
        stx     L00CC
        stx     L00CA
        cpx     L86EA
        asl     L0006
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        tax
        stx     L0086
        stx     L0008
        stx     L0086
        asl     L00C2
        stx     L0086
        ldy     L862E
        .byte   $86
L886A:  ldy     LAA4E
        tax
        tax
        php
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        eor     L0055,x
        eor     L0055,x
        eor     L0056,x
        eor     L0015,x
        eor     L0069,x
        eor     L00BB,x
        bvc     L881E
        ora     L0009
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $43
        brk
        .byte   $04
        brk
        .byte   $04
        bcs     L889C
        ora     a:L00FC
        brk
        brk
        brk
L889C:  brk
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$A2
        ldy     L00A0
        cpx     #$E4
        cpx     L00E4
        dec     L000A
        .byte   $0C
        asl     L46E6
        plp
        lsr     a
        inc     L0046
        plp
        rol     a
        php
        php
        php
        lsr     a
        php
        php
        php
        rol     a
        inc     L0046
        php
        lsr     a
        stx     L0866
        lsr     a
        ldx     L0846
        ror     a
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055
        eor     L0065,x
        lda     L0066
        .byte   $5A
        ror     L0055
        ror     L0000
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        cpy     #$00
        brk
        .byte   $0F
        .byte   $3C
        .byte   $0F
        .byte   $3C
        .byte   $FF
        .byte   $3F
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        sty     L00EC
        dex
        .byte   $82
        ldx     #$CE
        cpy     LE4A2
        inc     LE206
        iny
        stx     L0006
        plp
        inx
        stx     L00E6
        plp
        jmp     LE686

        pla
        inx
        stx     L006E
        plp
        jmp     (L8E86)

        pha
        iny
        php
        php
        .byte   $04
        inx
        stx     L008E
        pla
        jmp     (LAE86)

        pla
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0056,x
        eor     L0055,x
        sta     L0025,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$03
        brk
        brk
        brk
        .byte   $3C
        bmi     L89A8
        bmi     L89AA
        bmi     L89AC
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
        stx     L0086
        stx     L0086
        sty     L0080
        .byte   $80
        .byte   $82
        ldy     L00A0
        ldy     #$A2
        cpx     #$E2
        .byte   $E2
        cpx     L00C8
        dec     L0028
        iny
        inx
        inc     L0028
        inx
        bit     L48E6
        inx
        jmp     L288E

        tax
        jmp     L088E

        jmp     LE66C

        plp
        php
L89A8:  iny
        .byte   $8E
L89AA:  pha
        .byte   $4C
L89AC:  inx
        ldx     L6C68
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        ora     L0015,x
        eor     L0055,x
        eor     L0015,x
        eor     L0096,x
        eor     L0055,x
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
        rti

        brk
        .byte   $3C
        brk
        .byte   $3C
        .byte   $0C
        .byte   $3C
        and     (L003C),y
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
        stx     L0086
        stx     L0086
        sty     L0080
        .byte   $82
        sty     L00A4
        ldy     #$A2
        ldy     L00E0
        .byte   $E2
        cpx     L00E2
        dec     L0028
        .byte   $04
        cpx     LAAC6
        bit     LAAAA
        pla
        jmp     LC686

        php
        php
        stx     L00E6
        plp
        jmp     (LECC4)

        pla
        jmp     (L082E)

        plp
        bit     L8E4E
        php
        jmp     (L2408)

        jsr     L2422
        .byte   $44
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        eor     L0055
        ora     L0014,x
        sty     L0065,x
        eor     L0095,x
        stx     L0099,y
        brk
        brk
        brk
        brk
        brk
        bpl     L8A3B
L8A3B:  cpy     L0000
        .byte   $C3
        brk
        .byte   $04
        cpy     #$3C
        .byte   $03
        .byte   $3F
        .byte   $03
        .byte   $3C
        brk
        .byte   $3F
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$A2
        ldy     L00A0
        cpx     #$E2
        cpx     #$E2
        dec     L0028
        iny
        dec     L00E6
        pha
        inx
        inc     L0008
        pla
        jmp     (L6EE6)

        php
        jmp     L6E6E

        plp
        ldy     L8E6E
        ldy     L8E2C
        ldy     L2C68
        stx     L48AE
        jmp     (L20AE)

        .byte   $22
        bit     L0020
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        eor     L0015
        eor     L0055,x
        stx     L0055,y
        cmp     L0057,x
        .byte   $57
        eor     L0000,x
        brk
        brk
        brk
        brk
        bmi     L8AA7
L8AA7:  cpy     #$00
        brk
        brk
        brk
        .byte   $80
        .byte   $3C
        .byte   $23
        .byte   $3C
        php
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        .byte   $82
        sty     L00EC
        stx     L00A2
        ldy     L00CE
        stx     L00E4
        cpx     #$06
        asl     L0026
        rol     a
        iny
        stx     L0046
        lsr     a
        inx
        stx     L0066
        lsr     a
        inx
        stx     L0066
        lsr     a
        jmp     (L4686)

        lsr     a
        iny
        stx     L0026
        lsr     a
        jmp     L4608

        lsr     a
        jmp     (L6608)

        ror     a
        jmp     (L2208)

        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        ora     L0095
        eor     L0055,x
        eor     L0055,x
        eor     L0095,x
        eor     L0099,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        beq     L8B5F
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        cpx     L8686
L8B5F:  dex
        bit     L0020
        .byte   $22
        php
        .byte   $44
        rti

        .byte   $42
        php
        .byte   $64
        rts

        .byte   $62
        php
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        dey
        brk
        php
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $FC
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        sty     L0008
        stx     L00CC
        php
        inc     L0886
        stx     L0086
        php
        inc     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0069,x
        adc     #$55
        eor     L0055,x
        ora     L0005
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        cpy     #$00
        bmi     L8BF6
L8BF6:  .byte   $0C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0086
        stx     L00CC
        stx     L0086
        stx     L00EA
        stx     L0086
        dex
        php
        stx     L0086
        php
        inc     L08CA
        inc     L0886
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0008
        jsr     L8686
        php
        rti

        stx     L0086
        php
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0069,x
        adc     #$55
        eor     L0055,x
        eor     L0055,x
        eor     L0022,x
        ora     L0002
        brk
        cpy     #$00
        bmi     L8C59
L8C59:  .byte   $0C
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $82
        sty     L0080
        ldy     #$08
        php
        php
        php
        cpx     L00E2
        cpx     #$C6
        rol     L0028
        rol     a
        inc     L0026
        pha
        .byte   $3A
        ror     L4846
        rol     a
        ror     L4846
        .byte   $3A
        stx     L6846
        lsr     a
        .byte   $04
        ror     L0068
        lsr     a
        stx     L4846
        lsr     a
        ldx     L6866
        ror     a
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        eor     L0055,x
        adc     #$2A
        eor     L0066,x
        eor     L0066,x
        eor     L0066
        eor     L0066,x
        brk
        brk
        brk
        brk
        cpy     #$00
        bmi     L8CC4
L8CC4:  bmi     L8CC6
L8CC6:  bmi     L8CC8
L8CC8:  bmi     L8D06
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        .byte   $82
        sty     L00EC
        stx     L0008
        ldy     #$CE
        stx     L00E0
        .byte   $E2
        inc     LC886
        stx     L0086
        stx     L004C
        stx     L0086
        stx     L00E8
        stx     L0086
        stx     L002C
        stx     L0086
        stx     L002C
        stx     L0086
        stx     L004C
        .byte   $86
L8D06:  stx     L0086
        jmp     (L8686)

        dex
        jmp     (LCA86)

        php
        .byte   $22
        bit     L0008
        stx     L0042
        .byte   $44
        php
        stx     L0062
        .byte   $64
        php
        stx     L0055
        eor     L0056,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        sta     L0000,x
        ror     L0000
        asl     L0030
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $FC
        brk
        .byte   $03
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0086
        stx     L0008
        stx     L00CA
        php
        stx     L0086
        php
        inc     L0886
        stx     L0086
        stx     L0008
        stx     L00CA
        php
        stx     L0086
        php
        jsr     L8686
        php
        rti

        stx     L0086
        php
        rts

        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0095,x
        sta     L0056,x
        ror     L0095
        eor     L0022,x
        ora     L0002
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        .byte   $03
        bmi     L8DA4
L8DA4:  .byte   $0C
        .byte   $FC
        .byte   $03
        .byte   $3F
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0086
        stx     L00CC
        stx     L0086
        dex
        php
        stx     L0086
        php
        stx     L0086
        php
        inc     L0886
        inc     L8686
        stx     L0086
        stx     L0006
        stx     L0004
        stx     L0006
        stx     L0086
        stx     L00EA
        dex
        .byte   $82
        sty     L00EC
        php
        php
        php
        php
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0095,x
        sta     L0056,x
        lsr     L0095,x
        eor     (L0055),y
        lda     L00A5
        brk
        brk
        brk
        brk
        brk
        bmi     L8E07
L8E07:  .byte   $0C
        brk
        .byte   $03
        cpy     #$C0
        brk
        .byte   $3F
        .byte   $0C
        .byte   $3F
        brk
        .byte   $3F
        .byte   $0F
        .byte   $3F
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
        stx     L0086
        stx     L0086
        sty     L00EC
        stx     L0086
L8E2C:  php
        php
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0086
        stx     L0006
        stx     L0086
        stx     L0006
        cpx     L8686
        asl     L0006
        stx     L0086
        stx     L0086
        .byte   $06
L8E4E:  stx     L0086
        php
        php
        .byte   $80
        .byte   $80
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        .byte   $5A
        eor     L0055,x
        eor     L0055,x
        eor     LD965,y
        lda     L0057
        brk
        brk
L8E6E:  brk
        brk
        bmi     L8E72
L8E72:  bmi     L8E74
L8E74:  brk
        brk
        brk
        beq     L8EA9
        .byte   $3F
        cpy     #$3F
        brk
        .byte   $3C
        .byte   $0F
        .byte   $3C
        brk
        brk
        brk
        brk
        brk
        brk
L8E86:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        stx     L0006
        stx     L0086
        stx     L0006
        stx     L0086
        stx     L0006
        stx     L0086
        dex
        asl     L0086
        stx     L0006
        asl     L0086
        stx     L0006
        inc     L8686
        .byte   $06
L8EA9:  stx     L00CA
        .byte   $80
        inc     LCC86
        ldy     #$86
        stx     L00EA
        cpx     #$86
        stx     L0086
        ror     L8686
        stx     L008E
        .byte   $82
        sty     L00EC
        ldx     L2220
        jsr     L4022
        .byte   $42
        rti

        .byte   $42
        rts

        .byte   $62
        rts

        .byte   $62
        eor     L5955,y
        eor     L0069,x
        eor     L0055,x
        eor     L0055,x
        eor     (L0055),y
        eor     L0000,x
        brk
        brk
        brk
        brk
        .byte   $3F
        .byte   $FF
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $86
L8F03:  stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
L8F0F:  stx     L0086
        stx     L0086
        stx     L0082
        sty     L00EC
        stx     L00A2
        ldx     #$CE
        stx     L00E2
        cpx     #$EE
        stx     L0068
        iny
        stx     L0086
        pla
        inx
        php
        stx     L0068
        jmp     (L8608)

        bit     L0020
        php
        stx     L0044
L8F31:  rti

        php
        stx     L0064
        rts

        php
        stx     L0055
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
L8F3F:  eor     L0055,x
        eor     L0055,x
        ror     L0000
        ror     L0000
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        cpy     #$FF
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0055
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        ror     L0066
        ror     L0066
        ror     L0066
        ror     L0006
        asl     L0000
        brk
        brk
        brk
        brk
        beq     L8FBB
L8FBB:  brk
        .byte   $FC
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
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
L8FCC:  brk
        brk
        brk
L8FCF:  brk
        brk
        brk
        brk
        brk
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
L8FFF:  stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0055
        eor     L0055,x
        ror     L0066
        ror     L0066
        ror     L0066
        ror     L0066
        ror     L0066
        ror     L0006
        asl     L0000
        .byte   $FF
        brk
        brk
        .byte   $F0
L9025:  .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
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
        stx     L0006
        stx     L0086
        stx     L0006
        stx     L00CA
        stx     L0006
        stx     L00CC
        stx     L0006
        stx     L0004
        stx     L0006
        .byte   $86
L9053:  stx     L0086
L9055:  asl     L00EC
        stx     L0086
        asl     L0020
        .byte   $22
        stx     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0059
        eor     L0059,x
        ora     L0059,x
        eor     L0059,x
        rts

        eor     L0055,x
        ror     L0055
        ror     L0066
        asl     L0006
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        beq     L9053
        beq     L9055
        .byte   $FF
        .byte   $03
        brk
        .byte   $03
        .byte   $FC
        .byte   $03
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
        stx     L0086
        stx     L0086
        .byte   $80
        sty     L0084
        sty     L00A0
        ldy     L00A0
        ldx     #$E0
        cpx     L00E0
        cpx     L00C6
        asl     a
        .byte   $0C
        asl     L66AE
        dey
        lsr     a
        bit     L0022
        bit     L0006
        asl     L0006
        asl     L00EE
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0055
        eor     L0005,x
        ora     L0055
        eor     L0060,x
        .byte   $64
        eor     L0055,x
        adc     L0055
        ror     L0066
        asl     L0006
        brk
        beq     L90FB
L90FB:  beq     L90FD
L90FD:  beq     L90FF
L90FF:  bmi     L9104
        .byte   $FF
        .byte   $03
        brk
L9104:  .byte   $03
        .byte   $FC
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
        stx     L0086
        stx     L0086
        cpx     L8686
        stx     L00CE
        stx     L0086
        stx     L00EE
        dex
        cpx     L2C86
        asl     L0006
        asl     L0006
        inc     L8686
        inc     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0055
        eor     L0055,x
        eor     L0065,x
        lsr     L0055,x
        eor     L0055,x
        eor     L0065,x
        eor     L0066,x
        ror     L0006
        asl     L0000
        .byte   $0C
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $FF
        brk
        brk
        brk
        .byte   $FC
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        sty     L00EC
        stx     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0008
        stx     L0055
        eor     L0055,x
        lsr     L0055,x
        eor     L0059,x
        eor     L5555,y
        adc     L0055
        ror     L0066
        asl     L0006
        brk
        brk
        bmi     L9204
        bmi     L9206
        bmi     L9208
        brk
        .byte   $FF
        brk
        brk
        brk
        .byte   $FC
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $80
        .byte   $82
        .byte   $80
        asl     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
L9204:  stx     L0086
L9206:  dex
        .byte   $82
L9208:  stx     L0086
        cpy     L86A0
        stx     L00EA
        .byte   $E2
        stx     L0086
        ror     L8664
        asl     L0006
        asl     L0086
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0008
        stx     L0086
        stx     L0055
        eor     L0056,x
        lsr     L0055,x
        eor     L0055,x
        ora     L0095,x
        sta     L0065,x
        eor     L0066,x
        .byte   $77
        asl     L0007
        bmi     L923E
L923E:  bmi     L9240
L9240:  bmi     L9242
L9242:  bmi     L9244
L9244:  brk
        .byte   $FF
        bmi     L9248
L9248:  bmi     L924A
L924A:  bmi     L924C
L924C:  brk
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
        stx     L0086
        stx     L0086
        .byte   $82
        .byte   $80
        .byte   $82
        sty     L0006
        asl     L0006
        asl     L0086
        stx     L0086
        nop
        stx     L0086
        stx     L0086
        sty     L00EC
        stx     L0086
        ldy     #$CE
        stx     L0086
        cpx     #$EE
        stx     L0086
        iny
        stx     L0086
        stx     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0055
        eor     L0056,x
        lsr     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0075,x
        eor     L0077,x
        eor     L0007,x
        ora     L0030
        brk
        bmi     L92AC
L92AC:  bmi     L92AE
L92AE:  bmi     L92B0
L92B0:  bmi     L92B2
L92B2:  brk
        brk
        brk
        brk
        cpy     #$00
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
        stx     L0086
        stx     L0086
        sty     L0084
        cpx     LA086
        ldy     L00CE
        stx     L0006
        cpx     #$EE
        stx     L00EA
        asl     L0086
        stx     L0086
        nop
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        .byte   $80
        .byte   $82
        .byte   $EC
L92F0:  asl     L0006
        asl     L0006
        nop
        .byte   $E2
        cpx     #$EE
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        adc     L0055
        eor     L0065,x
        eor     L0055,x
        eor     L0055,x
        lsr     L0056,x
        eor     L0055,x
        ora     L0005
        cpy     #$00
        brk
        .byte   $03
        brk
        .byte   $0C
        brk
        .byte   $0C
        cpy     #$00
        cpy     #$00
        cpy     #$00
        cpy     #$00
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        cpx     L0606
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        eor     L0055,x
        eor     L0055,x
        adc     L0065
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        ora     L0005
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        asl     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        cpx     L0686
        asl     L0006
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0055
        eor     L0055,x
        eor     L0065,x
        adc     L0055
        eor     L0055,x
        eor     L0065,x
        adc     L0055
        eor     L0005,x
        ora     L0000
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $80
        sty     L00EC
        stx     L0006
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $86
L9430:  .byte   $86
L9431:  stx     L0086
        .byte   $04
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        jsr     L8686
        php
        rti

        stx     L0086
        php
        rts

        eor     L0055,x
        eor     L0055,x
        adc     L0065
        eor     L0055,x
        eor     L0015,x
        eor     L0055,x
        eor     L0022,x
        ora     L0002
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        bmi     L94A4
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
        stx     L0086
        stx     L0086
        dex
        .byte   $80
        sty     L0084
        cpy     LA3A1
        ldx     #$EA
        cpx     #$E2
        cpx     L0086
        stx     L00C6
        rol     L00CA
        asl     L0006
        asl     L0006
        inc     L66E6
        stx     L0086
        inc     L0046
        stx     L0086
        stx     L8666
        stx     L008E
        lsr     L0086
        stx     L008E
        .byte   $06
L94A4:  stx     L0086
        ldx     L2266
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0045,x
        sta     L0095,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        bmi     L94C7
L94C7:  .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        cpy     #$3C
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
        stx     L0086
        stx     L0086
        .byte   $80
        .byte   $83
        .byte   $80
        .byte   $80
        lda     (L00A3,x)
        ldx     #$A1
        cpx     L00E1
        .byte   $E2
        .byte   $E2
        rol     a
        bit     L8686
        asl     L0006
        tax
        asl     L002A
        jmp     LEA86

        lsr     a
        bit     L8686
        lsr     a
        bit     L8686
        lsr     a
        jmp     L80CA

        asl     L0006
        asl     L0006
        ror     a
        jmp     (L8686)

        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        eor     L0055,x
        sta     L0095,x
        eor     L0055,x
        eor     L0055,x
        lsr     L0056,x
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $04
        brk
        .byte   $0C
        cpy     #$3C
        cpy     #$3C
        cpy     #$3C
        cpy     #$3C
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
        stx     L0086
        stx     L0086
        cpx     L8686
        stx     L00CE
        stx     L0086
        stx     L00EE
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        asl     L0006
        asl     L0006
        cpx     #$E2
        .byte   $E2
        cpx     #$86
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00EC
        stx     L0086
        dex
        asl     L00AA
        ldy     L8606
        stx     L0086
        stx     L0020
        .byte   $22
        jsr     L4008
        .byte   $42
        rti

        php
        rts

        .byte   $62
        rts

        php
        eor     L0055,x
        eor     L0055,x
        sta     L0095,x
        eor     L0055,x
        eor     L0055,x
        lsr     L0055,x
        brk
        dey
        brk
        php
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        cpy     #$3C
        rti

        .byte   $3C
        .byte   $80
        .byte   $3C
        cpy     #$FC
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L00CA
        stx     L00CA
        asl     L0006
        stx     L0006
        inc     L0686
        inc     L8686
        asl     L0086
        stx     L0086
        inc     L8686
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0082
        sty     L00EC
        stx     L0006
        asl     L0006
        ldy     L8686
        stx     L0086
        stx     L0008
        .byte   $22
        bit     L0086
        php
        .byte   $42
        .byte   $44
        stx     L0008
        .byte   $62
        .byte   $64
        eor     L0055,x
        sta     L0056,x
        lsr     L0055,x
        eor     L0055,x
        eor     L0055,x
        lsr     L0056,x
        sta     L0900,y
        brk
        brk
        .byte   $0F
        cpy     #$00
        bmi     L960E
L960E:  .byte   $30
L960F:  brk
        cpy     #$00
        cpy     #$FC
        cpy     #$3C
        .byte   $80
        .byte   $3C
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
        stx     L0086
        stx     L0086
        sty     L00EC
        stx     L0086
        asl     L0006
        .byte   $86
L9633:  stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
L963F:  stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        tax
        ldy     L06AA
        stx     L0086
        stx     L00CA
        php
        stx     L0008
        jsr     L8608
        php
        rti

        php
        stx     L0008
        rts

        eor     L0055,x
        lsr     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        ror     L0022
        asl     L0002
        bmi     L9676
L9676:  bmi     L9678
L9678:  brk
        brk
        brk
        brk
        rti

        .byte   $FC
        .byte   $80
        brk
        rti

        .byte   $FC
        cpy     #$3C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0006
        asl     L0086
        stx     L00EA
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $04
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0084
        .byte   $80
        .byte   $80
        sty     L0006
        asl     L0006
        asl     L0080
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        .byte   $67
        eor     L0055,x
        eor     L0045,x
        eor     L0055,x
        eor     L0056,x
        lsr     L0000,x
        brk
        brk
        brk
        cpy     #$C0
        brk
        brk
        brk
        brk
        bmi     L96E8
L96E8:  .byte   $C3
        .byte   $3C
        cpy     #$3C
        cpy     #$3C
        cpy     #$3C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        cpx     L8686
        stx     L0006
        sty     L00EC
        stx     L00EA
        asl     L00CE
        dex
        stx     L0086
        asl     L0006
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        cpx     L8686
        dex
        asl     L0006
        asl     L0006
        sty     L00EC
        stx     L0086
        bit     L0008
        stx     L0008
        .byte   $44
        php
        stx     L0008
        .byte   $64
        php
        stx     L0008
        eor     L0055,x
        adc     L0055
        eor     L0065,x
        eor     L0055,x
        eor     L0055,x
        lsr     L0056,x
        dey
        sta     L0908,y
        cpy     #$00
        brk
        .byte   $03
        brk
        .byte   $0C
        brk
        .byte   $0C
        cpy     #$3C
        cpy     #$FC
        cpy     #$00
        cpy     #$FC
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        asl     L00CA
        asl     L0086
        inc     L8606
        asl     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        php
        stx     L0086
        stx     L0086
        .byte   $82
        sty     L00EC
        stx     L0006
        asl     L0006
        asl     L0086
        stx     L00CA
        .byte   $80
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        eor     L0055,x
        eor     L0055,x
        lsr     L0056,x
        eor     L0095,x
        eor     L0055,x
        lsr     L0056,x
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $0C
        brk
        .byte   $03
        brk
        cpy     L3CC0
        cpy     #$3C
        cpy     #$3C
        .byte   $C3
        .byte   $3C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        dex
        asl     L0086
        stx     L0006
        inc     L8686
        dex
        php
        stx     L0086
        php
        stx     L0086
        dex
        php
        php
        php
        php
        php
        stx     L0086
        stx     L0086
        php
        stx     L0086
        asl     L0006
        stx     L0086
        sty     L00EC
        stx     L00CA
        bit     L0020
        jsr     L4422
        rti

        rti

        .byte   $42
        .byte   $64
        rts

        rts

        .byte   $62
        eor     L0055,x
        eor     L0055,x
        stx     L0055,y
        ldx     L00A5
        stx     L0055,y
        lsr     L0055,x
        brk
        brk
        brk
        brk
        brk
        .byte   $F3
        cpy     #$CC
        brk
        cpy     #$00
        cpy     #$CF
        .byte   $3C
        .byte   $F3
        .byte   $3C
        .byte   $03
        .byte   $3C
        .byte   $03
        .byte   $3C
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
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        cpx     L8686
        stx     L0008
        php
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        stx     L0086
        .byte   $80
        sty     L00EC
        dex
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        lda     L0055
        eor     L0055,x
        eor     L0055,x
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        brk
        brk
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        php
        php
        php
        php
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L00E4
        cpx     L00E4
        asl     L0006
        asl     L00E4
        stx     L00CC
        cpx     L00E4
        cpx     LE4EA
        cpx     L0020
        .byte   $22
        php
        php
        rti

        .byte   $42
        php
        php
        rts

        .byte   $62
        php
        php
        ror     a
        .byte   $5A
        adc     L0055
        adc     L0055
        adc     L0055
        adc     L0065
        eor     L0055,x
        brk
        tax
        brk
        asl     a
        .byte   $FF
        .byte   $FF
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $3F
        .byte   $3C
L9906:  bmi     L9944
        bmi     L9906
        brk
        .byte   $FC
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
        php
        php
        php
        php
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L0006
        asl     L00E4
        cpx     L00E4
        cpx     L00E4
L9944:  cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        php
        php
        php
        php
        php
        php
        php
        php
        php
L9955:  php
        php
        php
        .byte   $5A
        .byte   $5A
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L5556,y
        eor     L00AA,x
        tax
        asl     a
        asl     a
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        brk
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $0C
        .byte   $FC
        brk
        .byte   $FC
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
        php
        php
        php
        php
        cpx     L0006
        cpx     L00E4
        cpx     L0006
        cpx     L00E4
        cpx     L0006
        cpx     L00E4
        cpx     L0006
        cpx     L00E4
        cpx     L0006
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        cpx     L00E4
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        txs
        .byte   $5A
        sta     L9955,y
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L00AA,x
        tax
        asl     a
        asl     a
        .byte   $03
        brk
        .byte   $FF
        .byte   $0F
        .byte   $03
        brk
        .byte   $03
        brk
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
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
        php
        php
        php
        php
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        cpx     L00E4
        cpx     L0008
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        .byte   $5A
        txs
        eor     L0099,x
        eor     L0099,x
        eor     L0099,x
        eor     L0099,x
        eor     L0099,x
        tax
        tax
        asl     a
        asl     a
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $FF
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $FF
        .byte   $FF
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
        .byte   $23
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        brk
        brk
        brk
        brk
        .byte   $23
        .byte   $3F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L1131
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     a:L0031
        brk
        brk
        brk
        php
        cpy     a:L0000
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        ora     (L00CF),y
        brk
        brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        brk
        brk
        brk
        brk
        ora     (L00C0),y
        .byte   $83
        brk
        ror     L2330,x
        .byte   $FC
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        brk
        brk
        brk
        brk
        .byte   $23
        .byte   $3F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L1131
        .byte   $FF
        .byte   $89
        brk
        .byte   $FB
        and     (L0000),y
        brk
        brk
        brk
        sty     L0000,x
        and     a:L0031
        brk
        brk
        brk
        ora     (L00C0),y
        .byte   $83
        brk
        ror     L1130,x
        .byte   $CF
        .byte   $89
        brk
        .byte   $FB
        and     (L0000),y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        cpy     a:L0000
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        .byte   $23
        .byte   $FF
        .byte   $89
        brk
        .byte   $FB
        and     (L0094),y
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        brk
        brk
        brk
        brk
        .byte   $23
        .byte   $3F
        .byte   $89
        brk
        .byte   $FB
        and     (L0094),y
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L1131
        .byte   $FF
        .byte   $89
        brk
        .byte   $FB
        and     (L0000),y
        brk
        brk
        brk
        sty     L0000,x
        and     a:L0031
        brk
        brk
        brk
        php
        .byte   $C3
        .byte   $89
        brk
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        ror     L0830,x
        .byte   $03
        .byte   $89
        brk
        .byte   $FB
        and     (L0011),y
        .byte   $CF
        .byte   $89
        brk
        .byte   $3A
        .byte   $32
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L00C0),y
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        brk
        brk
        brk
        brk
        php
        .byte   $0C
        brk
        brk
        brk
        brk
        php
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        .byte   $23
        .byte   $3F
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L1131
        .byte   $FF
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     a:L0031
        brk
        brk
        brk
        ora     (L00C0),y
        .byte   $83
        brk
        ror     L1130,x
        .byte   $CF
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
        ora     (L00C0),y
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9CB2
        cpy     #$00
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
L9CB2:  and     L8331
        brk
        .byte   $64
        bmi     L9CC1
        cpy     a:L0000
        brk
        brk
        brk
        brk
        brk
L9CC1:  brk
        php
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        ora     (L00FF),y
        .byte   $89
        brk
        .byte   $FB
        and     (L0094),y
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9CE3
        .byte   $C3
        .byte   $89
        brk
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $7E
L9CE3:  bmi     L9CED
        .byte   $03
        .byte   $89
        brk
        .byte   $FB
        and     (L0008),y
        .byte   $CF
        .byte   $89
L9CED:  brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $64
        bmi     L9D01
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
L9D01:  brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9D2E
        cpy     #$00
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
L9D2E:  and     L8331
        brk
        .byte   $64
        bmi     L9D46
        cpy     #$00
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
L9D46:  and     L8331
        brk
        .byte   $64
        bmi     L9D55
        cpy     a:L0000
        brk
        brk
        .byte   $83
        brk
        .byte   $7E
L9D55:  bmi     L9D5F
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        php
        .byte   $CF
        brk
L9D5F:  brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $64
        bmi     L9D73
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
L9D73:  brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FC
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9D9C
        cpy     #$00
        brk
        brk
        brk
        php
        .byte   $FF
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
L9D9C:  and     L8331
        brk
        .byte   $64
        bmi     L9DAB
        .byte   $03
        brk
        brk
        brk
        brk
        ora     (L00C3),y
        .byte   $89
L9DAB:  brk
        .byte   $5C
        .byte   $32
        brk
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        .byte   $3A
        .byte   $32
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9DD6
        .byte   $C3
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        .byte   $83
        brk
        ror     L0830,x
        .byte   $CF
        .byte   $89
        brk
        and     a:L0031
        brk
L9DD6:  brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     L9DE5
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $CC
        brk
L9DE5:  brk
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        cpy     a:L0094
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        and     L9431
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9E11
        .byte   $C3
        .byte   $89
        brk
        sbc     a:L0030,x
        brk
        brk
L9E11:  brk
        php
        .byte   $03
        .byte   $89
        brk
        and     L1131
        .byte   $FF
        .byte   $89
        brk
        sbc     L9430,x
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9E3C
        .byte   $C3
        .byte   $89
        brk
        and     a:L0031
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        and     a:L0031
        brk
L9E3C:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9E58
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        ror     L0830,x
        .byte   $CF
        brk
        brk
        brk
        brk
        brk
        brk
L9E58:  brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     L9E67
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
L9E67:  brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FC
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9E87
        cpy     a:L0000
        brk
        brk
        brk
        brk
        brk
L9E87:  brk
        php
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        ora     (L00FF),y
        brk
        brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9EB2
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $FF
        .byte   $89
        brk
        and     L9431
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
L9EB2:  and     L8331
        brk
        .byte   $64
        bmi     L9EC1
        cpy     #$83
        brk
        .byte   $64
        bmi     L9EC7
        .byte   $C3
        .byte   $89
L9EC1:  brk
        sbc     L8330,x
        brk
        .byte   $7E
L9EC7:  bmi     L9ED1
        .byte   $03
        .byte   $89
        brk
        and     L0831
        .byte   $CF
        .byte   $89
L9ED1:  brk
        sbc     a:L0030,x
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     L9EE5
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
L9EE5:  brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        sbc     (L0030,x)
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9F16
        .byte   $C3
        .byte   $89
        brk
        and     a:L0031
        brk
        brk
        brk
        ora     (L00FF),y
        brk
        brk
        brk
        brk
        brk
        brk
L9F16:  brk
        brk
L9F18:  sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9F29
        cpy     a:L0000
        brk
        brk
        .byte   $83
        brk
        .byte   $7E
L9F29:  bmi     L9F33
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        php
        .byte   $FC
        .byte   $94
L9F33:  brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9F47
        cpy     #$83
        brk
        .byte   $64
        bmi     L9F56
        cpy     #$83
L9F47:  brk
        ror     L0830,x
        .byte   $CF
        .byte   $89
        brk
        sbc     (L0030,x)
        sty     L0000,x
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
L9F56:  .byte   $64
        bmi     L9F61
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
L9F61:  brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $FF
        .byte   $89
        brk
        sbc     (L0030,x)
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     L9F89
        cpy     #$83
        brk
        .byte   $64
        bmi     L9F98
        .byte   $C3
        .byte   $89
L9F89:  brk
        and     L8331
        brk
        ror     L1130,x
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
L9F98:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9FAB
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
L9FAB:  brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        sbc     (L0030,x)
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     L9FC9
        .byte   $CF
        .byte   $89
        brk
        and     a:L0031
        brk
        brk
L9FC9:  brk
        .byte   $83
        brk
        ror     L0830,x
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        php
        .byte   $CF
        .byte   $89
        brk
        sbc     L9430,x
        brk
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $64
        bmi     L9FEB
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
L9FEB:  brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        and     L9431
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA01C
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        ror     L1130,x
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
LA01C:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA038
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $FC
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L8331
        brk
LA038:  .byte   $64
        bmi     LA043
        cpy     #$83
        brk
        .byte   $64
        bmi     LA052
        cpy     #$83
LA043:  brk
        ror     L0830,x
        .byte   $CF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $83
        brk
LA052:  .byte   $64
        bmi     LA05D
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $CC
        brk
LA05D:  brk
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        cpy     a:L0094
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FC
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA08E
        cpy     #$00
        brk
        brk
        brk
        ora     (L00FF),y
        brk
        brk
LA086:  brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
LA08E:  and     L8331
        brk
        .byte   $64
        bmi     LA0A6
        .byte   $C3
        .byte   $89
        brk
        sbc     (L0030,x)
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        and     a:L0031
        brk
LA0A6:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA0C2
        .byte   $C3
        .byte   $89
        brk
        sbc     L8330,x
        brk
        ror     L0830,x
        .byte   $CF
        .byte   $89
        brk
        and     a:L0031
        brk
LA0C2:  brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA0D1
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA0D1:  brk
        sbc     L8330,x
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        ror     L0830,x
        .byte   $FF
        .byte   $89
        brk
        sbc     a:L0030,x
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA0FD
        cpy     #$83
        brk
        .byte   $64
        bmi     LA103
        .byte   $CF
        .byte   $89
LA0FD:  brk
        and     a:L0031
        brk
        brk
LA103:  brk
        brk
        brk
        brk
        brk
        php
        cpy     a:L0094
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $64
        bmi     LA11B
        .byte   $FF
        .byte   $89
        brk
        and     L9431
        brk
        .byte   $3A
LA11B:  .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA12D
        .byte   $C0
LA126:  brk
        brk
        brk
        brk
        php
        .byte   $C3
        .byte   $89
LA12D:  brk
        and     L8331
        brk
        .byte   $64
        bmi     LA13D
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $FF
        brk
LA13D:  brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA155
        cpy     #$83
        brk
        .byte   $64
        bmi     LA15B
        cpy     #$00
LA155:  brk
        brk
        brk
        php
        cpy     #$83
LA15B:  brk
        .byte   $64
        bmi     LA167
        .byte   $CF
        .byte   $89
        brk
        .byte   $53
        and     (L0000),y
        brk
        brk
LA167:  brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA175
        cpy     #$00
        brk
        brk
        brk
        php
        .byte   $C3
        .byte   $89
LA175:  brk
        and     L8331
        brk
        .byte   $64
        bmi     LA185
        cpy     #$83
        brk
        .byte   $64
        bmi     LA194
        .byte   $FF
        .byte   $89
LA185:  brk
        .byte   $53
        and     (L0000),y
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        .byte   $30
LA194:  ora     (L00C3),y
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA1B9
        .byte   $CF
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
        brk
LA1B9:  brk
        brk
        brk
        brk
        brk
        php
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        ora     (L00FF),y
        brk
        brk
        brk
        brk
        sty     L0000,x
LA1CC:  .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA1E8
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $CF
        .byte   $89
        brk
        .byte   $7B
        and     (L0094),y
        brk
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
LA1E8:  .byte   $64
        bmi     LA1F3
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA1F3:  brk
        cpy     L0031
        .byte   $83
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        .byte   $7B
        and     (L0000),y
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA224
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
LA224:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA240
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
        brk
        brk
        php
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
LA240:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA253
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $CC
        brk
LA253:  brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA263
        cpy     a:L0094
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        .byte   $7E
LA263:  bmi     LA26D
        .byte   $CF
        .byte   $89
        brk
        cpy     L0031
        sty     L0000,x
        .byte   $3A
LA26D:  .byte   $32
        .byte   $83
        brk
        .byte   $64
        bmi     LA27B
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA27B:  brk
        .byte   $7B
        and     (L0083),y
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        .byte   $7B
        and     (L0094),y
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA2B0
        .byte   $C3
        .byte   $89
        brk
        and     a:L0031
        brk
        brk
        brk
        ora     (L00FF),y
        .byte   $89
        brk
        and     a:L0031
        brk
LA2B0:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA2CC
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        eor     L1130,y
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
LA2CC:  brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA2E8
        cpy     #$83
        brk
        ror     L0830,x
        cpy     a:L0000
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA2EF
        .byte   $C0
LA2E8:  .byte   $83
        brk
        ror     L0830,x
        .byte   $CC
        brk
LA2EF:  brk
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        cpy     a:L0094
        .byte   $3A
        .byte   $32
        .byte   $83
        brk
        ror     L1130,x
        .byte   $FF
        brk
        brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA324
        cpy     #$83
        brk
        eor     L1130,y
        .byte   $FC
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
LA324:  .byte   $64
        bmi     LA338
        cpy     #$83
        brk
        lsr     L1130,x
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000,x
LA338:  and     L8331
        brk
        .byte   $64
        bmi     LA350
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $CF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $83
        brk
LA350:  .byte   $64
        bmi     LA35B
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        brk
LA35B:  brk
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        ror     L1130,x
        .byte   $FF
        .byte   $89
        brk
        sbc     (L0030,x)
        brk
        brk
        brk
        brk
        sty     L0000,x
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA387
        .byte   $CF
        .byte   $89
        brk
        and     a:L0031
        brk
        brk
LA387:  brk
        brk
        brk
        brk
        brk
        php
        .byte   $0C
        sty     L0000,x
        .byte   $3A
        .byte   $32
        ora     (L00FF),y
        .byte   $89
        brk
        sbc     L9430,x
        brk
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
LA3A1:  brk
        .byte   $64
        bmi     LA3AD
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        .byte   $64
LA3AD:  bmi     LA3B7
        cpy     #$83
        brk
        .byte   $64
        bmi     LA3C6
        .byte   $FF
        brk
LA3B7:  brk
        brk
        brk
        sty     L0000,x
        .byte   $3A
        .byte   $32
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        .byte   $30
LA3C6:  ora     (L00C0),y
        .byte   $83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
        brk
        sbc     L8330,x
        brk
        .byte   $64
        bmi     LA3DF
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA3DF:  brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $F3
        .byte   $89
        brk
        .byte   $53
        and     (L0094),y
        brk
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA403
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA403:  brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $F3
        brk
        brk
        brk
        brk
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA427
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA427:  brk
        .byte   $53
        and     (L0083),y
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $F3
        .byte   $89
        brk
        and     L9431
        brk
        and     L8331
        brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA451
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $7E
LA451:  bmi     LA45B
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA45B:  brk
        .byte   $53
        and     (L0083),y
        brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA471
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        .byte   $64
LA471:  bmi     LA47B
        cpy     #$83
        brk
        .byte   $64
        bmi     LA48A
        .byte   $F3
        .byte   $89
LA47B:  brk
        sbc     L9430,x
        brk
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA498
        .byte   $C3
        .byte   $89
        brk
LA48A:  and     a:L0031
        brk
        brk
        brk
        ora     (L00F3),y
        .byte   $89
        brk
        .byte   $53
        and     (L0094),y
        brk
LA498:  and     L8331
LA49B:  brk
        .byte   $64
        bmi     LA4B0
        .byte   $C3
        .byte   $89
        brk
        .byte   $2D
        .byte   $31
LA4A4:  .byte   $83
        brk
        ror     L1130,x
        .byte   $F3
        .byte   $89
        brk
        .byte   $53
        and     (L0094),y
        brk
LA4B0:  and     L8331
        brk
        .byte   $64
        bmi     LA4C8
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        .byte   $83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
LA4C8:  brk
        brk
        php
        cpy     #$83
        brk
        .byte   $64
        bmi     LA4D9
        .byte   $C3
        .byte   $89
        brk
        .byte   $93
        and     (L0083),y
        brk
        .byte   $64
LA4D9:  bmi     LA4E3
        cpy     #$83
        brk
        .byte   $64
        bmi     LA4E9
        .byte   $F3
        .byte   $89
LA4E3:  brk
        cpy     L0031
        sty     L0000,x
        .byte   $C4
LA4E9:  and     (L0083),y
        brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA4FD
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
LA4FD:  bmi     LA507
        cpy     #$83
        brk
        .byte   $64
        bmi     LA50D
        beq     LA49B
LA507:  brk
        and     L8331
        brk
        .byte   $7E
LA50D:  bmi     LA517
        cpy     #$83
        brk
        eor     L0830,y
        .byte   $C3
        .byte   $89
LA517:  brk
        cpy     L0031
        .byte   $83
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $F3
        .byte   $89
        brk
        cpy     L0031
        sty     L0000,x
        and     L8331
        brk
        .byte   $64
        bmi     LA53B
        cpy     #$83
        brk
        .byte   $64
        bmi     LA541
        .byte   $C3
        .byte   $89
LA53B:  brk
        .byte   $7B
        and     (L0083),y
        brk
        .byte   $64
LA541:  bmi     LA54B
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA54B:  brk
        .byte   $93
        and     (L0083),y
LA54F:  brk
        .byte   $54
        bmi     LA55B
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        .byte   $83
        brk
        .byte   $7E
LA55B:  bmi     LA565
        .byte   $C3
        .byte   $89
        brk
        .byte   $FB
        and     (L0083),y
        brk
        .byte   $7E
LA565:  bmi     LA56F
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        .byte   $83
        brk
        .byte   $7E
LA56F:  bmi     LA579
        .byte   $F3
        .byte   $89
        brk
        .byte   $93
        and     (L0094),y
        brk
        .byte   $C4
LA579:  and     (L0083),y
        brk
        .byte   $64
        bmi     LA587
        cpy     #$83
        brk
        .byte   $64
        bmi     LA58D
        .byte   $C3
        .byte   $89
LA587:  brk
        cpy     L0031
        .byte   $83
        brk
        .byte   $64
LA58D:  bmi     LA597
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $F3
        .byte   $89
LA597:  brk
        .byte   $5C
        .byte   $32
        sty     L0000,x
        and     a:L0031
        brk
        brk
        brk
        php
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        ror     L0830,x
        cpy     #$83
        brk
        ror     L3530,x
        beq     LA54F
        brk
        and     a:L0031
        brk
        brk
        brk
        ora     (L0003),y
        brk
        brk
        brk
        brk
        ora     (L00F0),y
        sty     L0000,x
        cpy     L0031
        brk
        brk
        brk
        brk
        ora     (L00C0),y
        .byte   $83
        brk
        .byte   $64
        bmi     LA5E1
        beq     LA56F
        brk
        and     a:L0031
        brk
        brk
LA5E1:  brk
        php
        cpy     #$83
        brk
        .byte   $64
        bmi     LA5F1
        .byte   $C3
        .byte   $89
        brk
        .byte   $7B
        and     (L0000),y
        brk
        brk
LA5F1:  brk
        php
        cpy     #$83
        brk
        .byte   $64
        bmi     LA601
        .byte   $F3
        .byte   $89
        brk
        .byte   $93
        and     (L0094),y
        brk
        .byte   $2D
LA601:  and     (L0083),y
LA603:  brk
        .byte   $64
        bmi     LA60F
        .byte   $03
        .byte   $89
        brk
        cpy     L0031
        php
        .byte   $C3
        .byte   $89
LA60F:  brk
        .byte   $FB
        and     (L0083),y
        brk
        ror     L0830,x
        .byte   $03
        .byte   $89
        brk
        cpy     L0031
        ora     (L00C3),y
        .byte   $89
        brk
        .byte   $93
        and     (L0083),y
        brk
        .byte   $64
        bmi     LA638
        .byte   $C3
        .byte   $89
LA629:  brk
        cpy     L0031
        .byte   $83
        brk
        ror     L1130,x
        .byte   $F3
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        sty     L0000,x
LA638:  cpy     L0031
        .byte   $83
        brk
        .byte   $64
        bmi     LA650
        .byte   $C3
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        .byte   $83
        brk
        ror     L0830,x
        .byte   $F3
        .byte   $89
        brk
        .byte   $5C
        .byte   $32
        sty     L0000,x
LA650:  and     a:L0031
        brk
        brk
        brk
        php
        cpy     #$83
        brk
        .byte   $64
        bmi     LA665
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
LA665:  bmi     LA66F
        cpy     #$83
        brk
        .byte   $64
        bmi     LA67E
        beq     LA603
LA66F:  brk
        and     L8331
        brk
        ror     L1130,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA68E
        .byte   $C0
LA67E:  .byte   $83
        brk
        ror     L0830,x
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA695
        .byte   $C0
LA68E:  .byte   $83
        brk
        .byte   $64
        bmi     LA6A4
        beq     LA629
LA695:  brk
        cpy     L0031
        .byte   $83
        brk
        ror     L1130,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA6B4
        .byte   $F0
LA6A4:  .byte   $94
LA6A5:  brk
        and     L8331
        brk
        ror     L1130,x
        .byte   $C3
        .byte   $89
        brk
        .byte   $7B
        and     (L0083),y
        brk
LA6B4:  ror     L0830,x
        .byte   $F3
        .byte   $89
        brk
        .byte   $93
        and     (L0094),y
        brk
        and     L8331
        brk
        ror     L0830,x
        .byte   $03
        .byte   $89
        brk
        cpy     L0031
        php
        .byte   $C3
        .byte   $89
        brk
        .byte   $FB
        and     (L0000),y
        brk
        brk
        brk
        php
        .byte   $03
        .byte   $89
        brk
        cpy     L0031
        ora     (L0003),y
        .byte   $89
        brk
        .byte   $93
        and     (L0011),y
        .byte   $C3
        .byte   $89
        brk
        cpy     L0031
        brk
        brk
        brk
        brk
        ora     (L0033),y
        .byte   $89
        brk
        and     L9431
        brk
        cpy     L0031
        ora     (L0003),y
        .byte   $89
        brk
        and     L1131
        .byte   $33
        .byte   $89
        brk
        and     L9431
        brk
        and     L1131
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA720
        beq     LA6A5
        brk
        and     a:L0031
        brk
        brk
        brk
        ora     (L00C3),y
        .byte   $89
        brk
        .byte   $53
        and     (L0083),y
        brk
LA720:  .byte   $64
        bmi     LA734
        .byte   $C3
        .byte   $89
        brk
        and     L8331
        brk
        ror     L1130,x
        .byte   $C3
        .byte   $89
        brk
        .byte   $7B
        and     (L0083),y
        brk
LA734:  .byte   $64
        bmi     LA73F
        .byte   $F3
        .byte   $89
        brk
        .byte   $93
        and     (L0094),y
        brk
        .byte   $C4
LA73F:  and     (L0083),y
        brk
        ror     L0830,x
        .byte   $03
        brk
        brk
        brk
        brk
        php
        .byte   $C3
        .byte   $89
        brk
        .byte   $93
        and     (L0000),y
        brk
        brk
        brk
        php
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
        bmi     LA767
        .byte   $F3
        .byte   $89
        brk
        .byte   $93
        and     (L0094),y
        brk
        .byte   $2D
LA767:  and     (L0083),y
        brk
        .byte   $64
        bmi     LA775
        .byte   $C3
        .byte   $89
        brk
        .byte   $7B
        and     (L0083),y
        brk
        .byte   $64
LA775:  bmi     LA77F
        cpy     #$83
        brk
        ror     L0830,x
        .byte   $C3
        .byte   $89
LA77F:  brk
        .byte   $93
        and     (L0083),y
        brk
        .byte   $64
        bmi     LA78F
        .byte   $F3
        brk
        brk
        brk
        brk
        sty     L0000,x
        .byte   $2D
LA78F:  and     (L0083),y
        brk
        .byte   $64
        bmi     LA79D
        .byte   $C3
        .byte   $89
        brk
        .byte   $93
        and     (L0083),y
        brk
        .byte   $64
LA79D:  bmi     LA7A7
        .byte   $C3
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LA7A7:  brk
        php
        .byte   $C3
        .byte   $89
        brk
        .byte   $93
        and     (L0083),y
        brk
        .byte   $64
        bmi     LA7BB
        .byte   $C3
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $64
LA7BB:  bmi     LA7C5
        cpy     #$83
        brk
        .byte   $64
        bmi     LA7CB
        cpy     #$00
LA7C5:  brk
        brk
        brk
        php
        cpy     #$83
LA7CB:  brk
        .byte   $64
        bmi     LA7D7
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA7D7:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA7E9
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA7E9:  brk
        .byte   $64
        bmi     LA7F5
        cpy     #$83
        brk
        .byte   $64
        bmi     LA7FB
        cpy     #$00
LA7F5:  brk
        brk
        brk
        php
        cpy     #$83
LA7FB:  brk
        .byte   $64
        bmi     LA807
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA807:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA819
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA819:  brk
        .byte   $64
        bmi     LA825
        cpy     #$83
        brk
        .byte   $64
        bmi     LA82B
        cpy     #$00
LA825:  brk
        brk
        brk
        php
        cpy     #$83
LA82B:  brk
        .byte   $64
        bmi     LA837
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA837:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA849
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA849:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA85B
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA85B:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA86D
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA86D:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA87F
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA87F:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA891
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
LA891:  brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA8A3
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
LA8A3:  brk
        .byte   $64
        bmi     LA8AF
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
LA8AF:  brk
        ror     L1130,x
        cpy     #$00
        brk
        brk
        brk
        php
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
        brk
        .byte   $64
        bmi     LA8CD
        cpy     #$83
        brk
        ror     L0830,x
        cpy     #$83
LA8CD:  brk
        .byte   $64
        bmi     LA8D9
        cpy     #$83
        brk
        ror     L1130,x
        cpy     #$00
LA8D9:  brk
        brk
        brk
        php
        cpy     #$83
        brk
        .byte   $64
        bmi     LA8EB
        cpy     #$83
        brk
        ror     L1130,x
        cpy     #$00
LA8EB:  brk
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
LAA00:  brk
        brk
        brk
        brk
        brk
        brk
LAA06:  brk
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
LAA2C:  brk
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
LAA4E:  brk
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
LAA86:  brk
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
LAAA2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LAAAA:  brk
        brk
LAAAC:  brk
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
LAAC6:  brk
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
LAC06:  brk
        brk
LAC08:  brk
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
LACAA:  brk
        brk
LACAC:  brk
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
LAE86:  brk
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
LB793:  brk
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
        jmp     L5645

        eor     L004C
        jsr     L0033
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
        .byte   $54
        pha
        eor     L0020
        lsr     L0045
        .byte   $52
        .byte   $4F
        .byte   $43
        eor     #$4F
        eor     L0053,x
        jsr     L4F46
        .byte   $52
        eor     L0053
        .byte   $54
        brk
        brk
        brk
        brk
LC000:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $34
        tya
        lsr     L0F9F,x
        bpl     LC017
LC017:  .byte   $0C
        .byte   $0F
        bmi     LC053
        and     (L000F),y
        bmi     LC057
        plp
        .byte   $0F
        bpl     LC04B
        sec
        .byte   $0F
        asl     L201A
        brk
        asl     L1020
        brk
        asl     L1839
        brk
        .byte   $37
        .byte   $27
        asl     L000B,x
        sec
        plp
        clc
        .byte   $0B
        .byte   $0F
        .byte   $02
        php
        .byte   $0B
        .byte   $0F
        .byte   $03
        .byte   $02
        .byte   $0B
        .byte   $0C
        plp
        sec
        .byte   $0B
        asl     L201A
        brk
        .byte   $0E
        .byte   $20
LC04B:  bpl     LC04D
LC04D:  asl     L1839
        brk
        .byte   $37
        .byte   $27
LC053:  asl     L0015,x
        sec
        .byte   $57
LC057:  .byte   $89
        .byte   $D2
        .byte   $0B
        .byte   $03
        .byte   $0B
        .byte   $04
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $D7
        .byte   $64
        cmp     L00C4
        bvc     LC0BF
        .byte   $52
        sty     L0303
        .byte   $03
        .byte   $03
        .byte   $04
        asl     L0006
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L0006
        asl     L0011
        .byte   $34
        .byte   $57
        .byte   $7F
        .byte   $80
        lda     #$B4
        brk
        brk
        brk
        brk
        brk
        php
        ora     (L0007,x)
        ora     (L0001,x)
        ora     #$09
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
LC0BF:  brk
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
        cpx     #$00
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
        .byte   $0C
        brk
        brk
        brk
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L0000
        brk
        brk
        brk
        brk
        jsr     L0200
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        asl     a
        .byte   $0C
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
        cpx     #$E3
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
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $80
        jsr     L0208
        brk
        brk
        brk
        asl     a
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        .byte   $0B
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
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $80
        jsr     L0000
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        .byte   $0C
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
        asl     a
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        jsr     L0000
        brk
        brk
        brk
        brk
        jsr     L0020
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
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        dec     L00C8
        dex
        brk
        brk
        brk
        nop
        brk
        brk
        brk
        brk
        sbc     (L0000,x)
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
        .byte   $04
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
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        php
        txa
        jsr     L0000
        brk
        cpy     a:L0000
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
        .byte   $3C
        .byte   $0C
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        cpy     a:L0000
        brk
        cpx     a:L00E0
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
        sbc     (L000E,x)
        cpx     #$00
        brk
        brk
        brk
        brk
        brk
        ldx     L0000
        brk
        brk
        rol     a:L0000
        .byte   $22
        lsr     L2220
        .byte   $42
        .byte   $44
        rti

        asl     L0062
        .byte   $64
        rts

        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0000
        brk
        .byte   $E2
        brk
        brk
        brk
        ldy     #$20
        cpy     #$00
        cpy     a:L0000
        dey
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $FC
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
        asl     a:L00E3
        brk
        brk
        brk
        asl     a:L000A
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
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
        ldy     a:L0000
        ldy     a:L0000
        ldy     a:L0000
        asl     L0000
        brk
        brk
        tax
        tax
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldy     #$00
        brk
        asl     a
        cpy     #$00
        brk
        brk
        brk
        .byte   $3C
        bit     L0F00
        .byte   $0F
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
        .byte   $07
        .byte   $80
        .byte   $04
        jsr     L0804
        .byte   $04
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
        .byte   $0C
        .byte   $E2
        brk
        brk
        .byte   $E2
        cpx     #$00
        brk
        brk
        brk
        asl     a
        brk
        brk
        brk
        ldy     a:L0000
        ldy     a:L0000
        ldy     a:L0000
        ldy     a:L0000
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
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        brk
        brk
        brk
        brk
        tax
        brk
        brk
        brk
        brk
        rti

        bpl     LC447
        eor     (L0000,x)
        .byte   $3C
        .byte   $3C
LC447:  brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0F
        .byte   $C3
        brk
        brk
        brk
        .byte   $80
        brk
        jsr     L0800
        brk
        .byte   $02
        .byte   $02
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        bpl     LC461
LC461:  brk
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
        ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ror     L000E
        .byte   $E2
        brk
        stx     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        brk
        brk
        brk
        tax
        brk
        tax
        brk
        tax
        brk
        tax
        brk
        tax
        brk
        tax
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $0F
        brk
        rti

        asl     a
        php
        cpy     #$00
        cpy     L0CCC
        .byte   $0C
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        eor     L0000,x
        brk
        brk
        .byte   $54
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
        asl     a
        brk
        brk
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldy     LACAC
        ldy     a:L000E
        brk
        .byte   $27
        brk
        lsr     a
        jmp     L6856

        ror     a
        jmp     (L880E)

        asl     a:L0000
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
        tax
        brk
        brk
        brk
        tax
        brk
        bpl     LC55A
        brk
        brk
        .byte   $2F
        .byte   $4F
        tay
        tax
        ora     #$00
        brk
        brk
        brk
        bmi     LC527
LC527:  .byte   $03
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        bvc     LC537
LC537:  brk
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
        asl     a:L0000
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $AC
        .byte   $AC
LC55A:  ldy     a:L00AC
        brk
        brk
        brk
        asl     a:L0000
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        asl     L00AA
        brk
        tax
        asl     L00AA
        brk
        tax
        asl     L00AA
        brk
        tax
        asl     L0030
        brk
        ora     (L0000,x)
        .byte   $0F
        .byte   $0F
        .byte   $02
        .byte   $04
        brk
        .byte   $80
        brk
        bcs     LC5C4
        .byte   $BB
        .byte   $03
        .byte   $0B
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $54
        brk
        brk
        brk
        eor     L0000,x
        .byte   $FF
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
        asl     a
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC5C4:  ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        brk
        asl     a
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
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rti

        bpl     LC5F3
LC5F3:  brk
        .byte   $0F
        .byte   $0F
        brk
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        .byte   $E2
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
        ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        cpx     #$00
        brk
        asl     a
        brk
        ror     a:L0000
        brk
        stx     a:L0000
        brk
        ldx     LE200
        brk
        dec     L2422
        jsr     L42EE
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $80
        brk
        brk
        brk
        .byte   $0F
        .byte   $0F
        .byte   $80
        .byte   $82
        brk
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
LC686:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $E2
        .byte   $04
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
        ldy     LACAC
        ldy     a:L0000
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
        sty     LE200
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
LC6B6:  brk
        brk
        bit     L0020
        .byte   $22
        bit     L0044
        rti

        .byte   $42
        .byte   $44
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bmi     LC6D2
        brk
        brk
        .byte   $0F
        .byte   $0F
        brk
        brk
        brk
        .byte   $06
LC6D2:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        tay
        brk
        brk
        dec     L002E
        brk
        brk
        brk
        lsr     a:L0000
        brk
        ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $E2
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        brk
        brk
        jsr     L2022
        .byte   $22
        rti

        .byte   $42
        rti

        .byte   $42
        rts

        .byte   $62
        rts

        .byte   $62
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bmi     LC6B6
        .byte   $33
        brk
        .byte   $0F
        .byte   $0F
        brk
        .byte   $80
        .byte   $02
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        iny
        dex
        cpy     a:L000A
        nop
        cpx     a:L0000
        brk
        brk
        brk
        ldy     a:L0000
        brk
        ldy     a:L00AC
        brk
        brk
        ldy     a:L00AC
        brk
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     L2400
        jsr     LAC06
        .byte   $44
        rti

        asl     L00AA
        .byte   $64
        rts

        asl     L0000
        .byte   $02
        .byte   $02
        asl     L0000
        ldx     #$E0
        php
        .byte   $02
        .byte   $F3
        brk
        .byte   $0C
        .byte   $33
        brk
        .byte   $33
        brk
        .byte   $E3
        brk
        rol     L0200
        brk
        asl     a
        brk
        plp
        brk
        ldy     #$00
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        tax
        .byte   $FF
        brk
        asl     L0000
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
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        ldy     LACAC
        ldy     LAAAA
        tax
        tax
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
        jsr     LF0F0
        .byte   $0F
        .byte   $0F
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
        asl     L0000
        asl     L0000
        asl     L0000
        asl     L0000
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
        .byte   $E2
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
        asl     a
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
        ldy     LACAC
        ldy     LAAAA
        tax
        asl     L0000
        brk
        brk
        brk
LC874:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        beq     LC874
        .byte   $0F
        .byte   $0B
LC886:  brk
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
        asl     L0000
        asl     L0000
        asl     L0000
        asl     a:L0000
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
        asl     a
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
        asl     a:L0000
        asl     a:L00E1
        brk
        cpx     #$00
        brk
        brk
        brk
        brk
        brk
        tax
        brk
        brk
        tax
        brk
        brk
        tax
        brk
        brk
        tax
        brk
        brk
        brk
        ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        brk
        asl     a:L0000
        brk
        brk
        brk
        .byte   $02
        brk
        brk
        php
        brk
        .byte   $03
        cpy     #$C0
        .byte   $03
        .byte   $F3
        beq     LC8F1
LC8F1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        rti

        .byte   $02
        bpl     LC902
        .byte   $04
        .byte   $02
LC902:  ora     (L0002,x)
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
        tax
        asl     a
        cpx     #$AA
        brk
        brk
        tax
        brk
        brk
        tax
        brk
        brk
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a:L0000
        brk
        asl     a
        brk
        brk
        brk
        brk
        brk
        ldy     LACAC
        ldy     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
LC94C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$CA
        .byte   $03
        .byte   $03
        php
        brk
        .byte   $02
        beq     LC94C
        brk
        brk
        brk
        brk
        brk
        bpl     LC963
LC963:  .byte   $04
        brk
        ora     (L0040,x)
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
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
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        tax
        brk
        brk
        brk
        ldy     a:L0000
        brk
        ldy     LAA00
        brk
        ldy     LAA00
        brk
        ldy     LAA00
        brk
        ldy     LAA00
        brk
        ldy     LAAAA
        tax
        ldy     LAA00
        brk
        .byte   $AC
LC9B0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        brk
        brk
        brk
        brk
        beq     LC9B0
        brk
        cpy     LCCCC
        cpy     LCFCC
        .byte   $CF
        brk
        brk
        brk
        brk
        rti

        brk
        rti

        bvc     LCA11
        brk
        rti

        tax
        rti

        brk
        eor     L0001,x
        rti

        brk
        tax
        .byte   $02
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
        asl     a
        brk
        brk
        brk
        brk
        brk
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        tax
        tax
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
        asl     a:L0000
        brk
        brk
        brk
        ldy     a:L0004
        brk
        ldy     a:L00AA
LCA11:  brk
        ldy     a:L00C0
        brk
        ldy     L062E
        brk
        .byte   $AC
LCA1B:  lsr     L0606
        asl     L0006
        asl     L0062
        .byte   $64
        rts

        asl     L0002
        .byte   $02
        .byte   $02
        .byte   $02
        bpl     LCA1B
        brk
        brk
        brk
        brk
        .byte   $FF
        brk
        .byte   $FF
        cpx     #$FF
        rol     a
        asl     a
        .byte   $02
        brk
        rti

        brk
        rti

        brk
        brk
        .byte   $80
        brk
        cpy     #$00
        .byte   $FF
        brk
        .byte   $3C
        tax
        rol     L3C07,x
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
        cpx     #$00
        brk
        brk
        brk
        pla
        brk
        brk
        stx     L0088
        brk
        brk
        brk
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        .byte   $AC
        brk
LCA86:  asl     L0022
        asl     L0006
        asl     L0042
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        bpl     LCA99
LCA99:  tay
        .byte   $33
        brk
        .byte   $33
        brk
        .byte   $F3
        jsr     L020A
        brk
        brk
        brk
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        rol     L3C00,x
        brk
        .byte   $3F
        brk
        .byte   $3C
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
        rol     L0000
        asl     L3600
        asl     L4C4A
        lsr     L0048,x
        ror     a
        jmp     (L000E)

        .byte   $E2
        brk
        brk
        brk
        brk
        inc     L00E6
        inc     L00A4
        .byte   $80
        .byte   $82
        .byte   $82
        brk
        ldy     #$A2
        ldx     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bit     L0020
        asl     L0000
        .byte   $44
        rti

        asl     L0000
        .byte   $64
        rts

        .byte   $64
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0000
        jsr     LAAA2
        .byte   $1A
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        jsr     L8200
        brk
        php
        brk
        brk
        brk
        cpy     #$00
        cpy     #$00
        cpy     #$00
        .byte   $3C
        .byte   $03
        .byte   $3C
        .byte   $03
        .byte   $3F
        .byte   $03
        beq     LCB21
LCB21:  brk
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
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inc     L0000
        inc     L00A4
        .byte   $80
        ldy     L0080
        sty     L00A0
        inc     L00A0
        brk
        brk
        .byte   $82
        sty     L0000
        brk
        ldx     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        asl     L0064
        brk
        brk
        asl     L0002
        brk
        bpl     LCB6F
LCB6F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0080,x)
        brk
        plp
        asl     a
        .byte   $02
        brk
        cpy     #$00
        .byte   $0C
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        brk
        brk
        beq     LCB8B
LCB8B:  .byte   $3F
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
        asl     a:L0000
        brk
        brk
        inc     L00E6
        inc     L0000
        .byte   $82
        .byte   $82
        .byte   $82
        sty     L00A2
        ldx     #$A2
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$00
        brk
        brk
        sbc     (L00E2,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0000
        brk
        rts

        .byte   $62
        asl     L0000
        .byte   $02
        .byte   $02
        .byte   $02
        asl     L0000
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        ldx     #$00
        brk
        .byte   $80
        asl     a
        jsr     L0800
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        brk
        bmi     LCBF7
LCBF7:  .byte   $C3
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCC00:  brk
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
        inc     L0000
        brk
        ldy     L0080
        sty     L0000
        brk
        ldy     #$00
        brk
        brk
        brk
        brk
        brk
        plp
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
        asl     L0000
        asl     L0000
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     LCC4C
LCC4C:  brk
        brk
        brk
        jsr     L0882
        brk
        .byte   $02
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        bmi     LCC61
LCC61:  .byte   $C3
        brk
        .byte   $0C
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
        asl     a
        brk
        brk
        brk
        asl     a
        .byte   $0C
        brk
        inc     L0000
        brk
        ldy     L0080
LCC86:  sty     L0000
        brk
        ldy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        plp
        brk
        brk
        brk
        cpx     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        asl     L0000
        asl     L0000
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        bmi     LCCB3
LCCB3:  .byte   $0F
        brk
        brk
        brk
        bpl     LCCB9
LCCB9:  ora     (L0080,x)
        brk
        jsr     L0882
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        bmi     LCCCB
LCCCB:  .byte   $C3
LCCCC:  brk
        .byte   $0C
        brk
        bmi     LCCD1
LCCD1:  brk
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
        plp
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inc     L0000
        brk
        ldy     L0080
        sty     L00A4
        brk
        ldy     #$00
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
        asl     L0000
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        brk
        asl     L0000
        asl     L0000
        brk
        asl     L0010
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L0888
        jsr     L0802
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $C3
        brk
        .byte   $0C
        brk
        bmi     LCD3B
LCD3B:  .byte   $C3
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
        inc     L0000
        brk
        brk
        .byte   $80
        sty     L0000
        ldy     L00A0
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
        asl     L0000
        asl     L0000
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        brk
        asl     L0000
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
        jsr     L0882
        brk
        .byte   $02
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        bmi     LCDA5
LCDA5:  .byte   $C3
        brk
        .byte   $0C
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
        .byte   $0B
        brk
        brk
        brk
        brk
        inc     L0000
        brk
        inc     L0080
        sty     L00A4
        .byte   $80
        ldy     #$00
        brk
        ldy     #$00
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
        cpx     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        asl     L0020
        asl     L0000
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        rti

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        .byte   $80
        brk
        jsr     L0882
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        bmi     LCE0F
LCE0F:  .byte   $C3
        brk
        .byte   $0C
        brk
        bmi     LCE15
LCE15:  brk
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
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        inc     L00E6
        sty     L00A4
        .byte   $80
        .byte   $82
        brk
        brk
        ldy     #$A2
        brk
        brk
        brk
        brk
        cpx     #$0E
        asl     a
        .byte   $0B
        .byte   $E2
        asl     a:L000B
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$00
        brk
        brk
        brk
        brk
        .byte   $22
        bit     L0022
        asl     L0040
        .byte   $44
        asl     L0000
        asl     L0006
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        rts

        bvs     LCE6F
        ora     (L0000,x)
        .byte   $02
        brk
        plp
        asl     a
LCE6F:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $0C
        .byte   $03
        brk
        beq     LCE7B
LCE7B:  beq     LCE7D
LCE7D:  bmi     LCE7F
LCE7F:  .byte   $0C
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
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inc     L0000
        sty     L00A4
        .byte   $80
        sty     L0000
        brk
        ldy     #$00
        brk
        brk
        brk
        brk
        brk
        asl     a:L00E0
        asl     a
        brk
        .byte   $0B
        brk
        brk
        brk
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     LCECE
LCECE:  brk
        brk
        brk
        brk
        rti

        jsr     L3103
        brk
        brk
        asl     a
        asl     a
        brk
        brk
        .byte   $0C
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
        brk
        .byte   $0C
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
        .byte   $0B
        brk
        brk
        brk
        brk
        inc     L0000
        brk
        ldy     L0080
        sty     L0000
        brk
        ldy     #$00
        asl     a
        brk
        brk
        brk
        brk
        asl     a:L000A
        asl     a
        cpx     #$00
        inc     L0000
        brk
        ldy     L0080
        brk
        brk
        brk
        inc     L0000
        asl     L00A4
        .byte   $80
        brk
        brk
        brk
        ldy     #$00
        brk
        brk
        brk
        cpx     #$0B
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        .byte   $43
        bmi     LCF4C
        brk
        .byte   $80
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
LCF4C:  brk
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        bmi     LCF5B
        brk
        brk
        brk
LCF5B:  brk
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
        asl     a
        brk
        brk
        brk
        brk
        .byte   $C2
        brk
        brk
        brk
        rol     a:L0000
        brk
        lsr     L0E00
        brk
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0B
        brk
        brk
        brk
        asl     a
        brk
        inc     L0084
        brk
        ldy     L0080
        brk
        asl     a
        brk
        ldy     #$84
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        .byte   $0B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     LCC00
        brk
        cpy     L400C
        brk
        php
        brk
        dey
        brk
        clc
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        bmi     LCFC4
LCFC4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCFCC:  brk
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
        asl     a:L0000
        brk
        .byte   $0C
        brk
        brk
        brk
        .byte   $E2
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
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        sty     L0000
        brk
        brk
        brk
        brk
        brk
        asl     L0600
        jsr     L0022
        asl     L0040
        .byte   $42
        brk
        asl     L0060
        .byte   $62
        brk
        asl     L0002
        .byte   $02
        brk
        .byte   $80
        brk
        iny
        brk
        brk
        brk
        .byte   $0C
        brk
        brk
        .byte   $80
        .byte   $0C
        dey
        brk
        php
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
        .byte   $FF
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        .byte   $E2
        brk
        brk
        brk
        asl     a:L00E2
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
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        brk
        brk
        brk
        asl     L0024
        jsr     L0622
        .byte   $44
        rti

        .byte   $42
        asl     L0064
        rts

        .byte   $62
        asl     L0002
        .byte   $02
        .byte   $02
        asl     L0020
        brk
        asl     a:L0000
        brk
        brk
        .byte   $0C
        brk
        ldy     #$00
        dey
        brk
        dey
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        brk
        .byte   $3C
        bmi     LD0D6
        .byte   $F0
LD09B:  .byte   $FF
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
        asl     a
        asl     a
        brk
        brk
        .byte   $0C
        asl     a:L0000
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
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        asl     L0006
        asl     L0000
LD0D6:  asl     L0006
        asl     L0000
        asl     L0006
LD0DC:  asl     L0000
        asl     L0006
        asl     L0000
        asl     L0006
        asl     L0000
        asl     L0006
        brk
        bvc     LD0EB
LD0EB:  ora     L0000
        brk
        brk
        php
        jsr     L22A0
        tax
        .byte   $22
        tax
        .byte   $02
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $F0
LD101:  .byte   $FF
        brk
        brk
        .byte   $F0
LD105:  .byte   $FF
        .byte   $F0
LD107:  .byte   $FF
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
        cpx     #$00
        brk
        cpx     #$E2
        asl     a:L0000
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
        asl     a
        cpx     #$00
        asl     L0000
        brk
        brk
        asl     L0006
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L2422
        jsr     L4240
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        .byte   $54
        bpl     LD159
LD159:  brk
        bvc     LD0DC
        jsr     L0008
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
        cpy     #$30
        .byte   $3C
        brk
        .byte   $3C
        brk
        .byte   $3C
        .byte   $0F
        .byte   $3C
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
        asl     L0000
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$00
        brk
        brk
        sbc     (L0006,x)
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        .byte   $80
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        brk
        .byte   $03
        cpy     #$00
        bmi     LD216
        bmi     LD218
        brk
        .byte   $3C
        brk
        .byte   $3C
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
        sbc     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        asl     L0006
        asl     L0000
        asl     L0000
        brk
        brk
        asl     L0000
        asl     a
        asl     a
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        .byte   $06
LD216:  brk
        .byte   $06
LD218:  brk
        asl     L0000
        brk
        bit     L0006
        brk
        brk
        .byte   $44
        rti

        asl     L0006
        .byte   $64
        rts

        .byte   $62
        .byte   $64
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        rti

        brk
        jsr     L0800
        php
        plp
        php
        php
        .byte   $80
        php
        brk
        brk
        php
        brk
        brk
        cpy     #$00
        brk
        .byte   $FF
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $3C
        .byte   $FF
        .byte   $3F
        brk
        .byte   $3C
        bmi     LD288
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
        asl     L0000
        brk
        asl     L0000
        brk
        brk
LD26C:  brk
        brk
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        asl     L0006
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        asl     L0000
LD288:  brk
        asl     L0006
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        plp
        brk
        brk
        brk
        .byte   $80
        .byte   $02
        .byte   $02
        brk
        brk
        jsr     L0020
        brk
        brk
        cpy     #$C0
        bmi     LD26C
        brk
        .byte   $3C
        brk
        .byte   $03
        .byte   $0F
        .byte   $FC
        .byte   $03
        .byte   $03
        cpy     #$03
        bmi     LD2B8
LD2B8:  brk
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
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        .byte   $06
LD2E3:  brk
        asl     L0006
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        asl     L0022
        bit     L0020
        asl     L0042
        .byte   $44
        rti

        asl     L0062
        .byte   $64
        rts

        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        jsr     LC000
        brk
        brk
        php
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $FF
        cpy     #$00
        cpy     #$00
        bmi     LD31B
LD31B:  .byte   $0C
        .byte   $0F
        .byte   $FC
        .byte   $33
        beq     LD321
LD321:  beq     LD2E3
        beq     LD325
LD325:  brk
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
        asl     L0000
        brk
        asl     L0000
        brk
        asl     L0000
LD346:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0020
        .byte   $22
        bit     L0006
        rti

        .byte   $42
        .byte   $44
        rti

        rts

        .byte   $62
        .byte   $64
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        plp
        plp
        brk
        brk
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        cpy     #$00
        bmi     LD346
        brk
        bmi     LD3B9
        beq     LD397
        beq     LD390
        beq     LD38F
LD38F:  .byte   $FF
LD390:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LD397:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        asl     L0000
        brk
        asl     L0000
        brk
LD3B7:  brk
        .byte   $06
LD3B9:  brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        asl     L0006
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $22
        bit     L0020
        .byte   $22
        .byte   $42
        .byte   $44
        rti

        .byte   $42
        .byte   $62
        .byte   $64
        rts

        .byte   $62
        cpy     LCC00
        brk
        plp
        brk
        brk
        brk
        brk
        .byte   $02
        php
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        tax
        .byte   $03
        brk
        brk
        brk
        cpy     #$C0
        beq     LD3B7
        beq     LD435
        beq     LD3FE
        beq     LD3FD
LD3FD:  brk
LD3FE:  brk
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
        .byte   $E3
        brk
        brk
        asl     a
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        asl     L0000
        asl     L0006
        asl     L0000
        brk
        brk
        asl     L0006
        brk
        brk
        brk
        asl     L0004
        brk
        brk
        asl     L0000
LD435:  brk
        asl     a:L0000
        brk
        brk
        brk
        bit     L0020
        jsr     L4406
        rti

        rti

        asl     L0064
        rts

        rts

        asl     L0000
        jsr     L0008
        brk
        php
        .byte   $02
        .byte   $02
        bmi     LD45A
LD452:  brk
        .byte   $02
        brk
        dey
        brk
        php
        brk
        .byte   $30
LD45A:  brk
        bmi     LD45D
LD45D:  .byte   $FC
        cpy     #$C3
        bmi     LD452
        brk
        beq     LD468
        beq     LD4A6
        .byte   $FC
LD468:  brk
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
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        .byte   $E3
        brk
        brk
        asl     a
        brk
        brk
LD48E:  brk
        brk
        brk
        .byte   $06
LD492:  asl     L0006
        .byte   $E3
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        brk
        brk
        brk
        brk
        brk
        brk
LD4A6:  brk
        brk
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        brk
        asl     L0000
        asl     L0000
        php
        brk
        jsr     L0220
        php
        plp
        php
        jsr     L0020
        brk
        php
        php
        .byte   $02
        .byte   $02
        cpy     #$00
        cpy     #$30
        cpy     #$30
        cpy     #$30
        bmi     LD48E
        bmi     LD4DC
        bmi     LD492
        bmi     LD4E0
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD4DC:  brk
        brk
        brk
        brk
LD4E0:  brk
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
        asl     L0006
        asl     L0006
        brk
        brk
        brk
        brk
        brk
        brk
LD4FA:  brk
        brk
        asl     L0006
LD4FE:  asl     L0006
        brk
        brk
        brk
        asl     a:L0000
        brk
        brk
        asl     L0006
        asl     L0006
        .byte   $E3
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        asl     L000E
        brk
        brk
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        jsr     L0020
        brk
        php
        dey
        jsr     L0220
        brk
        plp
        php
        .byte   $02
        .byte   $02
        cpy     #$30
        cpy     #$30
        cpy     #$30
        cpy     #$30
        bmi     LD4FA
        bmi     LD548
        bmi     LD4FE
        bmi     LD54C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD548:  brk
        brk
        brk
        brk
LD54C:  brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0000
        brk
        .byte   $E3
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        asl     L0600
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        asl     L0000
        asl     a
        jsr     L0820
        brk
        php
        php
        php
        brk
        php
        php
        brk
        .byte   $80
        asl     a
        asl     a
        cpy     #$30
        cpy     #$F0
        cpy     #$30
        brk
        bmi     LD5A5
LD5A5:  cpy     #$FF
        .byte   $C3
        brk
        cpy     #$00
        beq     LD5AD
LD5AD:  brk
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
        asl     L0006
        asl     L0006
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        .byte   $80
        brk
        brk
        ldy     #$A0
        asl     a
        asl     a
        .byte   $FF
        .byte   $FF
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $0F
        .byte   $FC
        brk
        .byte   $FC
LD614:  brk
        .byte   $FC
        bmi     LD614
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
        asl     L0006
        asl     L0006
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
        ldy     a:L0000
        brk
        ldy     a:L0000
        brk
        ldy     a:L0000
        asl     L0006
        brk
        asl     L0000
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
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        .byte   $33
        .byte   $80
        .byte   $23
        .byte   $F2
        .byte   $33
        brk
        brk
        ldy     #$A0
        asl     a
        asl     a
        .byte   $03
        brk
        .byte   $03
        cpy     #$03
        nop
        .byte   $03
        brk
        .byte   $0C
        .byte   $FC
        .byte   $03
        .byte   $FC
        .byte   $03
        .byte   $FC
        brk
        .byte   $FC
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
        asl     L0006
        asl     L0006
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
        tax
        brk
        brk
        brk
        tax
        brk
        brk
        asl     L0006
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
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        cpy     #$00
        ldy     LAA00
        brk
        brk
        ldy     #$A0
        asl     a
        asl     a
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        cpy     #$03
LD6E7:  .byte   $D4
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $03
        .byte   $FC
        .byte   $03
        .byte   $FC
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
        asl     L0006
        asl     L0006
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        cpy     L0006
        brk
        brk
        rol     a:L0006
        brk
        lsr     LAA06
        tax
        asl     L0006
        brk
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0000
        brk
        brk
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0006
        asl     L0002
        .byte   $82
        brk
        .byte   $80
        brk
        .byte   $B3
        beq     LD6E7
        ldy     #$A2
        brk
        .byte   $80
        ldy     #$A0
        asl     a
        asl     a
        .byte   $03
        rti

        .byte   $03
        rti

        .byte   $03
        cpy     #$FF
        .byte   $FF
        ora     (L00FC,x)
        ora     (L00FC,x)
        .byte   $03
        .byte   $FC
        .byte   $FF
        .byte   $FF
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
LD82B:  brk
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
        .byte   $FF
        .byte   $02
        asl     a:L00F0
        brk
        brk
        brk
        .byte   $83
        brk
        .byte   $FB
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
LD877:  brk
        .byte   $93
        and     (L000E),y
        beq     LD87D
LD87D:  brk
        brk
        brk
        .byte   $83
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        beq     LD82B
        brk
        .byte   $FB
        and     (L0083),y
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $FB
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
LD8C7:  brk
        .byte   $FB
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        beq     LD877
        brk
        tax
        and     (L0083),y
        brk
        .byte   $FB
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
LD8FB:  brk
        ora     L0E31
        cpy     #$83
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        .byte   $0E
LD917:  beq     $D8AB
        brk
        .byte   $FB
        and     (L0083),y
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        ora     L0E31
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        ora     L0E31
LD933:  beq     LD8C7
        brk
        tax
        and     (L0083),y
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
LD95B:  cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
LD965:  and     (L000E),y
        beq     LD8FB
        brk
        .byte   $FB
        and     (L0083),y
        brk
        ora     L0E31
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        beq     LD917
        brk
        .byte   $7B
        and     (L0083),y
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        beq     LD933
        brk
        tax
        and     (L0083),y
        brk
        .byte   $93
LD9A7:  and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        ora     L0E31
        beq     LD95B
        brk
        .byte   $FB
        and     (L0083),y
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        asl     L83C0
LDA03:  brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        beq     LD9A7
        brk
        tax
        and     (L0083),y
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        cpy     L0031
        .byte   $0E
LDA23:  cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        cpy     L0031
        .byte   $0E
LDA3B:  cpy     #$83
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$83
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$83
        brk
        and     L0E31
        cpy     #$83
        brk
        .byte   $FB
        and     (L000E),y
LDA53:  cpy     #$83
        brk
        .byte   $93
        and     (L00FE),y
        .byte   $FF
        .byte   $02
        asl     a:L00FF
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
        .byte   $87
        brk
        .byte   $FB
        and     (L000E),y
        cpy     #$87
        brk
        cpy     L0031
        asl     L87C0
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$87
        brk
        .byte   $7B
        and     (L000E),y
        beq     LDA03
        brk
        .byte   $FB
        and     (L0087),y
        brk
        .byte   $53
        and     (L000E),y
        cpy     #$87
        brk
        and     L0E31
        .byte   $C0
LDA91:  .byte   $87
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$87
        brk
        .byte   $93
        and     (L0007),y
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDA23
        brk
        ror     L8730,x
        brk
        .byte   $53
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
        and     (L0030,x)
        sta     (L0000,x)
        ror     a
        bmi     LDABB
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDA3B
        brk
LDABB:  ror     L8730,x
        brk
        and     L0631
        .byte   $0F
        sta     (L0000,x)
        and     (L0030,x)
        sta     (L0000,x)
        ror     a
        .byte   $30
LDACB:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDA53
        brk
LDAD3:  .byte   $7E
        .byte   $30
LDAD5:  .byte   $87
        brk
        .byte   $7B
        .byte   $31
LDAD9:  asl     L000F
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
        ror     a
        .byte   $30
LDAE3:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
LDAE7:  and     (L0030,x)
        sta     (L0000,x)
LDAEB:  lsr     L8730,x
        brk
        .byte   $93
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDAF5:  and     L0030
        sta     (L0000,x)
        ror     a
        bmi     LDB03
        .byte   $CF
        sta     (L0000,x)
        and     #$30
        sta     (L0000,x)
LDB03:  lsr     L8730,x
        brk
        .byte   $53
        .byte   $31
LDB09:  asl     L000F
        sta     (L0000,x)
LDB0D:  .byte   $2F
        bmi     LDA91
        brk
        ror     a
        bmi     LDB1B
        .byte   $CF
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
LDB1B:  lsr     L8730,x
        brk
        .byte   $2D
        .byte   $31
LDB21:  asl     L000F
        sta     (L0000,x)
        and     (L0030,x)
        sta     (L0000,x)
        .byte   $54
        bmi     LDB33
        .byte   $CF
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
LDB33:  lsr     L8730,x
        brk
        cpy     L0031
LDB39:  asl     L000F
        sta     (L0000,x)
        and     #$30
        sta     (L0000,x)
        .byte   $54
        bmi     LDB4B
        .byte   $CF
        sta     (L0000,x)
        .byte   $34
        bmi     LDACB
        brk
LDB4B:  .byte   $4B
        bmi     LDAD5
        brk
        .byte   $FB
        .byte   $31
LDB51:  asl     L000F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDAD9
        brk
        lsr     L0730,x
        .byte   $FF
        sta     (L0000,x)
        .byte   $34
        bmi     LDAE3
        brk
        .byte   $4B
        bmi     LDAE7
        brk
        tax
        .byte   $31
LDB69:  .byte   $87
        brk
        .byte   $53
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDAF5
        brk
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
        and     #$30
        sta     (L0000,x)
        .byte   $4B
        .byte   $30
LDB81:  .byte   $87
        brk
        .byte   $93
        .byte   $31
LDB85:  asl     L000F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDB0D
        brk
        .byte   $54
        bmi     LDB97
        .byte   $CF
        sta     (L0000,x)
        and     #$30
        sta     (L0000,x)
LDB97:  .byte   $4B
        .byte   $30
LDB99:  .byte   $87
        brk
        cpy     L0031
LDB9D:  asl     L000F
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
        .byte   $54
        bmi     LDBAF
        .byte   $CF
        sta     (L0000,x)
LDBAB:  and     #$30
        sta     (L0000,x)
LDBAF:  .byte   $4B
        bmi     LDB39
        brk
        .byte   $FB
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDBB9:  and     L0030
        sta     (L0000,x)
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDBC3:  and     (L0030,x)
        sta     (L0000,x)
        .byte   $4B
        bmi     LDB51
        brk
        .byte   $93
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDBD1:  and     L0030
        sta     (L0000,x)
        ror     a
        bmi     LDBDF
        .byte   $CF
        sta     (L0000,x)
LDBDB:  and     (L0030,x)
        sta     (L0000,x)
LDBDF:  .byte   $4B
        bmi     LDB69
        brk
        cpy     L0031
LDBE5:  asl     L000F
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
        .byte   $42
        bmi     LDBF7
        .byte   $CF
        sta     (L0000,x)
LDBF3:  and     (L0030,x)
        sta     (L0000,x)
LDBF7:  .byte   $4B
        bmi     LDB81
        brk
        .byte   $7B
        .byte   $31
LDBFD:  asl     L000F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDB85
        brk
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDC0B:  and     (L0030,x)
        sta     (L0000,x)
LDC0F:  ror     a
        bmi     LDB99
        brk
        and     L0631
        .byte   $0F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDB9D
        brk
        lsr     L0730,x
        .byte   $FF
        sta     (L0000,x)
        and     (L0030,x)
        sta     (L0000,x)
LDC27:  .byte   $54
        bmi     LDBAB
        brk
        .byte   $FB
        and     (L0087),y
        brk
        .byte   $FB
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDC35:  .byte   $2F
        bmi     LDBB9
        brk
        .byte   $4B
        bmi     LDC43
        .byte   $CF
        sta     (L0000,x)
        .byte   $34
        bmi     LDBC3
        brk
LDC43:  lsr     L8730,x
        brk
        .byte   $93
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDC4D:  .byte   $2F
        bmi     LDBD1
        brk
        .byte   $54
        bmi     LDC5B
        .byte   $CF
        sta     (L0000,x)
LDC57:  .byte   $34
        bmi     LDBDB
        brk
LDC5B:  ror     a
        bmi     LDBE5
        brk
        cpy     L0031
LDC61:  asl     L000F
        sta     (L0000,x)
LDC65:  and     (L0030,x)
        sta     (L0000,x)
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDC6F:  .byte   $34
        bmi     LDBF3
        brk
        .byte   $4B
        bmi     LDBFD
        brk
        .byte   $0D
        .byte   $31
LDC79:  asl     L000F
        sta     (L0000,x)
LDC7D:  and     (L0030,x)
        sta     (L0000,x)
        lsr     L0030
        .byte   $07
        .byte   $FF
        sta     (L0000,x)
LDC87:  .byte   $34
        bmi     LDC0B
        brk
        .byte   $64
        bmi     LDC0F
        brk
        tax
        .byte   $31
LDC91:  .byte   $87
        brk
        .byte   $53
        .byte   $31
LDC95:  asl     L000F
        sta     (L0000,x)
        and     (L0030,x)
        sta     (L0000,x)
        bvs     LDCCF
LDC9F:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDC27
        brk
        lsr     L0030
LDCA9:  .byte   $87
        brk
        .byte   $7B
        .byte   $31
LDCAD:  asl     L000F
        sta     (L0000,x)
        .byte   $34
        bmi     LDC35
        brk
        .byte   $4B
        .byte   $30
LDCB7:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
LDCBF:  .byte   $5E
        .byte   $30
LDCC1:  .byte   $87
        brk
        .byte   $93
        .byte   $31
LDCC5:  asl     L000F
        sta     (L0000,x)
        .byte   $3F
        bmi     LDC4D
        brk
        bvs     LDCFF
LDCCF:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
        .byte   $23
        bmi     LDC57
        brk
        ror     a
        bmi     LDC61
        brk
        cpy     L0031
        asl     L000F
        sta     (L0000,x)
        .byte   $3F
        bmi     LDC65
        brk
        .byte   $54
        bmi     LDCEF
        .byte   $CF
        sta     (L0000,x)
LDCEB:  .byte   $23
        bmi     LDC6F
        brk
LDCEF:  .byte   $4B
        bmi     LDC79
        brk
        .byte   $53
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDCF9:  .byte   $3F
        bmi     LDC7D
        brk
        .byte   $54
        .byte   $30
LDCFF:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
LDD03:  sec
        bmi     LDC87
        brk
        .byte   $4B
        bmi     LDC91
        brk
        ora     L0631
        .byte   $0F
        sta     (L0000,x)
LDD11:  .byte   $34
        bmi     LDC95
        brk
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDD1B:  .byte   $3F
        bmi     LDC9F
        brk
        .byte   $4B
        bmi     LDCA9
        brk
        .byte   $2D
        .byte   $31
LDD25:  asl     L000F
        sta     (L0000,x)
LDD29:  .byte   $34
        bmi     LDCAD
        brk
        lsr     L0030
        .byte   $07
        .byte   $CF
        sta     (L0000,x)
LDD33:  .byte   $2F
        bmi     LDCB7
        brk
        .byte   $4B
        bmi     LDCC1
        brk
        ora     L0631
        .byte   $0F
        sta     (L0000,x)
        .byte   $34
        bmi     LDCC5
        brk
LDD45:  lsr     L0030
        .byte   $07
        .byte   $FF
        sta     (L0000,x)
        and     #$30
        sta     (L0000,x)
LDD4F:  ror     L8130,x
        brk
        .byte   $FB
        and     (L0087),y
        brk
        .byte   $93
        .byte   $31
LDD59:  asl     L000F
        sta     (L0000,x)
LDD5D:  and     L0030
        sta     (L0000,x)
        ror     a
        bmi     LDD6B
        .byte   $CF
        sta     (L0000,x)
LDD67:  .byte   $34
        bmi     LDCEB
        brk
LDD6B:  ror     L8730,x
        brk
        cpy     L0031
LDD71:  asl     L000F
        sta     (L0000,x)
LDD75:  .byte   $2F
        bmi     LDCF9
        brk
        ror     a
        bmi     LDD83
        .byte   $CF
        sta     (L0000,x)
LDD7F:  .byte   $34
        bmi     LDD03
        brk
LDD83:  ror     L8730,x
        brk
        .byte   $7B
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDD8D:  .byte   $2F
        bmi     LDD11
        brk
        ror     L0730,x
        .byte   $CF
        sta     (L0000,x)
        .byte   $23
        bmi     LDD1B
        brk
        ror     a
        bmi     LDD25
        brk
        .byte   $53
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
        .byte   $3F
        bmi     LDD29
        brk
        ror     L0730,x
        .byte   $FF
        sta     (L0000,x)
        .byte   $23
        bmi     LDD33
        brk
        ror     L8130,x
        brk
        .byte   $7B
        and     (L0087),y
        brk
        .byte   $93
        .byte   $31
LDDBD:  asl     L000F
        sta     (L0000,x)
        .byte   $3F
        bmi     LDD45
        brk
        ror     a
        bmi     LDDCF
        .byte   $CF
        sta     (L0000,x)
        .byte   $3F
        bmi     LDD4F
        brk
LDDCF:  ror     a
        bmi     LDD59
        brk
        and     L0631
        .byte   $0F
        sta     (L0000,x)
        .byte   $23
        bmi     LDD5D
        brk
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDDE3:  .byte   $3F
        bmi     LDD67
        brk
        ror     a
        bmi     LDD71
        brk
        cpy     L0031
        asl     L000F
        sta     (L0000,x)
LDDF1:  sec
        bmi     LDD75
        brk
        .byte   $54
        bmi     LDDFF
        .byte   $CF
        sta     (L0000,x)
        .byte   $34
        bmi     LDD7F
        brk
LDDFF:  lsr     L8730,x
        brk
        .byte   $7B
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
LDE09:  .byte   $2F
        bmi     LDD8D
        brk
        ror     a
        bmi     LDE17
        .byte   $FF
        sta     (L0000,x)
LDE13:  and     #$30
        sta     (L0000,x)
LDE17:  bvs     LDE49
        sta     (L0000,x)
        tax
        .byte   $31
LDE1D:  .byte   $87
        brk
        .byte   $0D
        .byte   $31
LDE21:  asl     L000F
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
        .byte   $5E
        .byte   $30
LDE2B:  .byte   $07
        .byte   $CF
        sta     (L0000,x)
LDE2F:  and     #$30
        sta     (L0000,x)
        ror     a
        bmi     LDDBD
        brk
        and     L0631
        .byte   $0F
        sta     (L0000,x)
LDE3D:  and     L0030
        sta     (L0000,x)
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDE47:  .byte   $23
        .byte   $30
LDE49:  sta     (L0000,x)
        bvs     LDE7D
        .byte   $87
        brk
        .byte   $93
        .byte   $31
LDE51:  asl     L000F
        sta     (L0000,x)
LDE55:  and     L0030
        sta     (L0000,x)
        ror     a
        bmi     LDE63
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDDE3
        brk
LDE63:  ror     L8730,x
        brk
        .byte   $7B
        .byte   $31
LDE69:  asl     L000F
        sta     (L0000,x)
LDE6D:  .byte   $34
        bmi     LDDF1
        brk
        lsr     L0730,x
        .byte   $CF
        sta     (L0000,x)
LDE77:  and     L0030
        sta     (L0000,x)
        .byte   $7E
        .byte   $30
LDE7D:  .byte   $87
        brk
        .byte   $93
        .byte   $31
LDE81:  asl     L000F
        sta     (L0000,x)
LDE85:  .byte   $34
        bmi     LDE09
        brk
        ror     a
        bmi     LDE93
        .byte   $CF
        sta     (L0000,x)
LDE8F:  .byte   $23
        bmi     LDE13
        brk
LDE93:  .byte   $4B
        bmi     LDE1D
        brk
        .byte   $7B
        .byte   $31
LDE99:  asl     L000F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDE21
        brk
        ror     a
        bmi     LDEAB
        .byte   $FF
        sta     (L0000,x)
        .byte   $23
        .byte   $30
LDEA9:  sta     (L0000,x)
LDEAB:  .byte   $4B
        bmi     LDE2F
        brk
        .byte   $FB
        and     (L0087),y
        brk
        .byte   $53
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDE3D
        brk
        .byte   $54
        bmi     LDEC7
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDE47
        brk
LDEC7:  .byte   $4B
        bmi     LDE51
        brk
        and     L0631
        .byte   $0F
        sta     (L0000,x)
        .byte   $23
        bmi     LDE55
        brk
        lsr     L0030
        .byte   $07
        .byte   $CF
        sta     (L0000,x)
        and     L0030
        sta     (L0000,x)
        .byte   $4B
        bmi     LDE69
        brk
        .byte   $7B
        and     (L0006),y
        .byte   $0F
        sta     (L0000,x)
        .byte   $2F
        bmi     LDE6D
        brk
        ror     a
        bmi     LDEF7
        .byte   $CF
        sta     (L0000,x)
        .byte   $2F
        bmi     LDE77
        brk
LDEF7:  .byte   $4B
        bmi     LDE81
        brk
        cpy     L0031
        asl     L000F
        sta     (L0000,x)
        .byte   $34
        bmi     LDE85
        brk
        lsr     L0030
        .byte   $07
        .byte   $CF
        sta     (L0000,x)
        .byte   $34
        bmi     LDE8F
        brk
        .byte   $4B
        bmi     LDE99
        brk
        .byte   $7B
        and     (L0006),y
        .byte   $03
        sta     (L0000,x)
        .byte   $2F
        bmi     LDF23
        .byte   $C3
        sta     (L0000,x)
        .byte   $34
        bmi     LDEA9
        brk
LDF23:  .byte   $93
        and     (L0006),y
        .byte   $03
        sta     (L0000,x)
        .byte   $2F
        bmi     LDF3A
        cpy     #$87
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$87
        brk
        cpy     L0031
        asl     L87C0
LDF3A:  brk
        .byte   $93
        and     (L000E),y
        cpy     #$87
        brk
        and     L7731
        bmi     LDEC7
        brk
        tax
        and     (L00FE),y
        ora     a:L00C0,x
        brk
        brk
        brk
        asl     L87C0
        brk
        .byte   $FB
        and     (L000E),y
        cpy     #$87
        brk
        .byte   $93
        and     (L000E),y
        cpy     #$87
        brk
        and     L0E31
        cpy     #$87
        brk
        .byte   $7B
        and     (L000E),y
        cpy     #$87
        brk
        .byte   $93
        and     (L0000),y
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
LE022:  brk
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
LE0EA:  brk
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
LE200:  brk
        brk
        brk
        brk
        brk
        brk
LE206:  brk
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
LE4A2:  brk
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
LE4EA:  brk
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
LE66C:  brk
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
LE686:  brk
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
        brk
LEA86:  brk
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
LEC02:  brk
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
        brk
        brk
LEC4E:  brk
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
LECC4:  brk
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
LEE20:  brk
        brk
LEE22:  brk
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
LF0F0:  brk
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
LF55F:  brk
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
LFC00:  brk
        brk
        brk
        brk
LFC04:  brk
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
LFC40:  brk
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
        jmp     L5645

        eor     L004C
        jsr     L0058
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
        .byte   $53
        jsr     L2050
        eor     (L0020,x)
        .byte   $43
        jsr     L0045
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
