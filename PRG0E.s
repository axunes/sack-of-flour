.byte $20   ; 
.byte $5A   ; 
.byte $C3   ; 
.byte $20   ; 
.byte $36   ; 
.byte $C2   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
JSR $DB8E
JSR $F5DD
JSR $DBDA
LDA #$30
STA $2000
LDA #$04
STA $2001
JSR $DC26
JSR $C1C2
JSR $DB8E
LDA #$30
STA $2000
LDA #$1C
STA $2001
LDA #$00
STA a: ram_0006
JSR $C26A
LDA #$00
STA a: ram_0007
JSR $E5EB
LDA #$03
STA a: ram_0008
JSR $DC71
JSR $CABB
JSR $D539
JSR $C7EC
JSR $D2BB
JSR $E8ED
JSR $C24E
LDA #$00
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BEQ :+ ;$C069
JSR $E679
:
JSR $C17F
JSR $E816
JSR $DB8E
JSR $DB61
LDA #$00
STA a: ram_0009
LDA a: ram_000B
CMP a: ram_0009
BEQ :+ ;$C085
JMP $C0E9
:
LDA #$FC
STA a: ram_0009
LDA a: ram_000C
AND #$FC
CMP a: ram_0009
BNE :++ ;$C0AA
JSR $C9E2
LDA #$02
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009

BNE :+ ;$C0A7
JMP $C04A
:
JMP $C0CD
:
LDA #$00
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BNE :+ ;$C0CA
LDA #$00
STA a: ram_0009
LDA a: ram_000D
CMP a: ram_0009
BNE :+ ;$C0CA
JSR $CAB7
JMP $C0CD
:
JMP $C04A
LDA #$00
STA a: ram_0009
LDA a: ram_0008
CMP a: ram_0009
BNE :+ ;$C0E3
JSR $DA95
JSR $C3EB
JMP $C000
:
JSR $CABB
JMP $C04A
JSR $E7F4
JMP $C0EF
JSR $C241
LDA #$1E
STA a: ram_000E
JSR $DB8E
JSR $D5ED
DEC a: ram_000E
LDA #$00
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;$C110
JMP $C0F7
:
JSR $D5C3
LDA #$01
STA a: ram_000F
JSR $DB8E
JSR $D2BB
JSR $DB61
LDA a: ram_000C
SEC
SBC #$03
STA a: ram_000C
LDA #$00
STA a: ram_0009
LDA a: ram_000C
AND #$F8
CMP a: ram_0009
BEQ :+ ;$C13C
JMP $C118
:
LDA #$1E
STA a: ram_000E
JSR $DB8E
JSR $D5ED
DEC a: ram_000E
LDA #$00
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;$C15A
JMP $C141
:
JMP $C15D
INC a: ram_0006
LDA #$05
STA a: ram_0009
LDA a: ram_0006
CMP a: ram_0009
BNE :+ ;$C170
JMP $D8B7
:
JSR $C26A
JSR $C1C2
.byte $20   ; 
.byte $71   ; 
.byte $DC   ; 
JSR $CABB
JMP $C04A
LDA a: ram_0004
PHA
LDA #$0D
PHA
LDA a: ram_0010
CLC
ADC a: ram_0086
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
STA a: ram_0004
LDA a: ram_0005
PHA
LDA #$11
PHA
LDA a: ram_0012
CLC
ADC a: ram_005B
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
STA a: ram_0005
RTS
LDA #$00
STA a: ram_0013
LDA #$00
STA a: ram_0014
LDA #$00
STA a: ram_0015
LDA #$00
STA a: ram_0016
LDA #$00
STA a: ram_0017
LDA #$00
STA a: ram_0018
LDA #$00
STA a: ram_0019
LDA #$00
STA a: ram_001A
LDA #$00
STA a: ram_001B
LDA #$01
STA a: ram_001C
LDA #$00
STA a: ram_000E
LDA #$00
STA a: ram_001D
LDA #$00
STA a: ram_001E
LDA #$00
STA a: ram_001F
LDA #$00
STA a: ram_0020
LDA #$00
STA a: ram_0021
LDA #$10
STA a: ram_0022
LDA #$00
STA a: ram_000B
LDA #$00
STA a: ram_0023
LDA #$20
STA a: ram_0024
LDA #$00
STA a: ram_0025
LDA #$00
STA a: ram_0026
LDA #$00
STA a: ram_0027
RTS
LDA #$00
STA $4015
LDA #$1F
STA $4015
RTS
LDX #$00
LDA #$00
:
STA $4000,X
INX
CPX #$10
BNE :- ;$C245
RTS
LDA #$0F
STA a: ram_0009
LDA a: ram_0022
CMP a: ram_0009
BPL :+ ; $C25C
RTS
:
LDX a: ram_0022
LDA #$F5
STA ram_0300,X
INC a: ram_0022
JMP $C24E
LDA a: ram_0006
ASL
STA a: ram_0028
LDA #$06
STA $8000
LDA a: ram_0028
STA $8001
LDA #$07
STA $8000
LDA a: ram_0028
CLC
ADC #$01
STA $8001
RTS
LDA #$00
STA $8000
LDA #$08
STA $8001
LDA #$01
STA $8000
LDA #$0A
STA $8001
LDA a: ram_0006
ASL
ASL
CLC
ADC #$0C
STA a: ram_0028
LDA #$02
STA $8000
LDA a: ram_0028
STA $8001
LDA #$03
STA $8000
LDA a: ram_0028
CLC
ADC #$01
STA $8001
LDA #$04
STA $8000
LDA a: ram_0028
CLC
ADC #$02
STA $8001
LDA #$05
STA $8000
LDA a: ram_0028
CLC
ADC #$03
STA $8001
RTS
LDA #$00
STA $8000
LDA #$04
STA $8001
LDA #$01
STA $8000
LDA #$06
STA $8001
LDA #$02
STA $8000
LDA #$04
STA $8001
LDA #$03
STA $8000
LDA #$05
STA $8001
LDA #$04
STA $8000
LDA #$06
STA $8001
LDA #$05
STA $8000
LDA #$07
STA $8001
RTS
LDA #$00
STA $8000
LDA #$00
STA $8001
LDA #$01
STA $8000
LDA #$02
STA $8001
LDA #$02
STA $8000
LDA #$00
STA $8001
LDA #$03
STA $8000
LDA #$01
STA $8001
LDA #$04
STA $8000
LDA #$02
STA $8001
LDA #$05
STA $8000
LDA #$03
STA $8001
RTS
JMP $C31D
RTS
JSR $DC6B
JSR $DB8E
JSR $DBC3
JSR $DC26
JSR $DB8E
LDX #$00
LDA #$F5
:
STA a: ram_002A,X
STA a: ram_0032,X
STA a: ram_0042,X
STA a: ram_004A,X
STA a: ram_003A,X
INX
CPX #$08
BNE :- ;$C371
LDA #$07
STA a: ram_0052
LDA #$0B
STA a: ram_0029
JSR $DB8E
LDA #$07
STA a: ram_0052
JSR $DB8E
JSR $C4B4
JSR $DB8E
JSR $C5AA
JSR $DB8E
JSR $C6A0
DEC a: ram_0052
LDA #$FF
STA a: ram_0009
LDA a: ram_0052
CMP a: ram_0009
BEQ :+ ;$C3BC
JMP $C397
:
LDA #$00
STA a: ram_0052
JSR $DB8E
JSR $C706
INC a: ram_0052
LDA #$05
STA a: ram_0009
LDA a: ram_0052
CMP a: ram_0009
BEQ :+ ; $C3DA
JMP $C3C1
:
JSR $DB8E
JSR $C414
LDA #$00
STA $2005
LDA #$00
STA $2005
RTS
JSR $DB8E
LDA #$01
STA a: ram_0009
LDA a: ram_0053
CMP a: ram_0009
BNE :+ ;$C3FF
JSR $C47D
RTS
:
LDA #$03
STA a: ram_0009
LDA a: ram_0053
CMP a: ram_0009
BNE :+ ;$C410
JSR $C414
RTS
:
JSR $C44B
RTS
LDA #$55
.byte $8D   ; 
.byte $54   ; 
.byte $00   ; 
LDA #$00
STA a: ram_0053
LDA #$3F
STA $2006
LDA #$00
STA $2006
LDA #$00
STA a: ram_000E
LDX a: ram_000E
LDA $8004,X
STA $2007
INC a: ram_000E
LDA #$20
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BNE :+ ; $C447
RTS
:
JMP $C42D
RTS
LDA #$01
CLC
ADC a: ram_0053
STA a: ram_0053
LDA #$3F
STA $2006
LDA #$00
STA $2006
LDA #$00
STA a: ram_000E
LDA #$0E
STA $2007
INC a: ram_000E
LDA #$20
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BNE :+ ;$C479
RTS
:
JMP $C463
RTS
LDA #$AA
STA a: ram_0054
LDA #$02
STA a: ram_0053
LDA #$3F
STA $2006
LDA #$00
STA $2006
LDA #$00
STA a: ram_000E
LDX a: ram_000E
LDA $8024,X
STA $2007
INC a: ram_000E
LDA #$20
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BNE :+ ;$C4B0
RTS
:
JMP $C496
RTS
LDA a: ram_0052
AND #$07
STA a: ram_0055
.byte $AE   ; 
EOR ram_0000,X
LDA a: ram_002A,X
STA a: ram_0011
LDA a: ram_0052
STA a: ram_0009
LDA a: ram_0011
CMP a: ram_0009
BNE :+ ;$C4D4
RTS
:
LDX a: ram_0055
LDA a: ram_0052
STA a: ram_002A,X
LDA a: ram_0052
ASL
TAX
LDA $E13A,X
STA a: ram_0000
INX
LDA $E13A,X
STA a: ram_0001
LDX a: ram_0055
LDA $E10A,X
STA a: ram_0056
LDX a: ram_0055
LDA $E112,X
STA a: ram_0057
LDY #$00
LDX #$00
LDA a: ram_0056
STA $2006
LDA a: ram_0057
STA $2006
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
DEY
DEY
DEY
CLC
LDA a: ram_0057
ADC #$20
STA a: ram_0057
LDA a: ram_0056
ADC #$00
STA a: ram_0056
LDA a: ram_0056
STA $2006
LDA a: ram_0057
STA $2006
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
CLC
CPY #$20
BEQ :+ ; $C5A9
CLC
LDA a: ram_0057
ADC #$20
STA a: ram_0057
LDA a: ram_0056
ADC #$00
STA a: ram_0056
JMP $C505
:
RTS
LDA a: ram_0052
AND #$07
STA a: ram_0055
LDX a: ram_0055
LDA a: ram_0032,X
STA a: ram_0011
LDA a: ram_0052
STA a: ram_0009
LDA a: ram_0011
CMP a: ram_0009
BNE :+ ;$C5CA
RTS
:
LDX a: ram_0055
LDA a: ram_0052
STA a: ram_0032,X
LDA a: ram_0052
ASL
TAX
LDA $E13A,X
STA a: ram_0000
INX
LDA $E13A,X
STA a: ram_0001
LDX a: ram_0055
LDA $E11A,X
STA a: ram_0056
LDX a: ram_0055
LDA $E122,X
STA a: ram_0057
LDY #$20
LDX #$00
LDA a: ram_0056
STA $2006
LDA a: ram_0057
STA $2006
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
STA $2007
ADC #$01
STA $2007
DEY
DEY
DEY
CLC
LDA a: ram_0057
ADC #$20
STA a: ram_0057
LDA a: ram_0056
ADC #$00
STA a: ram_0056
LDA a: ram_0056
STA $2006
LDA a: ram_0057
STA $2006
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
LDA (ram_0000),Y
ADC #$10
STA $2007
ADC #$01
STA $2007
INY
CLC
CPY #$3C
BEQ :+ ; $C69F
CLC
LDA a: ram_0057
ADC #$20
STA a: ram_0057
LDA a: ram_0056
ADC #$00
STA a: ram_0056
JMP $C5FB
:
RTS
LDA a: ram_0052
AND #$07
STA a: ram_0055
LDX a: ram_0055
LDA a: ram_003A,X
STA a: ram_0011
LDA a: ram_0052
STA a: ram_0009
LDA a: ram_0011
CMP a: ram_0009
BNE :+ ;$C6C0
RTS
:
LDX a: ram_0055
LDA a: ram_0052
STA a: ram_003A,X
LDX a: ram_0055
LDA $E12A,X
STA a: ram_0056
LDX a: ram_0055
LDA $E132,X
STA a: ram_0057
LDY #$3C
LDA a: ram_0056
STA $2006
LDA a: ram_0057
STA $2006
LDA (ram_0000),Y
STA $2007
INY
LDA (ram_0000),Y
STA $2007
INY
CPY #$4C
BEQ :+ ; $C705
CLC
LDA a: ram_0057
ADC #$08
STA a: ram_0057
JMP $C6DD
:
RTS
LDA a: ram_0052
AND #$07
STA a: ram_0055
LDX a: ram_0055
LDA a: ram_0042,X
STA a: ram_0011
LDA a: ram_0052
STA a: ram_0009
LDA a: ram_0011
CMP a: ram_0009
BNE :+ ;$C726
RTS
:
LDX a: ram_0055
LDA a: ram_0052
STA a: ram_0042,X
LDA a: ram_0052
ASL
TAX
LDA $E13A,X
STA a: ram_0000
INX
LDA $E13A,X
STA a: ram_0001
LDY #$4C
CLC
LDA a: ram_0052
ASL
ASL
ASL
ASL
ASL
STA a: ram_0026
TAX
:
LDA (ram_0000),Y
INY
STA a: ram_0011
AND #$03
STA ram_0400,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0400,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0400,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0400,X
LSR a: ram_0011
LSR a: ram_0011
INX
CPY #$54
BNE :- ;$C750
LDY #$54
CLC
LDA a: ram_0052
ASL
ASL
ASL
ASL
ASL
STA a: ram_0026
TAX
:
LDA (ram_0000),Y
INY
STA a: ram_0011
AND #$03
STA ram_0200,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0200,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0200,X
LSR a: ram_0011
LSR a: ram_0011
INX
LDA a: ram_0011
AND #$03
STA ram_0200,X
LSR a: ram_0011
LSR a: ram_0011
INX
CPY #$5C
BNE :- ;$C7A2
NOP
NOP
NOP
NOP
NOP
NOP
RTS
LDA #$00
STA a: ram_0058
LDA #$00
STA a: ram_0059
LDA #$00
STA a: ram_0012
LDA #$00
STA a: ram_005A
LDA #$00
STA a: ram_0009
LDA a: ram_001A
CMP a: ram_0009
BEQ :+ ; $C810
JSR $C99E
:
LDA #$00
STA a: ram_0009
LDA a: ram_0015
CMP a: ram_0009
BEQ :+ ; $C820
JSR $DD2D
:
LDA #$00
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BNE :+++ ;$C850
LDA #$00
STA a: ram_0009
LDA a: ram_001C
CMP a: ram_0009
BNE :+ ;$C83D
JSR $D204
:
LDA #$01
STA a: ram_0009
LDA a: ram_001C
CMP a: ram_0009
BNE :+ ;$C84D
JSR $D255
:
JMP $C984
:
LDA #$00
STA a: ram_0009
LDA a: ram_0016
CMP a: ram_0009
BEQ :+ ; $C862
LDA #$01
STA a: ram_0012
:
LDA #$00
STA a: ram_0009
LDA a: ram_0017
CMP a: ram_0009
BEQ :++ ; $C88C
LDA #$01
STA a: ram_001C
JSR $CBAA
LDA #$00
STA a: ram_0009
LDA a: ram_0014
CMP a: ram_0009
BEQ :+ ; $C887
JSR $CBAA
:
LDA #$01
STA a: ram_0059
:
LDA #$00
STA a: ram_0009
LDA a: ram_0018
CMP a: ram_0009
BEQ :+ ;! $C8B6
:
LDA #$00
STA a: ram_001C
JSR $CCFA
LDA #$00
STA a: ram_0009
LDA a: ram_0014
CMP a: ram_0009
BEQ :+ ;! $C8B1
:
JSR $CCFA
LDA #$01
STA a: ram_0059
LDA #$00
STA a: ram_0009
LDA a: ram_0013
CMP a: ram_0009
BNE :+ ;!$C8DD
:
LDA #$00
STA a: ram_0009
LDA a: ram_005B
CMP a: ram_0009
BEQ :+ ;! $C8D5
:
LDA #$0A
STA a: ram_0010
LDA #$00
STA a: ram_005B
JMP $C984
LDA #$00
STA a: ram_0009
LDA a: ram_0013
CMP a: ram_0009
BEQ :+ ;! $C90C
:
LDA #$01
STA a: ram_0009
LDA a: ram_005C
CMP a: ram_0009
BNE :+ ;!$C90C
:
LDA #$23
STA a: ram_0010
LDA #$01
STA a: ram_000F
.byte $A9   ; 
.byte $01   ; 
.byte $8D   ; 
.byte $5A   ; 
.byte $00   ; 
.byte $20   ; 
.byte $D8   ; 
.byte $D5   ; 
.byte $4C   ; 
.byte $84   ; 
.byte $C9   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $13   ; 
.byte $00   ; 
.byte $CD   ; 
ORA #$00
BEQ :+ ;! $C92C
:
LDA #$00
STA a: ram_0009
LDA a: ram_005B
CMP a: ram_0009
BEQ :+ ;! $C92C
:
DEC a: ram_005B
JMP $C984
LDA #$00
STA a: ram_0009
LDA a: ram_0013
CMP a: ram_0009
BEQ :+ ;! $C984
:
LDA #$00
STA a: ram_0009
LDA a: ram_005D
CMP a: ram_0009
BEQ :+ ;! $C984
:
JSR $D584
LDA #$01
STA a: ram_000F
LDA #$28
STA a: ram_0010
LDA #$03
STA a: ram_0009
LDA a: ram_0006
CMP a: ram_0009
BNE :+ ;!$C965
:
LDA #$2D
STA a: ram_0010
LDA #$00
STA a: ram_0009
.byte $AD   ; 
.byte $12   ; 
.byte $00   ; 
.byte $CD   ; 
ORA #$00
BEQ :+ ;! $C977
:
LDA #$26
STA a: ram_0010
LDA #$00
STA a: ram_005D
LDA #$0F
STA a: ram_005B
JMP $C984
JSR $CB8C
LDA #$00
STA a: ram_0009
LDA a: ram_000D
CMP a: ram_0009
BEQ :+ ;! $C997
:
DEC a: ram_000D
JSR $EE7E
JSR $D4D9
RTS
LDA #$00
STA $4015
JSR $D539
LDA #$00
STA a: ram_0009
LDA a: ram_001A
CMP a: ram_0009
BEQ :+ ;! $C9B6
:
JMP $C99E
JSR $D539
LDA #$00
STA a: ram_0009
LDA a: ram_001A
CMP a: ram_0009
BNE :+ ;!$C9C9
:
JMP $C9B6
JSR $D539
LDA #$00
STA a: ram_0009
LDA a: ram_001A
CMP a: ram_0009
BEQ :+ ;! $C9DC
:
JMP $C9C9
LDA #$0F
STA $4015
RTS
LDA $805C
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$C9F3
:
JMP $CA36
LDA $805D
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$CA04
:
JMP $CA36
LDA $805E
STA a: ram_0009
.byte $AD   ; 
.byte $5E   ; 
.byte $00   ; 
CMP a: ram_0009
BNE :+ ;!$CA15
:
JMP $CA36
LDA #$00
STA a: ram_000E
JSR $DB8E
.byte $20   ; 
SBC $EED5
ASL $A900
ASL $098D,X
BRK
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $CA33
:
JMP $CA1A
JMP $CAB7
JSR $DC26
LDA $805F
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BEQ :+ ;! $CA6C
:
JSR $E679
JSR $D204
JSR $D204
.byte $20   ; 
.byte $04   ; 
.byte $D2   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $58   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $20   ; 
.byte $29   ; 
.byte $D6   ; 
.byte $20   ; 
.byte $ED   ; 
.byte $D5   ; 
.byte $4C   ; 
.byte $39   ; 
.byte $CA   ; 
.byte $A9   ; 
.byte $02   ; 
.byte $8D   ; 
.byte $0C   ; 
.byte $00   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
ORA #$00
LDA a: ram_000D
CMP a: ram_0009
BEQ :+ ;! $CA80
:
RTS
LDA #$96
STA a: ram_000D
LDA #$01
STA a: ram_000F
LDA #$0A
STA a: ram_0010
DEC a: ram_000A
LDA #$FF
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BNE :+ ;!$CAA4
:
LDA #$00
STA a: ram_000A
LDA #$00
STA a: ram_0009
.byte $AD   ; 
.byte $0A   ; 
.byte $00   ; 
.byte $CD   ; 
ORA #$00
BNE :+ ;!$CAB6
:
LDA #$37
STA a: ram_0010
RTS
DEC a: ram_0008
RTS
JSR $C241
JSR $DBC3
JSR $DBDA
LDA #$03
STA a: ram_000A
LDA #$64
STA a: ram_000D
LDA #$01
STA a: ram_001C
LDA #$0A
STA a: ram_000C
LDA #$00
STA a: ram_005F
LDA #$02
STA a: ram_005E
LDA #$01
STA a: ram_0009
LDA a: ram_0027
CMP a: ram_0009
BNE :+ ;!$CAF5
:
LDA $8059
STA a: ram_005E
LDA #$00
STA a: ram_0010
LDA #$00
STA a: ram_000F
LDA #$FF
STA a: ram_0060
JSR $D825
LDA #$00
STA a: ram_0061
JSR $DB8E
INC a: ram_0061
LDA #$78
STA a: ram_0009
LDA a: ram_0061
CMP a: ram_0009
BPL :+ ;! $CB22
:
JMP $CB0C
LDA #$00
STA a: ram_0061
JSR $DBC3
JSR $C35E
LDA #$00
STA a: ram_0007
JSR $E5EB
LDA #$0F
STA $4015
LDA #$00
STA a: ram_001E
LDA #$00
STA a: ram_001F
LDA #$00
STA a: ram_0020
LDA #$00
STA a: ram_0021
LDA a: ram_0020
STA a: ram_0009
LDA a: ram_005E
SEC
SBC #$06
CMP a: ram_0009
BMI :+ ;! $CB75
:
JSR $D6E5
LDA #$00
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BEQ :+ ;! $CB72
:
JSR $D629
JMP $CB4E
JSR $C28B
JSR $DB8E
JSR $E7C4
LDA #$00
STA a: ram_005D
LDA #$00
STA a: ram_0025
JSR $D2BB
RTS
LDX a: ram_0010
LDA $E040,X
STA a: ram_0062
LDA #$01
STA a: ram_0009
LDA a: ram_000F
CMP a: ram_0009
BNE :+ ;!$CBA6
:
JMP $CE4A
RTS
JMP $D023
RTS
LDA #$03
STA a: ram_0009
LDA a: ram_005F
.byte $CD   ; 
ORA #$00
BPL :+ ;! $CBBA
:
JMP $D204
LDA a: ram_005E
ASL
ASL
ASL
CLC
ADC #$08
STA a: ram_0063
LDA #$7F
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BMI :+ ;! $CC2B
:
LDA #$81
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BPL :+ ;! $CC2B
:
LDX a: ram_0063
LDA ram_0200,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CBFA
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CC0A
:
JMP $D204
LDA a: ram_0063
CLC
ADC #$06
.byte $AA   ; 
.byte $BD   ; 
.byte $00   ; 
UNDEFINED
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CC28
:
RTS
JMP $D204
LDA #$7F
STA a: ram_0009
.byte $AD   ; 
UNDEFINED
BRK
CMP a: ram_0009
BPL :+ ;! $CC97
:
LDA a: ram_000C
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0400,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CC66
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CC76
:
JMP $D204
LDA a: ram_0066
SEC
SBC #$01
.byte $AA   ; 
.byte $BD   ; 
.byte $00   ; 
UNDEFINED
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CC94
:
RTS
JMP $D204
LDA a: ram_000C
SEC
SBC #$70
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0200,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CCC8
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CCD8
:
JMP $D204
LDA a: ram_0066
SEC
SBC #$01
TAX
LDA ram_0200,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CCF6
:
RTS
JSR $D204
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BEQ :+ ;! $CD0A
:
JMP $D255
LDA a: ram_005E
SEC
SBC #$01
ASL
ASL
ASL
STA a: ram_0063
LDA #$7F
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BMI :+ ;! $CD7B
:
LDA #$81
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BPL :+ ;! $CD7B
:
LDX a: ram_0063
LDA ram_0200,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CD4A
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CD5A
:
JMP $D255
LDA a: ram_0063
CLC
ADC #$06
.byte $AA   ; 
.byte $BD   ; 
.byte $00   ; 
UNDEFINED
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CD78
:
RTS
JMP $D255
LDA #$7F
STA a: ram_0009
.byte $AD   ; 
UNDEFINED
BRK
CMP a: ram_0009
BPL :+ ;! $CDE7
:
LDA a: ram_000C
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0400,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CDB6
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CDC6
:
JMP $D255
LDA a: ram_0066
SEC
SBC #$01
.byte $AA   ; 
.byte $BD   ; 
.byte $00   ; 
UNDEFINED
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CDE4
:
RTS
JMP $D255
LDA a: ram_000C
CLC
ADC #$90
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0200,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CE18
:
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CE28
:
JMP $D255
LDA a: ram_0066
SEC
SBC #$01
TAX
LDA ram_0200,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CE46
:
RTS
JMP $D255
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_000C
.byte $29   ; 
SED
CMP a: ram_0009
BNE :+ ;!$CE6F
:
DEC a: ram_0010
LDA #$00
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BNE :+ ;!$CE6E
:
LDA #$00
STA a: ram_000F
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BNE :+ ;!$CE9F
:
JSR $C241
LDA a: ram_000C
SEC
SBC a: ram_0062
STA a: ram_000C
DEC a: ram_0010
LDA #$00
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BNE :+ ;!$CE9E
:
LDA #$00
STA a: ram_000F
RTS
LDA a: ram_005E
ASL
ASL
ASL
STA a: ram_0063
LDA #$97
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BMI :+ ;! $CEB8
:
JMP $CF71
LDA a: ram_000C
PHA
LDA #$E8
SEC
SBC a: ram_0062
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CEF7
:
LDA a: ram_000C
PHA
LDA #$EF
SEC
SBC a: ram_0062
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0400,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CF1D
:
JMP $D01A
LDA #$00
STA a: ram_0064
LDA #$04
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $CF3E
:
BEQ :+ ;! $CF3E
:
LDA a: ram_0066
CLC
ADC #$08
TAX
LDA ram_0400,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CF51
:
JMP $D01A
LDA a: ram_000C
SEC
SBC a: ram_0062
STA a: ram_000C
DEC a: ram_0010
LDA #$00
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BNE :+ ;!$CF70
:
LDA #$00
STA a: ram_000F
RTS
LDA a: ram_000C
CLC
ADC #$79
SEC
SBC a: ram_0062
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $CFA0
:
LDA a: ram_000C
CLC
ADC #$7F
SEC
SBC a: ram_0062
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0200,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CFC6
:
JMP $D01A
LDA #$00
STA a: ram_0064
LDA #$04
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $CFE7
:
BEQ :+ ;! $CFE7
:
LDA a: ram_0066
CLC
ADC #$08
TAX
LDA ram_0200,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $CFFA
:
JMP $D01A
LDA a: ram_000C
SEC
SBC a: ram_0062
STA a: ram_000C
DEC a: ram_0010
LDA #$00
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BNE :+ ;!$D019
:
LDA #$00
STA a: ram_000F
RTS
LDA #$00
STA a: ram_000F
JSR $DC92
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_000A
CMP a: ram_0009
BNE :+ ;!$D05D
:
LDA a: ram_000C
CLC
ADC a: ram_0062
STA a: ram_000C
LDA #$00
STA a: ram_0009
LDA a: ram_0062
CMP a: ram_0009
BEQ :+ ;! $D04C
:
LDA #$00
STA a: ram_000F
LDA #$3C
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BPL :+ ;! $D05C
:
INC a: ram_0010
RTS
LDA a: ram_005E
ASL
ASL
ASL
STA a: ram_0063
LDA #$E8
STA a: ram_0009
LDA a: ram_000C
AND #$F8
CMP a: ram_0009
BNE :+ ;!$D080
:
LDA a: ram_000C
CLC
ADC a: ram_0062
STA a: ram_000C
RTS
LDA #$F0
STA a: ram_0009
LDA a: ram_000C
AND #$F0
CMP a: ram_0009
BNE :+ ;!$D09A
:
LDA a: ram_000C
CLC
ADC a: ram_0062
STA a: ram_000C
RTS
LDA #$7F
STA a: ram_0009
LDA a: ram_000C
CMP a: ram_0009
BMI :+ ;! $D0AA
:
JMP $D144
LDA a: ram_000C
CLC
ADC a: ram_0062
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0400,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $D0DE
:
JMP $D1E1
LDA #$00
STA a: ram_0064
LDA #$04
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $D0FF
:
BEQ :+ ;! $D0FF
:
LDA a: ram_0066
CLC
ADC #$08
TAX
LDA ram_0400,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $D112
:
JMP $D1E1
LDA a: ram_000C
CLC
ADC a: ram_0062
STA a: ram_000C
LDA #$00
STA a: ram_0009
LDA a: ram_0062
CMP a: ram_0009
BEQ :+ ;! $D12E
:
LDA #$00
STA a: ram_000F
LDA #$3C
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BPL :+ ;! $D13E
:
INC a: ram_0010
LDA #$00
STA a: ram_005D
RTS
LDA a: ram_000C
CLC
ADC a: ram_0062
CLC
ADC #$90
LSR
LSR
LSR
LSR
STA a: ram_0065
LDA a: ram_0063
CLC
ADC a: ram_0065
STA a: ram_0066
LDX a: ram_0066
LDA ram_0200,X
STA a: ram_0067
LDA #$00
STA a: ram_0009
LDA a: ram_0067
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $D17B
:
JMP $D1E1
LDA #$00
STA a: ram_0064
LDA #$04
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $D19C
:
BEQ :+ ;! $D19C
:
LDA a: ram_0066
CLC
ADC #$08
TAX
LDA ram_0200,X
STA a: ram_0064
LDA #$00
STA a: ram_0009
LDA a: ram_0064
AND a: ram_0054
CMP a: ram_0009
BEQ :+ ;! $D1AF
:
JMP $D1E1
LDA a: ram_000C
CLC
ADC a: ram_0062
STA a: ram_000C
LDA #$00
STA a: ram_0009
LDA a: ram_0062
CMP a: ram_0009
BEQ :+ ;! $D1CB
:
LDA #$00
STA a: ram_000F
LDA #$3C
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BPL :+ ;! $D1DB
:
INC a: ram_0010
LDA #$00
STA a: ram_005D
RTS
LDA #$02
STA a: ram_000F
LDA #$11
STA a: ram_0009
LDA a: ram_0010
CMP a: ram_0009
BMI :+ ;! $D1F9
:
LDA #$0C
STA a: ram_0010
RTS
LDA #$00
STA a: ram_0010
LDA #$01
STA a: ram_005D
RTS
LDA $8058
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$D213
:
RTS
LDA $8059
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$D226
:
LDA #$01
STA a: ram_0027
INC a: ram_005F
LDA #$10
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BNE :+ ;!$D23E
:
LDA #$00
STA a: ram_005F
INC a: ram_005E
LDA #$0A
STA a: ram_0009
LDA a: ram_005E
SEC
SBC a: ram_0020
CMP a: ram_0009
BMI :+ ;! $D254
:
BEQ :+ ;! $D254
:
JSR $D6E5
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$D270
:
LDA #$08
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BPL :+ ;! $D270
:
RTS
LDA $805A
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$D28C
:
LDA #$01
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
.byte $10   ; 
.byte $01   ; 
.byte $60   ; 
.byte $CE   ; 
.byte $5F   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $FF   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
UNDEFINED
BRK
CMP a: ram_0009
BNE :+ ;!$D2A4
:
LDA #$0F
STA a: ram_005F
DEC a: ram_005E
LDA #$06
STA a: ram_0009
LDA a: ram_005E
SEC
SBC a: ram_0020
CMP a: ram_0009
BPL :+ ;! $D2BA
:
BEQ :+ ;! $D2BA
:
JSR $D773
RTS
LDA #$20
STA a: ram_0024
INC a: ram_0025
LDA #$00
STA a: ram_0009
LDA a: ram_0025
AND #$08
CMP a: ram_0009
BEQ :+ ;! $D2D7
:
LDA #$28
STA a: ram_0024
LDA #$00
STA a: ram_0009
LDA a: ram_0059
CMP a: ram_0009
BNE :+ ;!$D2E9
:
LDA #$00
STA a: ram_0025
LDA #$02
STA a: ram_0009
LDA a: ram_000F
CMP a: ram_0009
BEQ :+ ;! $D2FB
:
LDA #$30
STA a: ram_0024
LDA #$00
STA a: ram_0009
LDA a: ram_0012
CMP a: ram_0009
BEQ :+ ;! $D30D
:
LDA #$38
STA a: ram_0024
LDA a: ram_000C
SEC
SBC #$20
STA a: ram_0068
LDA a: ram_005E
SEC
SBC a: ram_0020
ASL
ASL
ASL
ASL
PHA
LDA a: ram_005F
SEC
SBC a: ram_0021
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
SEC
SBC #$01
STA a: ram_0069
LDA #$01
STA a: ram_006A
LDA #$00
STA a: ram_0009
LDA a: ram_000D
CMP a: ram_0009
BEQ :+ ;! $D351
:
LDA a: ram_000D
AND #$03
STA a: ram_006A
LDA #$00
STA a: ram_0009
LDA a: ram_005A
CMP a: ram_0009
BEQ :+ ;! $D391
:
LDA a: ram_0069
CLC
ADC #$04
STA a: ram_006B
.byte $AD   ; 
.byte $0C   ; 
.byte $00   ; 
.byte $38   ; 
.byte $E9   ; 
.byte $02   ; 
.byte $8D   ; 
.byte $6C   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $03   ; 
.byte $8D   ; 
.byte $6D   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $1B   ; 
.byte $00   ; 
.byte $29   ; 
.byte $02   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $05   ; 
.byte $A9   ; 
.byte $43   ; 
.byte $8D   ; 
.byte $6D   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $6E   ; 
.byte $00   ; 
.byte $20   ; 
.byte $F5   ; 
.byte $F4   ; 
.byte $A9   ; 
.byte $01   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $1C   ; 
.byte $00   ; 
.byte $CD   ; 
ORA #$00
BNE :+ ;!$D3A1
:
JMP $D3A4
JMP $D43A
LDX #$00
LDA a: ram_0068
STA ram_0300,X
LDX #$01
LDA a: ram_0024
STA ram_0300,X
LDX #$02
LDA a: ram_006A
STA ram_0300,X
LDX #$03
LDA a: ram_0069
STA ram_0300,X
LDX #$04
LDA #$10
CLC
ADC a: ram_0068
STA ram_0300,X
LDX #$05
LDA #$02
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$06
LDA a: ram_006A
STA ram_0300,X
LDX #$07
LDA a: ram_0069
STA ram_0300,X
LDX #$08
LDA a: ram_0068
STA ram_0300,X
LDX #$09
LDA #$04
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$0A
LDA a: ram_006A
STA ram_0300,X
LDX #$0B
LDA #$08
CLC
ADC a: ram_0069
STA ram_0300,X
LDX #$0C
LDA #$10
CLC
ADC a: ram_0068
STA ram_0300,X
LDX #$0D
LDA #$06
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$0E
LDA a: ram_006A
STA ram_0300,X
LDX #$0F
LDA #$08
CLC
ADC a: ram_0069
STA ram_0300,X
RTS
LDA a: ram_006A
CLC
ADC #$40
STA a: ram_006A
LDX #$00
LDA a: ram_0068
STA ram_0300,X
LDX #$01
LDA #$04
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$02
LDA a: ram_006A
STA ram_0300,X
LDX #$03
LDA a: ram_0069
STA ram_0300,X
LDX #$04
LDA #$10
CLC
ADC a: ram_0068
STA ram_0300,X
LDX #$05
LDA #$06
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$06
LDA a: ram_006A
STA ram_0300,X
LDX #$07
LDA a: ram_0069
STA ram_0300,X
LDX #$08
LDA a: ram_0068
STA ram_0300,X
LDX #$09
LDA a: ram_0024
STA ram_0300,X
LDX #$0A
LDA a: ram_006A
STA ram_0300,X
LDX #$0B
LDA #$08
CLC
ADC a: ram_0069
STA ram_0300,X
LDX #$0C
LDA #$10
CLC
ADC a: ram_0068
STA ram_0300,X
LDX #$0D
LDA #$02
CLC
ADC a: ram_0024
STA ram_0300,X
LDX #$0E
LDA a: ram_006A
STA ram_0300,X
LDX #$0F
LDA #$08
CLC
ADC a: ram_0069
STA ram_0300,X
RTS
LDA #$00
STA a: ram_000E
LDA a: ram_000A
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BMI :+ ;! $D4ED
:
RTS
LDX a: ram_0022
LDA #$08
STA ram_0300,X
LDA #$01
CLC
ADC a: ram_0022
TAX
LDA #$02
STA ram_0300,X
LDA #$02
CLC
ADC a: ram_0022
TAX
LDA #$02
STA ram_0300,X
LDA #$03
CLC
ADC a: ram_0022
TAX
LDA #$10
PHA
LDA a: ram_000E
ASL
ASL
ASL
STA a: ram_0011
PLA
CLC
ADC a: ram_0011
STA ram_0300,X
LDA a: ram_0022
CLC
ADC #$04
STA a: ram_0022
INC a: ram_000E
JMP $D4DE
RTS
RTS
LDA #$01
STA $4016
LDA #$00
.byte $8D   ; 
.byte $16   ; 
RTI
LDA $4016
AND #$01
STA a: ram_0013
LDA $4016
AND #$01
STA a: ram_0014
LDA $4016
AND #$01
STA a: ram_0019
LDA $4016
AND #$01
STA a: ram_001A
LDA $4016
AND #$01
STA a: ram_0015
LDA $4016
AND #$01
STA a: ram_0016
LDA $4016
AND #$01
STA a: ram_0018
LDA $4016
AND #$01
STA a: ram_0017
RTS
LDA #$9F
STA $4004
LDA #$8C
STA $4005
LDA #$4D
STA $4006
LDA #$95
STA $4007
RTS
LDA #$9F
STA $4000
LDA #$84
STA $4001
.byte $A9   ; 
.byte $D3   ; 
.byte $8D   ; 
.byte $02   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $FC   ; 
.byte $8D   ; 
.byte $03   ; 
.byte $40   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $88   ; 
.byte $8D   ; 
.byte $00   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $48   ; 
.byte $8D   ; 
.byte $01   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $25   ; 
.byte $8D   ; 
.byte $02   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $4B   ; 
.byte $8D   ; 
.byte $03   ; 
.byte $40   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $0B   ; 
.byte $8D   ; 
.byte $0C   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $FF   ; 
.byte $8D   ; 
.byte $0D   ; 
RTI
LDA #$FF
STA $400E
LDA #$08
STA $400F
RTS
LDA #$0F
STA $400C
LDA #$FF
STA $400D
.byte $A9   ; 
.byte $F9   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $08   ; 
.byte $8D   ; 
.byte $0F   ; 
.byte $40   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $1E   ; 
.byte $00   ; 
.byte $29   ; 
UNDEFINED
CMP a: ram_0009
BEQ :+ ;! $D609
:
LDA #$31
STA $2000
LDA #$1C
STA $2001
JMP $D613
LDA #$30
STA $2000
LDA #$1C
STA $2001
LDA a: ram_001E
ASL
ASL
ASL
ASL
ASL
ASL
CLC
ADC a: ram_001F
STA $2005
LDA #$00
STA $2005
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D637
:
RTS
LDA #$06
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BMI :+ ;! $D647
:
JMP $D696
LDA a: ram_001E
CLC
ADC #$05
STA a: ram_0052
LDA #$01
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D660
:
JSR $C4B4
LDA #$03
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D670
:
JSR $C5AA
LDA #$04
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D680
:
JSR $C6A0
LDA #$05
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D690
:
JSR $C706
LDA #$00
STA a: ram_0058
RTS
LDA a: ram_001E
SEC
SBC #$01
STA a: ram_0052
LDA #$06
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D6AF
:
JSR $C4B4
LDA #$08
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D6BF
:
JSR $C5AA
LDA #$09
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D6CF
:
JSR $C6A0
LDA #$0A
STA a: ram_0009
LDA a: ram_0058
CMP a: ram_0009
BNE :+ ;!$D6DF
:
JSR $C706
LDA #$00
STA a: ram_0058
RTS
LDA $805B
STA a: ram_0009
LDA a: ram_0020
CMP a: ram_0009
BNE :+ ;!$D6F9
:
LDA #$01
STA a: ram_000B
RTS
INC a: ram_0021
LDA #$10
STA a: ram_0009
LDA a: ram_0021
CMP a: ram_0009
BNE :+ ;!$D711
:
LDA #$00
STA a: ram_0021
INC a: ram_0020
LDA #$3F
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D727
:
LDA #$00
STA a: ram_001F
INC a: ram_001E
RTS
INC a: ram_001F
LDA #$0A
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D73C
:
LDA #$01
STA a: ram_0058
LDA #$1E
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D74E
:
LDA #$03
STA a: ram_0058
LDA #$28
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D760
:
LDA #$04
STA a: ram_0058
LDA #$32
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D772
:
LDA #$05
STA a: ram_0058
RTS
LDA #$00
STA a: ram_0009
LDA a: ram_001E
CMP a: ram_0009
BNE :+ ;!$D78E
:
LDA #$01
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BPL :+ ;! $D78E
:
RTS
LDA $805B
STA a: ram_0009
LDA a: ram_0020
CMP a: ram_0009
BNE :+ ;!$D79D
:
RTS
DEC a: ram_0021
LDA #$FF
STA a: ram_0009
.byte $AD   ; 
AND (ram_0000,X)
CMP a: ram_0009
BNE :+ ;!$D7B5
:
LDA #$0F
STA a: ram_0021
DEC a: ram_0020
LDA #$00
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D7CB
:
LDA #$3F
STA a: ram_001F
DEC a: ram_001E
RTS
DEC a: ram_001F
LDA #$00
STA a: ram_0009
LDA a: ram_001E
CMP a: ram_0009
BNE :+ ;!$D7DC
:
RTS
LDA #$08
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D7EE
:
LDA #$06
STA a: ram_0058
LDA #$1C
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D800
:
LDA #$08
STA a: ram_0058
LDA #$26
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D812
:
LDA #$09
STA a: ram_0058
LDA #$30
STA a: ram_0009
LDA a: ram_001F
CMP a: ram_0009
BNE :+ ;!$D824
:
LDA #$0A
STA a: ram_0058
RTS
JSR $DAE9
LDA #$21
STA $2006
LDA #$08
STA $2006
LDX #$00
LDA $BFB8,X
STA $2007
INX
CPX #$20
BNE :+ ;!$D834
:
LDA #$21
STA $2006
LDA #$68
STA $2006
LDX #$00
LDA $BFD8,X
STA $2007
INX
CPX #$20
BNE :+ ;!$D84B
:
JSR $DB8E
LDA a: ram_0008
STA a: ram_000E
LDA #$22
STA $2006
LDA #$04
STA $2006
LDA #$EE
STA $2007
LDA #$EF
STA $2007
DEC a: ram_000E
LDA #$00
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $D886
:
JMP $D869
LDA a: ram_0008
STA a: ram_000E
LDA #$22
STA $2006
LDA #$24
STA $2006
LDA #$FE
STA $2007
LDA #$FF
STA $2007
DEC a: ram_000E
LDA #$00
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $D8B3
:
JMP $D896
JSR $DB09
RTS
JSR $DAE9
JSR $DB8E
LDA #$20
STA $2006
.byte $A9   ; 
.byte $48   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $01   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $0F   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $CC   ; 
.byte $D8   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $20   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $AB   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $10   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $08   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $FA   ; 
.byte $D8   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $01   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $19   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $28   ; 
.byte $D9   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $61   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $37   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $56   ; 
.byte $D9   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $A1   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $55   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $84   ; 
.byte $D9   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $E1   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $73   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $B2   ; 
.byte $D9   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $22   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $91   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $E0   ; 
.byte $D9   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $22   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $61   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $AF   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $0E   ; 
.byte $DA   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $22   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $A1   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $CD   ; 
.byte $E4   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $1E   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $3C   ; 
.byte $DA   ; 
.byte $20   ; 
.byte $09   ; 
.byte $DB   ; 
.byte $20   ; 
.byte $41   ; 
.byte $C2   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $05   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $05   ; 
.byte $20   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $20   ; 
.byte $39   ; 
.byte $D5   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $1A   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $D0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $68   ; 
.byte $DA   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $20   ; 
.byte $39   ; 
.byte $D5   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $1A   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $7E   ; 
.byte $DA   ; 
.byte $60   ; 
.byte $20   ; 
.byte $E9   ; 
.byte $DA   ; 
.byte $A9   ; 
.byte $21   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
PHP
STA $2006
LDA #$00
STA a: ram_000E
LDX a: ram_000E
LDA $E3F8,X
STA $2007
INC a: ram_000E
LDA #$09
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $DAC3
:
JMP $DAA7
JSR $DB09
JSR $C241
LDA #$C8
STA a: ram_0071
JSR $DAD2
RTS
JSR $DB8E
DEC a: ram_0071
LDA #$00
STA a: ram_0009
LDA a: ram_0071
CMP a: ram_0009
BEQ :+ ;! $DAE8
:
JMP $DAD2
RTS
JSR $DB80
JSR $C2E0
JSR $DB8E
JSR $DBDA
JSR $DB8E
JSR $DC26
JSR $DB8E
LDA #$00
STA $2005
LDA #$00
STA $2005
RTS
LDA #$3F
STA $2006
LDA #$00
STA $2006
LDA #$00
STA a: ram_000E
LDX a: ram_000E
LDA $E25A,X
STA $2007
INC a: ram_000E
LDA #$10
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BNE :+ ;!$DB32
:
RTS
JMP $DB18
LDA #$3F
STA $2006
LDA #$00
STA $2006
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $AE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $BD   ; 
.byte $00   ; 
.byte $E0   ; 
.byte $8D   ; 
.byte $07   ; 
.byte $20   ; 
.byte $EE   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $20   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $0E   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $D0   ; 
.byte $01   ; 
.byte $60   ; 
.byte $4C   ; 
.byte $44   ; 
.byte $DB   ; 
.byte $20   ; 
.byte $29   ; 
.byte $D6   ; 
.byte $20   ; 
.byte $ED   ; 
.byte $D5   ; 
.byte $A9   ; 
.byte $03   ; 
.byte $8D   ; 
UNDEFINED
RTI
LDA #$10
STA a: ram_0022
RTS
JSR $DB8E
LDA #$30
STA $2000
LDA #$1C
.byte $8D   ; 
.byte $01   ; 
.byte $20   ; 
.byte $60   ; 
.byte $20   ; 
.byte $8E   ; 
.byte $DB   ; 
.byte $A9   ; 
.byte $20   ; 
.byte $8D   ; 
.byte $00   ; 
.byte $20   ; 
.byte $A9   ; 
UNDEFINED
STA $2001
RTS
LDA $2002
BPL :+ ;! $DB8E
:
LDA $2002
BMI :+ ;! $DB93
:
LDA #$00
STA $2005
LDA #$00
STA $2005
LDA #$00
STA $2006
LDA #$00
STA $2006
INC a: ram_001B
RTS
LDA $2002
BPL :+ ;! $DBB0
:
LDA $2002
BMI :+ ;! $DBB5
:
.byte $AD   ; 
.byte $02   ; 
.byte $20   ; 
.byte $10   ; 
.byte $FB   ; 
.byte $EE   ; 
.byte $1B   ; 
.byte $00   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $3F   ; 
.byte $8D   ; 
.byte $06   ; 
.byte $20   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $06   ; 
JSR $0EA9
LDY a: ram_0020
STA $2007
DEY
CPY #$00
BNE :+ ;!$DBD2
:
JSR $DB8E
LDA #$20
STA $2006
LDA #$00
STA $2006
JSR $DC1B
JSR $DB8E
LDA #$21
STA $2006
LDA #$00
STA $2006
JSR $DC1B
JSR $DB8E
LDA #$22
STA $2006
LDA #$00
STA $2006
JSR $DC1B
JSR $DB8E
LDA #$23
STA $2006
LDA #$00
STA $2006
JSR $DC1B
RTS
LDX #$00
STA $2007
INX
CPX #$00
BNE :+ ;!$DC1D
:
RTS
LDA #$00
STA a: ram_0066
LDA #$00
STA $2003
LDA #$F5
STA $2004
INC a: ram_0066
LDA #$00
STA a: ram_0009
LDA a: ram_0066
CMP a: ram_0009
BEQ :+ ;! $DC48
:
JMP $DC30
RTS
LDA #$00
STA a: ram_0066
LDX a: ram_0066
LDA #$F5
.byte $9D   ; 
.byte $00   ; 
.byte $03   ; 
.byte $EE   ; 
.byte $66   ; 
.byte $00   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
.byte $09   ; 
.byte $00   ; 
.byte $AD   ; 
.byte $66   ; 
.byte $00   ; 
.byte $CD   ; 
.byte $09   ; 
.byte $00   ; 
.byte $F0   ; 
.byte $03   ; 
.byte $4C   ; 
.byte $4E   ; 
.byte $DC   ; 
.byte $60   ; 
.byte $40   ; 
.byte $A9   ; 
.byte $05   ; 
.byte $8D   ; 
.byte $7E   ; 
.byte $00   ; 
.byte $60   ; 
.byte $A9   ; 
.byte $00   ; 
.byte $8D   ; 
ASL $AE00
ASL $A900
BRK
STA a: ram_0072,X
INC a: ram_000E
LDA #$0C
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $DC91
:
JMP $DC76
RTS
LDA #$00
STA a: ram_007F
LDX a: ram_007F
LDA a: ram_0072,X
STA a: ram_0080
LDA #$00
STA a: ram_0009
LDA a: ram_0080
CMP a: ram_0009
BEQ :+ ;! $DCB0
:
JMP $DD19
LDX a: ram_007F
LDA $8070,X
STA a: ram_0081
LDX a: ram_007F
LDA $807C,X
STA a: ram_0082
LDA a: ram_0082
STA a: ram_0009
LDA a: ram_000C
SEC
SBC #$20
LSR
LSR
LSR
LSR
CMP a: ram_0009
BEQ :+ ;! $DCDA
:
JMP $DD19
LDA a: ram_0081
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$DCF8
:
LDA #$06
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BPL :+ ;! $DCF8
:
JMP $DDD8
LDA a: ram_0081
STA a: ram_0009
LDA a: ram_005E
CLC
ADC #$01
CMP a: ram_0009
BNE :+ ;!$DD19
:
LDA #$0A
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $DD19
:
JMP $DDD8
INC a: ram_007F
LDA #$0C
STA a: ram_0009
LDA a: ram_007F
CMP a: ram_0009
BEQ :+ ;! $DD2C
:
JMP $DC97
RTS
LDA #$00
STA a: ram_0083
LDX a: ram_0083
LDA $8044,X
STA a: ram_0084
LDX a: ram_0083
LDA $8049,X
STA a: ram_0085
LDA a: ram_0085
STA a: ram_0009
LDA a: ram_000C
SEC
SBC #$02
LSR
LSR
LSR
LSR
CMP a: ram_0009
BEQ :+ ;! $DD5C
:
JMP $DD9B
LDA a: ram_0084
STA a: ram_0009
LDA a: ram_005E
CMP a: ram_0009
BNE :+ ;!$DD7A
:
LDA #$04
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BPL :+ ;! $DD7A
:
JMP $DDB0
LDA a: ram_0084
STA a: ram_0009
LDA a: ram_005E
CLC
ADC #$01
CMP a: ram_0009
BNE :+ ;!$DD9B
:
LDA #$0C
STA a: ram_0009
LDA a: ram_005F
CMP a: ram_0009
BMI :+ ;! $DD9B
:
JMP $DDB0
INC a: ram_0083
LDA a: ram_007E
STA a: ram_0009
LDA a: ram_0083
CMP a: ram_0009
BPL :+ ;! $DDAF
:
JMP $DD32
RTS
JSR $C3EB
LDA #$00
STA a: ram_0086
JSR $DB8E
JSR $E679
JSR $DE0D
INC a: ram_0086
LDA #$15
STA a: ram_0009
LDA a: ram_0086
CMP a: ram_0009
BEQ :+ ;! $DDD4
:
JMP $DDB8
JSR $C3EB
RTS
LDX a: ram_007F
LDA #$01
STA a: ram_0072,X
LDX #$05
LDA #$08
STA a: ram_00A4,X
LDX #$05
LDA a: ram_0082
ASL
ASL
ASL
ASL
SEC
SBC #$08
STA a: ram_009E,X
LDX #$05
LDA a: ram_0081
STA a: ram_0092,X
LDX #$05
LDA #$00
STA a: ram_0098,X
LDX #$05
LDA #$01
STA a: ram_00AA,X
RTS
LDA #$00
STA a: ram_000E
LDA #$00
STA a: ram_0087
INC a: ram_0087
LDA #$40
STA a: ram_0009
LDA a: ram_0087
CMP a: ram_0009
BEQ :+ ;! $DE2A
:
JMP $DE17
INC a: ram_000E
LDA #$11
STA a: ram_0009
LDA a: ram_000E
CMP a: ram_0009
BEQ :+ ;! $DE3D
:
JMP $DE12
RTS
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
UNDEFINED
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
.byte $FF   ; 
