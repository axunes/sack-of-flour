- - - - - - 0x01C010 07:C000: 20        .byte $20   ; 
- - - - - - 0x01C011 07:C001: 5A        .byte $5A   ; 
- - - - - - 0x01C012 07:C002: C3        .byte $C3   ; 
- - - - - - 0x01C013 07:C003: 20        .byte $20   ; 
- - - - - - 0x01C014 07:C004: 36        .byte $36   ; 
- - - - - - 0x01C015 07:C005: C2        .byte $C2   ; 
- - - - - - 0x01C016 07:C006: 20        .byte $20   ; 
- - - - - - 0x01C017 07:C007: 8E        .byte $8E   ; 
- - - - - - 0x01C018 07:C008: DB        .byte $DB   ; 
C D 4 - - - 0x01C019 07:C009: 20 8E DB  JSR $DB8E
C - - - - - 0x01C01C 07:C00C: 20 DD F5  JSR $F5DD
C - - - - - 0x01C01F 07:C00F: 20 DA DB  JSR $DBDA
C - - - - - 0x01C022 07:C012: A9 30     LDA #$30
C - - - - - 0x01C024 07:C014: 8D 00 20  STA $2000
C - - - - - 0x01C027 07:C017: A9 04     LDA #$04
C - - - - - 0x01C029 07:C019: 8D 01 20  STA $2001
C - - - - - 0x01C02C 07:C01C: 20 26 DC  JSR $DC26
C - - - - - 0x01C02F 07:C01F: 20 C2 C1  JSR $C1C2
C - - - - - 0x01C032 07:C022: 20 8E DB  JSR $DB8E
C - - - - - 0x01C035 07:C025: A9 30     LDA #$30
C - - - - - 0x01C037 07:C027: 8D 00 20  STA $2000
C - - - - - 0x01C03A 07:C02A: A9 1C     LDA #$1C
C - - - - - 0x01C03C 07:C02C: 8D 01 20  STA $2001
C - - - - - 0x01C03F 07:C02F: A9 00     LDA #$00
C - - - - - 0x01C041 07:C031: 8D 06 00  STA a: ram_0006
C - - - - - 0x01C044 07:C034: 20 6A C2  JSR $C26A
C - - - - - 0x01C047 07:C037: A9 00     LDA #$00
C - - - - - 0x01C049 07:C039: 8D 07 00  STA a: ram_0007
C - - - - - 0x01C04C 07:C03C: 20 EB E5  JSR $E5EB
C - - - - - 0x01C04F 07:C03F: A9 03     LDA #$03
C - - - - - 0x01C051 07:C041: 8D 08 00  STA a: ram_0008
C - - - - - 0x01C054 07:C044: 20 71 DC  JSR $DC71
C - - - - - 0x01C057 07:C047: 20 BB CA  JSR $CABB
C - - - - - 0x01C05A 07:C04A: 20 39 D5  JSR $D539
C - - - - - 0x01C05D 07:C04D: 20 EC C7  JSR $C7EC
C - - - - - 0x01C060 07:C050: 20 BB D2  JSR $D2BB
C - - - - - 0x01C063 07:C053: 20 ED E8  JSR $E8ED
C - - - - - 0x01C066 07:C056: 20 4E C2  JSR $C24E
C - - - - - 0x01C069 07:C059: A9 00     LDA #$00
C - - - - - 0x01C06B 07:C05B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C06E 07:C05E: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01C071 07:C061: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C074 07:C064: F0 03     BEQ $C069
C - - - - - 0x01C076 07:C066: 20 79 E6  JSR $E679
C - - - - - 0x01C079 07:C069: 20 7F C1  JSR $C17F
C - - - - - 0x01C07C 07:C06C: 20 16 E8  JSR $E816
C - - - - - 0x01C07F 07:C06F: 20 8E DB  JSR $DB8E
C - - - - - 0x01C082 07:C072: 20 61 DB  JSR $DB61
C - - - - - 0x01C085 07:C075: A9 00     LDA #$00
C - - - - - 0x01C087 07:C077: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C08A 07:C07A: AD 0B 00  LDA a: ram_000B
C - - - - - 0x01C08D 07:C07D: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C090 07:C080: F0 03     BEQ $C085
C - - - - - 0x01C092 07:C082: 4C E9 C0  JMP $C0E9
C - - - - - 0x01C095 07:C085: A9 FC     LDA #$FC
C - - - - - 0x01C097 07:C087: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C09A 07:C08A: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01C09D 07:C08D: 29 FC     AND #$FC
C - - - - - 0x01C09F 07:C08F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C0A2 07:C092: D0 16     BNE $C0AA
C - - - - - 0x01C0A4 07:C094: 20 E2 C9  JSR $C9E2
C - - - - - 0x01C0A7 07:C097: A9 02     LDA #$02
C - - - - - 0x01C0A9 07:C099: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C0AC 07:C09C: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01C0AF 07:C09F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C0B2 07:C0A2: D0 03     BNE $C0A7
C - - - - - 0x01C0B4 07:C0A4: 4C 4A C0  JMP $C04A
C - - - - - 0x01C0B7 07:C0A7: 4C CD C0  JMP $C0CD
C - - - - - 0x01C0BA 07:C0AA: A9 00     LDA #$00
C - - - - - 0x01C0BC 07:C0AC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C0BF 07:C0AF: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01C0C2 07:C0B2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C0C5 07:C0B5: D0 13     BNE $C0CA
C - - - - - 0x01C0C7 07:C0B7: A9 00     LDA #$00
C - - - - - 0x01C0C9 07:C0B9: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C0CC 07:C0BC: AD 0D 00  LDA a: ram_000D
C - - - - - 0x01C0CF 07:C0BF: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C0D2 07:C0C2: D0 06     BNE $C0CA
C - - - - - 0x01C0D4 07:C0C4: 20 B7 CA  JSR $CAB7
C - - - - - 0x01C0D7 07:C0C7: 4C CD C0  JMP $C0CD
C - - - - - 0x01C0DA 07:C0CA: 4C 4A C0  JMP $C04A
C - - - - - 0x01C0DD 07:C0CD: A9 00     LDA #$00
C - - - - - 0x01C0DF 07:C0CF: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C0E2 07:C0D2: AD 08 00  LDA a: ram_0008
C - - - - - 0x01C0E5 07:C0D5: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C0E8 07:C0D8: D0 09     BNE $C0E3
C - - - - - 0x01C0EA 07:C0DA: 20 95 DA  JSR $DA95
C - - - - - 0x01C0ED 07:C0DD: 20 EB C3  JSR $C3EB
C - - - - - 0x01C0F0 07:C0E0: 4C 00 C0  JMP $C000
C - - - - - 0x01C0F3 07:C0E3: 20 BB CA  JSR $CABB
C - - - - - 0x01C0F6 07:C0E6: 4C 4A C0  JMP $C04A
C - - - - - 0x01C0F9 07:C0E9: 20 F4 E7  JSR $E7F4
C - - - - - 0x01C0FC 07:C0EC: 4C EF C0  JMP $C0EF
C - - - - - 0x01C0FF 07:C0EF: 20 41 C2  JSR $C241
C - - - - - 0x01C102 07:C0F2: A9 1E     LDA #$1E
C - - - - - 0x01C104 07:C0F4: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C107 07:C0F7: 20 8E DB  JSR $DB8E
C - - - - - 0x01C10A 07:C0FA: 20 ED D5  JSR $D5ED
C - - - - - 0x01C10D 07:C0FD: CE 0E 00  DEC a: ram_000E
C - - - - - 0x01C110 07:C100: A9 00     LDA #$00
C - - - - - 0x01C112 07:C102: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C115 07:C105: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01C118 07:C108: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C11B 07:C10B: F0 03     BEQ $C110
C - - - - - 0x01C11D 07:C10D: 4C F7 C0  JMP $C0F7
C - - - - - 0x01C120 07:C110: 20 C3 D5  JSR $D5C3
C - - - - - 0x01C123 07:C113: A9 01     LDA #$01
C - - - - - 0x01C125 07:C115: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01C128 07:C118: 20 8E DB  JSR $DB8E
C - - - - - 0x01C12B 07:C11B: 20 BB D2  JSR $D2BB
C - - - - - 0x01C12E 07:C11E: 20 61 DB  JSR $DB61
C - - - - - 0x01C131 07:C121: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01C134 07:C124: 38        SEC
C - - - - - 0x01C135 07:C125: E9 03     SBC #$03
C - - - - - 0x01C137 07:C127: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01C13A 07:C12A: A9 00     LDA #$00
C - - - - - 0x01C13C 07:C12C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C13F 07:C12F: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01C142 07:C132: 29 F8     AND #$F8
C - - - - - 0x01C144 07:C134: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C147 07:C137: F0 03     BEQ $C13C
C - - - - - 0x01C149 07:C139: 4C 18 C1  JMP $C118
C - - - - - 0x01C14C 07:C13C: A9 1E     LDA #$1E
C - - - - - 0x01C14E 07:C13E: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C151 07:C141: 20 8E DB  JSR $DB8E
C - - - - - 0x01C154 07:C144: 20 ED D5  JSR $D5ED
C - - - - - 0x01C157 07:C147: CE 0E 00  DEC a: ram_000E
C - - - - - 0x01C15A 07:C14A: A9 00     LDA #$00
C - - - - - 0x01C15C 07:C14C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C15F 07:C14F: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01C162 07:C152: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C165 07:C155: F0 03     BEQ $C15A
C - - - - - 0x01C167 07:C157: 4C 41 C1  JMP $C141
C - - - - - 0x01C16A 07:C15A: 4C 5D C1  JMP $C15D
C - - - - - 0x01C16D 07:C15D: EE 06 00  INC a: ram_0006
C - - - - - 0x01C170 07:C160: A9 05     LDA #$05
C - - - - - 0x01C172 07:C162: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C175 07:C165: AD 06 00  LDA a: ram_0006
C - - - - - 0x01C178 07:C168: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C17B 07:C16B: D0 03     BNE $C170
C - - - - - 0x01C17D 07:C16D: 4C B7 D8  JMP $D8B7
C - - - - - 0x01C180 07:C170: 20 6A C2  JSR $C26A
C - - - - - 0x01C183 07:C173: 20 C2 C1  JSR $C1C2
- - - - - - 0x01C186 07:C176: 20        .byte $20   ; 
- - - - - - 0x01C187 07:C177: 71        .byte $71   ; 
- - - - - - 0x01C188 07:C178: DC        .byte $DC   ; 
C - - - - - 0x01C189 07:C179: 20 BB CA  JSR $CABB
C - - - - - 0x01C18C 07:C17C: 4C 4A C0  JMP $C04A
C - - - - - 0x01C18F 07:C17F: AD 04 00  LDA a: ram_0004
C - - - - - 0x01C192 07:C182: 48        PHA
C - - - - - 0x01C193 07:C183: A9 0D     LDA #$0D
C - - - - - 0x01C195 07:C185: 48        PHA
C - - - - - 0x01C196 07:C186: AD 10 00  LDA a: ram_0010
C - - - - - 0x01C199 07:C189: 18        CLC
C - - - - - 0x01C19A 07:C18A: 6D 86 00  ADC a: ram_0086
C - - - - - 0x01C19D 07:C18D: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C1A0 07:C190: 68        PLA
C - - - - - 0x01C1A1 07:C191: 18        CLC
C - - - - - 0x01C1A2 07:C192: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01C1A5 07:C195: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C1A8 07:C198: 68        PLA
C - - - - - 0x01C1A9 07:C199: 18        CLC
C - - - - - 0x01C1AA 07:C19A: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01C1AD 07:C19D: 8D 04 00  STA a: ram_0004
C - - - - - 0x01C1B0 07:C1A0: AD 05 00  LDA a: ram_0005
C - - - - - 0x01C1B3 07:C1A3: 48        PHA
C - - - - - 0x01C1B4 07:C1A4: A9 11     LDA #$11
C - - - - - 0x01C1B6 07:C1A6: 48        PHA
C - - - - - 0x01C1B7 07:C1A7: AD 12 00  LDA a: ram_0012
C - - - - - 0x01C1BA 07:C1AA: 18        CLC
C - - - - - 0x01C1BB 07:C1AB: 6D 5B 00  ADC a: ram_005B
C - - - - - 0x01C1BE 07:C1AE: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C1C1 07:C1B1: 68        PLA
C - - - - - 0x01C1C2 07:C1B2: 18        CLC
C - - - - - 0x01C1C3 07:C1B3: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01C1C6 07:C1B6: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C1C9 07:C1B9: 68        PLA
C - - - - - 0x01C1CA 07:C1BA: 18        CLC
C - - - - - 0x01C1CB 07:C1BB: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01C1CE 07:C1BE: 8D 05 00  STA a: ram_0005
C - - - - - 0x01C1D1 07:C1C1: 60        RTS
C - - - - - 0x01C1D2 07:C1C2: A9 00     LDA #$00
C - - - - - 0x01C1D4 07:C1C4: 8D 13 00  STA a: ram_0013
C - - - - - 0x01C1D7 07:C1C7: A9 00     LDA #$00
C - - - - - 0x01C1D9 07:C1C9: 8D 14 00  STA a: ram_0014
C - - - - - 0x01C1DC 07:C1CC: A9 00     LDA #$00
C - - - - - 0x01C1DE 07:C1CE: 8D 15 00  STA a: ram_0015
C - - - - - 0x01C1E1 07:C1D1: A9 00     LDA #$00
C - - - - - 0x01C1E3 07:C1D3: 8D 16 00  STA a: ram_0016
C - - - - - 0x01C1E6 07:C1D6: A9 00     LDA #$00
C - - - - - 0x01C1E8 07:C1D8: 8D 17 00  STA a: ram_0017
C - - - - - 0x01C1EB 07:C1DB: A9 00     LDA #$00
C - - - - - 0x01C1ED 07:C1DD: 8D 18 00  STA a: ram_0018
C - - - - - 0x01C1F0 07:C1E0: A9 00     LDA #$00
C - - - - - 0x01C1F2 07:C1E2: 8D 19 00  STA a: ram_0019
C - - - - - 0x01C1F5 07:C1E5: A9 00     LDA #$00
C - - - - - 0x01C1F7 07:C1E7: 8D 1A 00  STA a: ram_001A
C - - - - - 0x01C1FA 07:C1EA: A9 00     LDA #$00
C - - - - - 0x01C1FC 07:C1EC: 8D 1B 00  STA a: ram_001B
C - - - - - 0x01C1FF 07:C1EF: A9 01     LDA #$01
C - - - - - 0x01C201 07:C1F1: 8D 1C 00  STA a: ram_001C
C - - - - - 0x01C204 07:C1F4: A9 00     LDA #$00
C - - - - - 0x01C206 07:C1F6: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C209 07:C1F9: A9 00     LDA #$00
C - - - - - 0x01C20B 07:C1FB: 8D 1D 00  STA a: ram_001D
C - - - - - 0x01C20E 07:C1FE: A9 00     LDA #$00
C - - - - - 0x01C210 07:C200: 8D 1E 00  STA a: ram_001E
C - - - - - 0x01C213 07:C203: A9 00     LDA #$00
C - - - - - 0x01C215 07:C205: 8D 1F 00  STA a: ram_001F
C - - - - - 0x01C218 07:C208: A9 00     LDA #$00
C - - - - - 0x01C21A 07:C20A: 8D 20 00  STA a: ram_0020
C - - - - - 0x01C21D 07:C20D: A9 00     LDA #$00
C - - - - - 0x01C21F 07:C20F: 8D 21 00  STA a: ram_0021
C - - - - - 0x01C222 07:C212: A9 10     LDA #$10
C - - - - - 0x01C224 07:C214: 8D 22 00  STA a: ram_0022
C - - - - - 0x01C227 07:C217: A9 00     LDA #$00
C - - - - - 0x01C229 07:C219: 8D 0B 00  STA a: ram_000B
C - - - - - 0x01C22C 07:C21C: A9 00     LDA #$00
C - - - - - 0x01C22E 07:C21E: 8D 23 00  STA a: ram_0023
C - - - - - 0x01C231 07:C221: A9 20     LDA #$20
C - - - - - 0x01C233 07:C223: 8D 24 00  STA a: ram_0024
C - - - - - 0x01C236 07:C226: A9 00     LDA #$00
C - - - - - 0x01C238 07:C228: 8D 25 00  STA a: ram_0025
C - - - - - 0x01C23B 07:C22B: A9 00     LDA #$00
C - - - - - 0x01C23D 07:C22D: 8D 26 00  STA a: ram_0026
C - - - - - 0x01C240 07:C230: A9 00     LDA #$00
C - - - - - 0x01C242 07:C232: 8D 27 00  STA a: ram_0027
C - - - - - 0x01C245 07:C235: 60        RTS
C - - - - - 0x01C246 07:C236: A9 00     LDA #$00
C - - - - - 0x01C248 07:C238: 8D 15 40  STA $4015
C - - - - - 0x01C24B 07:C23B: A9 1F     LDA #$1F
C - - - - - 0x01C24D 07:C23D: 8D 15 40  STA $4015
C - - - - - 0x01C250 07:C240: 60        RTS
C - - - - - 0x01C251 07:C241: A2 00     LDX #$00
C - - - - - 0x01C253 07:C243: A9 00     LDA #$00
C - - - - - 0x01C255 07:C245: 9D 00 40  STA $4000,X
C - - - - - 0x01C258 07:C248: E8        INX
C - - - - - 0x01C259 07:C249: E0 10     CPX #$10
C - - - - - 0x01C25B 07:C24B: D0 F8     BNE $C245
C - - - - - 0x01C25D 07:C24D: 60        RTS
C - - - - - 0x01C25E 07:C24E: A9 0F     LDA #$0F
C - - - - - 0x01C260 07:C250: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C263 07:C253: AD 22 00  LDA a: ram_0022
C - - - - - 0x01C266 07:C256: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C269 07:C259: 10 01     BPL $C25C
C - - - - - 0x01C26B 07:C25B: 60        RTS
C - - - - - 0x01C26C 07:C25C: AE 22 00  LDX a: ram_0022
C - - - - - 0x01C26F 07:C25F: A9 F5     LDA #$F5
C - - - - - 0x01C271 07:C261: 9D 00 03  STA ram_0300,X
C - - - - - 0x01C274 07:C264: EE 22 00  INC a: ram_0022
C - - - - - 0x01C277 07:C267: 4C 4E C2  JMP $C24E
C - - - - - 0x01C27A 07:C26A: AD 06 00  LDA a: ram_0006
C - - - - - 0x01C27D 07:C26D: 0A        ASL
C - - - - - 0x01C27E 07:C26E: 8D 28 00  STA a: ram_0028
C - - - - - 0x01C281 07:C271: A9 06     LDA #$06
C - - - - - 0x01C283 07:C273: 8D 00 80  STA $8000
C - - - - - 0x01C286 07:C276: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C289 07:C279: 8D 01 80  STA $8001
C - - - - - 0x01C28C 07:C27C: A9 07     LDA #$07
C - - - - - 0x01C28E 07:C27E: 8D 00 80  STA $8000
C - - - - - 0x01C291 07:C281: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C294 07:C284: 18        CLC
C - - - - - 0x01C295 07:C285: 69 01     ADC #$01
C - - - - - 0x01C297 07:C287: 8D 01 80  STA $8001
C - - - - - 0x01C29A 07:C28A: 60        RTS
C - - - - - 0x01C29B 07:C28B: A9 00     LDA #$00
C - - - - - 0x01C29D 07:C28D: 8D 00 80  STA $8000
C - - - - - 0x01C2A0 07:C290: A9 08     LDA #$08
C - - - - - 0x01C2A2 07:C292: 8D 01 80  STA $8001
C - - - - - 0x01C2A5 07:C295: A9 01     LDA #$01
C - - - - - 0x01C2A7 07:C297: 8D 00 80  STA $8000
C - - - - - 0x01C2AA 07:C29A: A9 0A     LDA #$0A
C - - - - - 0x01C2AC 07:C29C: 8D 01 80  STA $8001
C - - - - - 0x01C2AF 07:C29F: AD 06 00  LDA a: ram_0006
C - - - - - 0x01C2B2 07:C2A2: 0A        ASL
C - - - - - 0x01C2B3 07:C2A3: 0A        ASL
C - - - - - 0x01C2B4 07:C2A4: 18        CLC
C - - - - - 0x01C2B5 07:C2A5: 69 0C     ADC #$0C
C - - - - - 0x01C2B7 07:C2A7: 8D 28 00  STA a: ram_0028
C - - - - - 0x01C2BA 07:C2AA: A9 02     LDA #$02
C - - - - - 0x01C2BC 07:C2AC: 8D 00 80  STA $8000
C - - - - - 0x01C2BF 07:C2AF: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C2C2 07:C2B2: 8D 01 80  STA $8001
C - - - - - 0x01C2C5 07:C2B5: A9 03     LDA #$03
C - - - - - 0x01C2C7 07:C2B7: 8D 00 80  STA $8000
C - - - - - 0x01C2CA 07:C2BA: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C2CD 07:C2BD: 18        CLC
C - - - - - 0x01C2CE 07:C2BE: 69 01     ADC #$01
C - - - - - 0x01C2D0 07:C2C0: 8D 01 80  STA $8001
C - - - - - 0x01C2D3 07:C2C3: A9 04     LDA #$04
C - - - - - 0x01C2D5 07:C2C5: 8D 00 80  STA $8000
C - - - - - 0x01C2D8 07:C2C8: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C2DB 07:C2CB: 18        CLC
C - - - - - 0x01C2DC 07:C2CC: 69 02     ADC #$02
C - - - - - 0x01C2DE 07:C2CE: 8D 01 80  STA $8001
C - - - - - 0x01C2E1 07:C2D1: A9 05     LDA #$05
C - - - - - 0x01C2E3 07:C2D3: 8D 00 80  STA $8000
C - - - - - 0x01C2E6 07:C2D6: AD 28 00  LDA a: ram_0028
C - - - - - 0x01C2E9 07:C2D9: 18        CLC
C - - - - - 0x01C2EA 07:C2DA: 69 03     ADC #$03
C - - - - - 0x01C2EC 07:C2DC: 8D 01 80  STA $8001
C - - - - - 0x01C2EF 07:C2DF: 60        RTS
C - - - - - 0x01C2F0 07:C2E0: A9 00     LDA #$00
C - - - - - 0x01C2F2 07:C2E2: 8D 00 80  STA $8000
C - - - - - 0x01C2F5 07:C2E5: A9 04     LDA #$04
C - - - - - 0x01C2F7 07:C2E7: 8D 01 80  STA $8001
C - - - - - 0x01C2FA 07:C2EA: A9 01     LDA #$01
C - - - - - 0x01C2FC 07:C2EC: 8D 00 80  STA $8000
C - - - - - 0x01C2FF 07:C2EF: A9 06     LDA #$06
C - - - - - 0x01C301 07:C2F1: 8D 01 80  STA $8001
C - - - - - 0x01C304 07:C2F4: A9 02     LDA #$02
C - - - - - 0x01C306 07:C2F6: 8D 00 80  STA $8000
C - - - - - 0x01C309 07:C2F9: A9 04     LDA #$04
C - - - - - 0x01C30B 07:C2FB: 8D 01 80  STA $8001
C - - - - - 0x01C30E 07:C2FE: A9 03     LDA #$03
C - - - - - 0x01C310 07:C300: 8D 00 80  STA $8000
C - - - - - 0x01C313 07:C303: A9 05     LDA #$05
C - - - - - 0x01C315 07:C305: 8D 01 80  STA $8001
C - - - - - 0x01C318 07:C308: A9 04     LDA #$04
C - - - - - 0x01C31A 07:C30A: 8D 00 80  STA $8000
C - - - - - 0x01C31D 07:C30D: A9 06     LDA #$06
C - - - - - 0x01C31F 07:C30F: 8D 01 80  STA $8001
C - - - - - 0x01C322 07:C312: A9 05     LDA #$05
C - - - - - 0x01C324 07:C314: 8D 00 80  STA $8000
C - - - - - 0x01C327 07:C317: A9 07     LDA #$07
C - - - - - 0x01C329 07:C319: 8D 01 80  STA $8001
C - - - - - 0x01C32C 07:C31C: 60        RTS
C - - - - - 0x01C32D 07:C31D: A9 00     LDA #$00
C - - - - - 0x01C32F 07:C31F: 8D 00 80  STA $8000
C - - - - - 0x01C332 07:C322: A9 00     LDA #$00
C - - - - - 0x01C334 07:C324: 8D 01 80  STA $8001
C - - - - - 0x01C337 07:C327: A9 01     LDA #$01
C - - - - - 0x01C339 07:C329: 8D 00 80  STA $8000
C - - - - - 0x01C33C 07:C32C: A9 02     LDA #$02
C - - - - - 0x01C33E 07:C32E: 8D 01 80  STA $8001
C - - - - - 0x01C341 07:C331: A9 02     LDA #$02
C - - - - - 0x01C343 07:C333: 8D 00 80  STA $8000
C - - - - - 0x01C346 07:C336: A9 00     LDA #$00
C - - - - - 0x01C348 07:C338: 8D 01 80  STA $8001
C - - - - - 0x01C34B 07:C33B: A9 03     LDA #$03
C - - - - - 0x01C34D 07:C33D: 8D 00 80  STA $8000
C - - - - - 0x01C350 07:C340: A9 01     LDA #$01
C - - - - - 0x01C352 07:C342: 8D 01 80  STA $8001
C - - - - - 0x01C355 07:C345: A9 04     LDA #$04
C - - - - - 0x01C357 07:C347: 8D 00 80  STA $8000
C - - - - - 0x01C35A 07:C34A: A9 02     LDA #$02
C - - - - - 0x01C35C 07:C34C: 8D 01 80  STA $8001
C - - - - - 0x01C35F 07:C34F: A9 05     LDA #$05
C - - - - - 0x01C361 07:C351: 8D 00 80  STA $8000
C - - - - - 0x01C364 07:C354: A9 03     LDA #$03
C - - - - - 0x01C366 07:C356: 8D 01 80  STA $8001
C - - - - - 0x01C369 07:C359: 60        RTS
C - - - - - 0x01C36A 07:C35A: 4C 1D C3  JMP $C31D
C - - - - - 0x01C36D 07:C35D: 60        RTS
C - - - - - 0x01C36E 07:C35E: 20 6B DC  JSR $DC6B
C - - - - - 0x01C371 07:C361: 20 8E DB  JSR $DB8E
C - - - - - 0x01C374 07:C364: 20 C3 DB  JSR $DBC3
C - - - - - 0x01C377 07:C367: 20 26 DC  JSR $DC26
C - - - - - 0x01C37A 07:C36A: 20 8E DB  JSR $DB8E
C - - - - - 0x01C37D 07:C36D: A2 00     LDX #$00
C - - - - - 0x01C37F 07:C36F: A9 F5     LDA #$F5
C - - - - - 0x01C381 07:C371: 9D 2A 00  STA a: ram_002A,X
C - - - - - 0x01C384 07:C374: 9D 32 00  STA a: ram_0032,X
C - - - - - 0x01C387 07:C377: 9D 42 00  STA a: ram_0042,X
C - - - - - 0x01C38A 07:C37A: 9D 4A 00  STA a: ram_004A,X
C - - - - - 0x01C38D 07:C37D: 9D 3A 00  STA a: ram_003A,X
C - - - - - 0x01C390 07:C380: E8        INX
C - - - - - 0x01C391 07:C381: E0 08     CPX #$08
C - - - - - 0x01C393 07:C383: D0 EC     BNE $C371
C - - - - - 0x01C395 07:C385: A9 07     LDA #$07
C - - - - - 0x01C397 07:C387: 8D 52 00  STA a: ram_0052
C - - - - - 0x01C39A 07:C38A: A9 0B     LDA #$0B
C - - - - - 0x01C39C 07:C38C: 8D 29 00  STA a: ram_0029
C - - - - - 0x01C39F 07:C38F: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3A2 07:C392: A9 07     LDA #$07
C - - - - - 0x01C3A4 07:C394: 8D 52 00  STA a: ram_0052
C - - - - - 0x01C3A7 07:C397: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3AA 07:C39A: 20 B4 C4  JSR $C4B4
C - - - - - 0x01C3AD 07:C39D: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3B0 07:C3A0: 20 AA C5  JSR $C5AA
C - - - - - 0x01C3B3 07:C3A3: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3B6 07:C3A6: 20 A0 C6  JSR $C6A0
C - - - - - 0x01C3B9 07:C3A9: CE 52 00  DEC a: ram_0052
C - - - - - 0x01C3BC 07:C3AC: A9 FF     LDA #$FF
C - - - - - 0x01C3BE 07:C3AE: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C3C1 07:C3B1: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C3C4 07:C3B4: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C3C7 07:C3B7: F0 03     BEQ $C3BC
C - - - - - 0x01C3C9 07:C3B9: 4C 97 C3  JMP $C397
C - - - - - 0x01C3CC 07:C3BC: A9 00     LDA #$00
C - - - - - 0x01C3CE 07:C3BE: 8D 52 00  STA a: ram_0052
C - - - - - 0x01C3D1 07:C3C1: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3D4 07:C3C4: 20 06 C7  JSR $C706
C - - - - - 0x01C3D7 07:C3C7: EE 52 00  INC a: ram_0052
C - - - - - 0x01C3DA 07:C3CA: A9 05     LDA #$05
C - - - - - 0x01C3DC 07:C3CC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C3DF 07:C3CF: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C3E2 07:C3D2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C3E5 07:C3D5: F0 03     BEQ $C3DA
C - - - - - 0x01C3E7 07:C3D7: 4C C1 C3  JMP $C3C1
C - - - - - 0x01C3EA 07:C3DA: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3ED 07:C3DD: 20 14 C4  JSR $C414
C - - - - - 0x01C3F0 07:C3E0: A9 00     LDA #$00
C - - - - - 0x01C3F2 07:C3E2: 8D 05 20  STA $2005
C - - - - - 0x01C3F5 07:C3E5: A9 00     LDA #$00
C - - - - - 0x01C3F7 07:C3E7: 8D 05 20  STA $2005
C - - - - - 0x01C3FA 07:C3EA: 60        RTS
C - - - - - 0x01C3FB 07:C3EB: 20 8E DB  JSR $DB8E
C - - - - - 0x01C3FE 07:C3EE: A9 01     LDA #$01
C - - - - - 0x01C400 07:C3F0: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C403 07:C3F3: AD 53 00  LDA a: ram_0053
C - - - - - 0x01C406 07:C3F6: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C409 07:C3F9: D0 04     BNE $C3FF
C - - - - - 0x01C40B 07:C3FB: 20 7D C4  JSR $C47D
C - - - - - 0x01C40E 07:C3FE: 60        RTS
C - - - - - 0x01C40F 07:C3FF: A9 03     LDA #$03
C - - - - - 0x01C411 07:C401: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C414 07:C404: AD 53 00  LDA a: ram_0053
C - - - - - 0x01C417 07:C407: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C41A 07:C40A: D0 04     BNE $C410
C - - - - - 0x01C41C 07:C40C: 20 14 C4  JSR $C414
C - - - - - 0x01C41F 07:C40F: 60        RTS
C - - - - - 0x01C420 07:C410: 20 4B C4  JSR $C44B
C - - - - - 0x01C423 07:C413: 60        RTS
C - - - - - 0x01C424 07:C414: A9 55     LDA #$55
- - - - - - 0x01C426 07:C416: 8D        .byte $8D   ; 
- - - - - - 0x01C427 07:C417: 54        .byte $54   ; 
- - - - - - 0x01C428 07:C418: 00        .byte $00   ; 
C - - - - - 0x01C429 07:C419: A9 00     LDA #$00
C - - - - - 0x01C42B 07:C41B: 8D 53 00  STA a: ram_0053
C - - - - - 0x01C42E 07:C41E: A9 3F     LDA #$3F
C - - - - - 0x01C430 07:C420: 8D 06 20  STA $2006
C - - - - - 0x01C433 07:C423: A9 00     LDA #$00
C - - - - - 0x01C435 07:C425: 8D 06 20  STA $2006
C - - - - - 0x01C438 07:C428: A9 00     LDA #$00
C - - - - - 0x01C43A 07:C42A: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C43D 07:C42D: AE 0E 00  LDX a: ram_000E
C - - - - - 0x01C440 07:C430: BD 04 80  LDA $8004,X
C - - - - - 0x01C443 07:C433: 8D 07 20  STA $2007
C - - - - - 0x01C446 07:C436: EE 0E 00  INC a: ram_000E
C - - - - - 0x01C449 07:C439: A9 20     LDA #$20
C - - - - - 0x01C44B 07:C43B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C44E 07:C43E: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01C451 07:C441: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C454 07:C444: D0 01     BNE $C447
C - - - - - 0x01C456 07:C446: 60        RTS
C - - - - - 0x01C457 07:C447: 4C 2D C4  JMP $C42D
C - - - - - 0x01C45A 07:C44A: 60        RTS
C - - - - - 0x01C45B 07:C44B: A9 01     LDA #$01
C - - - - - 0x01C45D 07:C44D: 18        CLC
C - - - - - 0x01C45E 07:C44E: 6D 53 00  ADC a: ram_0053
C - - - - - 0x01C461 07:C451: 8D 53 00  STA a: ram_0053
C - - - - - 0x01C464 07:C454: A9 3F     LDA #$3F
C - - - - - 0x01C466 07:C456: 8D 06 20  STA $2006
C - - - - - 0x01C469 07:C459: A9 00     LDA #$00
C - - - - - 0x01C46B 07:C45B: 8D 06 20  STA $2006
C - - - - - 0x01C46E 07:C45E: A9 00     LDA #$00
C - - - - - 0x01C470 07:C460: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C473 07:C463: A9 0E     LDA #$0E
C - - - - - 0x01C475 07:C465: 8D 07 20  STA $2007
C - - - - - 0x01C478 07:C468: EE 0E 00  INC a: ram_000E
C - - - - - 0x01C47B 07:C46B: A9 20     LDA #$20
C - - - - - 0x01C47D 07:C46D: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C480 07:C470: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01C483 07:C473: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C486 07:C476: D0 01     BNE $C479
C - - - - - 0x01C488 07:C478: 60        RTS
C - - - - - 0x01C489 07:C479: 4C 63 C4  JMP $C463
C - - - - - 0x01C48C 07:C47C: 60        RTS
C - - - - - 0x01C48D 07:C47D: A9 AA     LDA #$AA
C - - - - - 0x01C48F 07:C47F: 8D 54 00  STA a: ram_0054
C - - - - - 0x01C492 07:C482: A9 02     LDA #$02
C - - - - - 0x01C494 07:C484: 8D 53 00  STA a: ram_0053
C - - - - - 0x01C497 07:C487: A9 3F     LDA #$3F
C - - - - - 0x01C499 07:C489: 8D 06 20  STA $2006
C - - - - - 0x01C49C 07:C48C: A9 00     LDA #$00
C - - - - - 0x01C49E 07:C48E: 8D 06 20  STA $2006
C - - - - - 0x01C4A1 07:C491: A9 00     LDA #$00
C - - - - - 0x01C4A3 07:C493: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01C4A6 07:C496: AE 0E 00  LDX a: ram_000E
C - - - - - 0x01C4A9 07:C499: BD 24 80  LDA $8024,X
C - - - - - 0x01C4AC 07:C49C: 8D 07 20  STA $2007
C - - - - - 0x01C4AF 07:C49F: EE 0E 00  INC a: ram_000E
C - - - - - 0x01C4B2 07:C4A2: A9 20     LDA #$20
C - - - - - 0x01C4B4 07:C4A4: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C4B7 07:C4A7: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01C4BA 07:C4AA: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C4BD 07:C4AD: D0 01     BNE $C4B0
C - - - - - 0x01C4BF 07:C4AF: 60        RTS
C - - - - - 0x01C4C0 07:C4B0: 4C 96 C4  JMP $C496
C - - - - - 0x01C4C3 07:C4B3: 60        RTS
C - - - - - 0x01C4C4 07:C4B4: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C4C7 07:C4B7: 29 07     AND #$07
C - - - - - 0x01C4C9 07:C4B9: 8D 55 00  STA a: ram_0055
- - - - - - 0x01C4CC 07:C4BC: AE        .byte $AE   ; 
C - - - - - 0x01C4CD 07:C4BD: 55 00     EOR ram_0000,X
C - - - - - 0x01C4CF 07:C4BF: BD 2A 00  LDA a: ram_002A,X
C - - - - - 0x01C4D2 07:C4C2: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C4D5 07:C4C5: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C4D8 07:C4C8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C4DB 07:C4CB: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C4DE 07:C4CE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C4E1 07:C4D1: D0 01     BNE $C4D4
C - - - - - 0x01C4E3 07:C4D3: 60        RTS
C - - - - - 0x01C4E4 07:C4D4: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C4E7 07:C4D7: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C4EA 07:C4DA: 9D 2A 00  STA a: ram_002A,X
C - - - - - 0x01C4ED 07:C4DD: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C4F0 07:C4E0: 0A        ASL
C - - - - - 0x01C4F1 07:C4E1: AA        TAX
C - - - - - 0x01C4F2 07:C4E2: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C4F5 07:C4E5: 8D 00 00  STA a: ram_0000
C - - - - - 0x01C4F8 07:C4E8: E8        INX
C - - - - - 0x01C4F9 07:C4E9: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C4FC 07:C4EC: 8D 01 00  STA a: ram_0001
C - - - - - 0x01C4FF 07:C4EF: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C502 07:C4F2: BD 0A E1  LDA $E10A,X
C - - - - - 0x01C505 07:C4F5: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C508 07:C4F8: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C50B 07:C4FB: BD 12 E1  LDA $E112,X
C - - - - - 0x01C50E 07:C4FE: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C511 07:C501: A0 00     LDY #$00
C - - - - - 0x01C513 07:C503: A2 00     LDX #$00
C - - - - - 0x01C515 07:C505: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C518 07:C508: 8D 06 20  STA $2006
C - - - - - 0x01C51B 07:C50B: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C51E 07:C50E: 8D 06 20  STA $2006
C - - - - - 0x01C521 07:C511: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C523 07:C513: 8D 07 20  STA $2007
C - - - - - 0x01C526 07:C516: 69 01     ADC #$01
C - - - - - 0x01C528 07:C518: 8D 07 20  STA $2007
C - - - - - 0x01C52B 07:C51B: C8        INY
C - - - - - 0x01C52C 07:C51C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C52E 07:C51E: 8D 07 20  STA $2007
C - - - - - 0x01C531 07:C521: 69 01     ADC #$01
C - - - - - 0x01C533 07:C523: 8D 07 20  STA $2007
C - - - - - 0x01C536 07:C526: C8        INY
C - - - - - 0x01C537 07:C527: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C539 07:C529: 8D 07 20  STA $2007
C - - - - - 0x01C53C 07:C52C: 69 01     ADC #$01
C - - - - - 0x01C53E 07:C52E: 8D 07 20  STA $2007
C - - - - - 0x01C541 07:C531: C8        INY
C - - - - - 0x01C542 07:C532: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C544 07:C534: 8D 07 20  STA $2007
C - - - - - 0x01C547 07:C537: 69 01     ADC #$01
C - - - - - 0x01C549 07:C539: 8D 07 20  STA $2007
C - - - - - 0x01C54C 07:C53C: 88        DEY
C - - - - - 0x01C54D 07:C53D: 88        DEY
C - - - - - 0x01C54E 07:C53E: 88        DEY
C - - - - - 0x01C54F 07:C53F: 18        CLC
C - - - - - 0x01C550 07:C540: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C553 07:C543: 69 20     ADC #$20
C - - - - - 0x01C555 07:C545: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C558 07:C548: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C55B 07:C54B: 69 00     ADC #$00
C - - - - - 0x01C55D 07:C54D: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C560 07:C550: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C563 07:C553: 8D 06 20  STA $2006
C - - - - - 0x01C566 07:C556: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C569 07:C559: 8D 06 20  STA $2006
C - - - - - 0x01C56C 07:C55C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C56E 07:C55E: 69 10     ADC #$10
C - - - - - 0x01C570 07:C560: 8D 07 20  STA $2007
C - - - - - 0x01C573 07:C563: 69 01     ADC #$01
C - - - - - 0x01C575 07:C565: 8D 07 20  STA $2007
C - - - - - 0x01C578 07:C568: C8        INY
C - - - - - 0x01C579 07:C569: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C57B 07:C56B: 69 10     ADC #$10
C - - - - - 0x01C57D 07:C56D: 8D 07 20  STA $2007
C - - - - - 0x01C580 07:C570: 69 01     ADC #$01
C - - - - - 0x01C582 07:C572: 8D 07 20  STA $2007
C - - - - - 0x01C585 07:C575: C8        INY
C - - - - - 0x01C586 07:C576: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C588 07:C578: 69 10     ADC #$10
C - - - - - 0x01C58A 07:C57A: 8D 07 20  STA $2007
C - - - - - 0x01C58D 07:C57D: 69 01     ADC #$01
C - - - - - 0x01C58F 07:C57F: 8D 07 20  STA $2007
C - - - - - 0x01C592 07:C582: C8        INY
C - - - - - 0x01C593 07:C583: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C595 07:C585: 69 10     ADC #$10
C - - - - - 0x01C597 07:C587: 8D 07 20  STA $2007
C - - - - - 0x01C59A 07:C58A: 69 01     ADC #$01
C - - - - - 0x01C59C 07:C58C: 8D 07 20  STA $2007
C - - - - - 0x01C59F 07:C58F: C8        INY
C - - - - - 0x01C5A0 07:C590: 18        CLC
C - - - - - 0x01C5A1 07:C591: C0 20     CPY #$20
C - - - - - 0x01C5A3 07:C593: F0 14     BEQ $C5A9
C - - - - - 0x01C5A5 07:C595: 18        CLC
C - - - - - 0x01C5A6 07:C596: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C5A9 07:C599: 69 20     ADC #$20
C - - - - - 0x01C5AB 07:C59B: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C5AE 07:C59E: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C5B1 07:C5A1: 69 00     ADC #$00
C - - - - - 0x01C5B3 07:C5A3: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C5B6 07:C5A6: 4C 05 C5  JMP $C505
C - - - - - 0x01C5B9 07:C5A9: 60        RTS
C - - - - - 0x01C5BA 07:C5AA: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C5BD 07:C5AD: 29 07     AND #$07
C - - - - - 0x01C5BF 07:C5AF: 8D 55 00  STA a: ram_0055
C - - - - - 0x01C5C2 07:C5B2: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C5C5 07:C5B5: BD 32 00  LDA a: ram_0032,X
C - - - - - 0x01C5C8 07:C5B8: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C5CB 07:C5BB: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C5CE 07:C5BE: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C5D1 07:C5C1: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C5D4 07:C5C4: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C5D7 07:C5C7: D0 01     BNE $C5CA
C - - - - - 0x01C5D9 07:C5C9: 60        RTS
C - - - - - 0x01C5DA 07:C5CA: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C5DD 07:C5CD: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C5E0 07:C5D0: 9D 32 00  STA a: ram_0032,X
C - - - - - 0x01C5E3 07:C5D3: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C5E6 07:C5D6: 0A        ASL
C - - - - - 0x01C5E7 07:C5D7: AA        TAX
C - - - - - 0x01C5E8 07:C5D8: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C5EB 07:C5DB: 8D 00 00  STA a: ram_0000
C - - - - - 0x01C5EE 07:C5DE: E8        INX
C - - - - - 0x01C5EF 07:C5DF: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C5F2 07:C5E2: 8D 01 00  STA a: ram_0001
C - - - - - 0x01C5F5 07:C5E5: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C5F8 07:C5E8: BD 1A E1  LDA $E11A,X
C - - - - - 0x01C5FB 07:C5EB: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C5FE 07:C5EE: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C601 07:C5F1: BD 22 E1  LDA $E122,X
C - - - - - 0x01C604 07:C5F4: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C607 07:C5F7: A0 20     LDY #$20
C - - - - - 0x01C609 07:C5F9: A2 00     LDX #$00
C - - - - - 0x01C60B 07:C5FB: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C60E 07:C5FE: 8D 06 20  STA $2006
C - - - - - 0x01C611 07:C601: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C614 07:C604: 8D 06 20  STA $2006
C - - - - - 0x01C617 07:C607: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C619 07:C609: 8D 07 20  STA $2007
C - - - - - 0x01C61C 07:C60C: 69 01     ADC #$01
C - - - - - 0x01C61E 07:C60E: 8D 07 20  STA $2007
C - - - - - 0x01C621 07:C611: C8        INY
C - - - - - 0x01C622 07:C612: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C624 07:C614: 8D 07 20  STA $2007
C - - - - - 0x01C627 07:C617: 69 01     ADC #$01
C - - - - - 0x01C629 07:C619: 8D 07 20  STA $2007
C - - - - - 0x01C62C 07:C61C: C8        INY
C - - - - - 0x01C62D 07:C61D: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C62F 07:C61F: 8D 07 20  STA $2007
C - - - - - 0x01C632 07:C622: 69 01     ADC #$01
C - - - - - 0x01C634 07:C624: 8D 07 20  STA $2007
C - - - - - 0x01C637 07:C627: C8        INY
C - - - - - 0x01C638 07:C628: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C63A 07:C62A: 8D 07 20  STA $2007
C - - - - - 0x01C63D 07:C62D: 69 01     ADC #$01
C - - - - - 0x01C63F 07:C62F: 8D 07 20  STA $2007
C - - - - - 0x01C642 07:C632: 88        DEY
C - - - - - 0x01C643 07:C633: 88        DEY
C - - - - - 0x01C644 07:C634: 88        DEY
C - - - - - 0x01C645 07:C635: 18        CLC
C - - - - - 0x01C646 07:C636: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C649 07:C639: 69 20     ADC #$20
C - - - - - 0x01C64B 07:C63B: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C64E 07:C63E: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C651 07:C641: 69 00     ADC #$00
C - - - - - 0x01C653 07:C643: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C656 07:C646: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C659 07:C649: 8D 06 20  STA $2006
C - - - - - 0x01C65C 07:C64C: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C65F 07:C64F: 8D 06 20  STA $2006
C - - - - - 0x01C662 07:C652: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C664 07:C654: 69 10     ADC #$10
C - - - - - 0x01C666 07:C656: 8D 07 20  STA $2007
C - - - - - 0x01C669 07:C659: 69 01     ADC #$01
C - - - - - 0x01C66B 07:C65B: 8D 07 20  STA $2007
C - - - - - 0x01C66E 07:C65E: C8        INY
C - - - - - 0x01C66F 07:C65F: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C671 07:C661: 69 10     ADC #$10
C - - - - - 0x01C673 07:C663: 8D 07 20  STA $2007
C - - - - - 0x01C676 07:C666: 69 01     ADC #$01
C - - - - - 0x01C678 07:C668: 8D 07 20  STA $2007
C - - - - - 0x01C67B 07:C66B: C8        INY
C - - - - - 0x01C67C 07:C66C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C67E 07:C66E: 69 10     ADC #$10
C - - - - - 0x01C680 07:C670: 8D 07 20  STA $2007
C - - - - - 0x01C683 07:C673: 69 01     ADC #$01
C - - - - - 0x01C685 07:C675: 8D 07 20  STA $2007
C - - - - - 0x01C688 07:C678: C8        INY
C - - - - - 0x01C689 07:C679: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C68B 07:C67B: 69 10     ADC #$10
C - - - - - 0x01C68D 07:C67D: 8D 07 20  STA $2007
C - - - - - 0x01C690 07:C680: 69 01     ADC #$01
C - - - - - 0x01C692 07:C682: 8D 07 20  STA $2007
C - - - - - 0x01C695 07:C685: C8        INY
C - - - - - 0x01C696 07:C686: 18        CLC
C - - - - - 0x01C697 07:C687: C0 3C     CPY #$3C
C - - - - - 0x01C699 07:C689: F0 14     BEQ $C69F
C - - - - - 0x01C69B 07:C68B: 18        CLC
C - - - - - 0x01C69C 07:C68C: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C69F 07:C68F: 69 20     ADC #$20
C - - - - - 0x01C6A1 07:C691: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C6A4 07:C694: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C6A7 07:C697: 69 00     ADC #$00
C - - - - - 0x01C6A9 07:C699: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C6AC 07:C69C: 4C FB C5  JMP $C5FB
C - - - - - 0x01C6AF 07:C69F: 60        RTS
C - - - - - 0x01C6B0 07:C6A0: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C6B3 07:C6A3: 29 07     AND #$07
C - - - - - 0x01C6B5 07:C6A5: 8D 55 00  STA a: ram_0055
C - - - - - 0x01C6B8 07:C6A8: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C6BB 07:C6AB: BD 3A 00  LDA a: ram_003A,X
C - - - - - 0x01C6BE 07:C6AE: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C6C1 07:C6B1: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C6C4 07:C6B4: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C6C7 07:C6B7: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C6CA 07:C6BA: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C6CD 07:C6BD: D0 01     BNE $C6C0
C - - - - - 0x01C6CF 07:C6BF: 60        RTS
C - - - - - 0x01C6D0 07:C6C0: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C6D3 07:C6C3: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C6D6 07:C6C6: 9D 3A 00  STA a: ram_003A,X
C - - - - - 0x01C6D9 07:C6C9: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C6DC 07:C6CC: BD 2A E1  LDA $E12A,X
C - - - - - 0x01C6DF 07:C6CF: 8D 56 00  STA a: ram_0056
C - - - - - 0x01C6E2 07:C6D2: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C6E5 07:C6D5: BD 32 E1  LDA $E132,X
C - - - - - 0x01C6E8 07:C6D8: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C6EB 07:C6DB: A0 3C     LDY #$3C
C - - - - - 0x01C6ED 07:C6DD: AD 56 00  LDA a: ram_0056
C - - - - - 0x01C6F0 07:C6E0: 8D 06 20  STA $2006
C - - - - - 0x01C6F3 07:C6E3: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C6F6 07:C6E6: 8D 06 20  STA $2006
C - - - - - 0x01C6F9 07:C6E9: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C6FB 07:C6EB: 8D 07 20  STA $2007
C - - - - - 0x01C6FE 07:C6EE: C8        INY
C - - - - - 0x01C6FF 07:C6EF: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C701 07:C6F1: 8D 07 20  STA $2007
C - - - - - 0x01C704 07:C6F4: C8        INY
C - - - - - 0x01C705 07:C6F5: C0 4C     CPY #$4C
C - - - - - 0x01C707 07:C6F7: F0 0C     BEQ $C705
C - - - - - 0x01C709 07:C6F9: 18        CLC
C - - - - - 0x01C70A 07:C6FA: AD 57 00  LDA a: ram_0057
C - - - - - 0x01C70D 07:C6FD: 69 08     ADC #$08
C - - - - - 0x01C70F 07:C6FF: 8D 57 00  STA a: ram_0057
C - - - - - 0x01C712 07:C702: 4C DD C6  JMP $C6DD
C - - - - - 0x01C715 07:C705: 60        RTS
C - - - - - 0x01C716 07:C706: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C719 07:C709: 29 07     AND #$07
C - - - - - 0x01C71B 07:C70B: 8D 55 00  STA a: ram_0055
C - - - - - 0x01C71E 07:C70E: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C721 07:C711: BD 42 00  LDA a: ram_0042,X
C - - - - - 0x01C724 07:C714: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C727 07:C717: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C72A 07:C71A: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C72D 07:C71D: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C730 07:C720: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C733 07:C723: D0 01     BNE $C726
C - - - - - 0x01C735 07:C725: 60        RTS
C - - - - - 0x01C736 07:C726: AE 55 00  LDX a: ram_0055
C - - - - - 0x01C739 07:C729: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C73C 07:C72C: 9D 42 00  STA a: ram_0042,X
C - - - - - 0x01C73F 07:C72F: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C742 07:C732: 0A        ASL
C - - - - - 0x01C743 07:C733: AA        TAX
C - - - - - 0x01C744 07:C734: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C747 07:C737: 8D 00 00  STA a: ram_0000
C - - - - - 0x01C74A 07:C73A: E8        INX
C - - - - - 0x01C74B 07:C73B: BD 3A E1  LDA $E13A,X
C - - - - - 0x01C74E 07:C73E: 8D 01 00  STA a: ram_0001
C - - - - - 0x01C751 07:C741: A0 4C     LDY #$4C
C - - - - - 0x01C753 07:C743: 18        CLC
C - - - - - 0x01C754 07:C744: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C757 07:C747: 0A        ASL
C - - - - - 0x01C758 07:C748: 0A        ASL
C - - - - - 0x01C759 07:C749: 0A        ASL
C - - - - - 0x01C75A 07:C74A: 0A        ASL
C - - - - - 0x01C75B 07:C74B: 0A        ASL
C - - - - - 0x01C75C 07:C74C: 8D 26 00  STA a: ram_0026
C - - - - - 0x01C75F 07:C74F: AA        TAX
C - - - - - 0x01C760 07:C750: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C762 07:C752: C8        INY
C - - - - - 0x01C763 07:C753: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C766 07:C756: 29 03     AND #$03
C - - - - - 0x01C768 07:C758: 9D 00 04  STA ram_0400,X
C - - - - - 0x01C76B 07:C75B: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C76E 07:C75E: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C771 07:C761: E8        INX
C - - - - - 0x01C772 07:C762: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C775 07:C765: 29 03     AND #$03
C - - - - - 0x01C777 07:C767: 9D 00 04  STA ram_0400,X
C - - - - - 0x01C77A 07:C76A: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C77D 07:C76D: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C780 07:C770: E8        INX
C - - - - - 0x01C781 07:C771: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C784 07:C774: 29 03     AND #$03
C - - - - - 0x01C786 07:C776: 9D 00 04  STA ram_0400,X
C - - - - - 0x01C789 07:C779: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C78C 07:C77C: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C78F 07:C77F: E8        INX
C - - - - - 0x01C790 07:C780: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C793 07:C783: 29 03     AND #$03
C - - - - - 0x01C795 07:C785: 9D 00 04  STA ram_0400,X
C - - - - - 0x01C798 07:C788: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C79B 07:C78B: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C79E 07:C78E: E8        INX
C - - - - - 0x01C79F 07:C78F: C0 54     CPY #$54
C - - - - - 0x01C7A1 07:C791: D0 BD     BNE $C750
C - - - - - 0x01C7A3 07:C793: A0 54     LDY #$54
C - - - - - 0x01C7A5 07:C795: 18        CLC
C - - - - - 0x01C7A6 07:C796: AD 52 00  LDA a: ram_0052
C - - - - - 0x01C7A9 07:C799: 0A        ASL
C - - - - - 0x01C7AA 07:C79A: 0A        ASL
C - - - - - 0x01C7AB 07:C79B: 0A        ASL
C - - - - - 0x01C7AC 07:C79C: 0A        ASL
C - - - - - 0x01C7AD 07:C79D: 0A        ASL
C - - - - - 0x01C7AE 07:C79E: 8D 26 00  STA a: ram_0026
C - - - - - 0x01C7B1 07:C7A1: AA        TAX
C - - - - - 0x01C7B2 07:C7A2: B1 00     LDA (ram_0000),Y
C - - - - - 0x01C7B4 07:C7A4: C8        INY
C - - - - - 0x01C7B5 07:C7A5: 8D 11 00  STA a: ram_0011
C - - - - - 0x01C7B8 07:C7A8: 29 03     AND #$03
C - - - - - 0x01C7BA 07:C7AA: 9D 00 02  STA ram_0200,X
C - - - - - 0x01C7BD 07:C7AD: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7C0 07:C7B0: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7C3 07:C7B3: E8        INX
C - - - - - 0x01C7C4 07:C7B4: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C7C7 07:C7B7: 29 03     AND #$03
C - - - - - 0x01C7C9 07:C7B9: 9D 00 02  STA ram_0200,X
C - - - - - 0x01C7CC 07:C7BC: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7CF 07:C7BF: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7D2 07:C7C2: E8        INX
C - - - - - 0x01C7D3 07:C7C3: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C7D6 07:C7C6: 29 03     AND #$03
C - - - - - 0x01C7D8 07:C7C8: 9D 00 02  STA ram_0200,X
C - - - - - 0x01C7DB 07:C7CB: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7DE 07:C7CE: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7E1 07:C7D1: E8        INX
C - - - - - 0x01C7E2 07:C7D2: AD 11 00  LDA a: ram_0011
C - - - - - 0x01C7E5 07:C7D5: 29 03     AND #$03
C - - - - - 0x01C7E7 07:C7D7: 9D 00 02  STA ram_0200,X
C - - - - - 0x01C7EA 07:C7DA: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7ED 07:C7DD: 4E 11 00  LSR a: ram_0011
C - - - - - 0x01C7F0 07:C7E0: E8        INX
C - - - - - 0x01C7F1 07:C7E1: C0 5C     CPY #$5C
C - - - - - 0x01C7F3 07:C7E3: D0 BD     BNE $C7A2
C - - - - - 0x01C7F5 07:C7E5: EA        NOP
C - - - - - 0x01C7F6 07:C7E6: EA        NOP
C - - - - - 0x01C7F7 07:C7E7: EA        NOP
C - - - - - 0x01C7F8 07:C7E8: EA        NOP
C - - - - - 0x01C7F9 07:C7E9: EA        NOP
C - - - - - 0x01C7FA 07:C7EA: EA        NOP
C - - - - - 0x01C7FB 07:C7EB: 60        RTS
C - - - - - 0x01C7FC 07:C7EC: A9 00     LDA #$00
C - - - - - 0x01C7FE 07:C7EE: 8D 58 00  STA a: ram_0058
C - - - - - 0x01C801 07:C7F1: A9 00     LDA #$00
C - - - - - 0x01C803 07:C7F3: 8D 59 00  STA a: ram_0059
C - - - - - 0x01C806 07:C7F6: A9 00     LDA #$00
C - - - - - 0x01C808 07:C7F8: 8D 12 00  STA a: ram_0012
C - - - - - 0x01C80B 07:C7FB: A9 00     LDA #$00
C - - - - - 0x01C80D 07:C7FD: 8D 5A 00  STA a: ram_005A
C - - - - - 0x01C810 07:C800: A9 00     LDA #$00
C - - - - - 0x01C812 07:C802: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C815 07:C805: AD 1A 00  LDA a: ram_001A
C - - - - - 0x01C818 07:C808: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C81B 07:C80B: F0 03     BEQ $C810
C - - - - - 0x01C81D 07:C80D: 20 9E C9  JSR $C99E
C - - - - - 0x01C820 07:C810: A9 00     LDA #$00
C - - - - - 0x01C822 07:C812: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C825 07:C815: AD 15 00  LDA a: ram_0015
C - - - - - 0x01C828 07:C818: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C82B 07:C81B: F0 03     BEQ $C820
C - - - - - 0x01C82D 07:C81D: 20 2D DD  JSR $DD2D
C - - - - - 0x01C830 07:C820: A9 00     LDA #$00
C - - - - - 0x01C832 07:C822: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C835 07:C825: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01C838 07:C828: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C83B 07:C82B: D0 23     BNE $C850
C - - - - - 0x01C83D 07:C82D: A9 00     LDA #$00
C - - - - - 0x01C83F 07:C82F: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C842 07:C832: AD 1C 00  LDA a: ram_001C
C - - - - - 0x01C845 07:C835: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C848 07:C838: D0 03     BNE $C83D
C - - - - - 0x01C84A 07:C83A: 20 04 D2  JSR $D204
C - - - - - 0x01C84D 07:C83D: A9 01     LDA #$01
C - - - - - 0x01C84F 07:C83F: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C852 07:C842: AD 1C 00  LDA a: ram_001C
C - - - - - 0x01C855 07:C845: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C858 07:C848: D0 03     BNE $C84D
C - - - - - 0x01C85A 07:C84A: 20 55 D2  JSR $D255
C - - - - - 0x01C85D 07:C84D: 4C 84 C9  JMP $C984
C - - - - - 0x01C860 07:C850: A9 00     LDA #$00
C - - - - - 0x01C862 07:C852: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C865 07:C855: AD 16 00  LDA a: ram_0016
C - - - - - 0x01C868 07:C858: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C86B 07:C85B: F0 05     BEQ $C862
C - - - - - 0x01C86D 07:C85D: A9 01     LDA #$01
C - - - - - 0x01C86F 07:C85F: 8D 12 00  STA a: ram_0012
C - - - - - 0x01C872 07:C862: A9 00     LDA #$00
C - - - - - 0x01C874 07:C864: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C877 07:C867: AD 17 00  LDA a: ram_0017
C - - - - - 0x01C87A 07:C86A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C87D 07:C86D: F0 1D     BEQ $C88C
C - - - - - 0x01C87F 07:C86F: A9 01     LDA #$01
C - - - - - 0x01C881 07:C871: 8D 1C 00  STA a: ram_001C
C - - - - - 0x01C884 07:C874: 20 AA CB  JSR $CBAA
C - - - - - 0x01C887 07:C877: A9 00     LDA #$00
C - - - - - 0x01C889 07:C879: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C88C 07:C87C: AD 14 00  LDA a: ram_0014
C - - - - - 0x01C88F 07:C87F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C892 07:C882: F0 03     BEQ $C887
C - - - - - 0x01C894 07:C884: 20 AA CB  JSR $CBAA
C - - - - - 0x01C897 07:C887: A9 01     LDA #$01
C - - - - - 0x01C899 07:C889: 8D 59 00  STA a: ram_0059
C - - - - - 0x01C89C 07:C88C: A9 00     LDA #$00
C - - - - - 0x01C89E 07:C88E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8A1 07:C891: AD 18 00  LDA a: ram_0018
C - - - - - 0x01C8A4 07:C894: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C8A7 07:C897: F0 1D     BEQ $C8B6
C - - - - - 0x01C8A9 07:C899: A9 00     LDA #$00
C - - - - - 0x01C8AB 07:C89B: 8D 1C 00  STA a: ram_001C
C - - - - - 0x01C8AE 07:C89E: 20 FA CC  JSR $CCFA
C - - - - - 0x01C8B1 07:C8A1: A9 00     LDA #$00
C - - - - - 0x01C8B3 07:C8A3: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8B6 07:C8A6: AD 14 00  LDA a: ram_0014
C - - - - - 0x01C8B9 07:C8A9: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C8BC 07:C8AC: F0 03     BEQ $C8B1
C - - - - - 0x01C8BE 07:C8AE: 20 FA CC  JSR $CCFA
C - - - - - 0x01C8C1 07:C8B1: A9 01     LDA #$01
C - - - - - 0x01C8C3 07:C8B3: 8D 59 00  STA a: ram_0059
C - - - - - 0x01C8C6 07:C8B6: A9 00     LDA #$00
C - - - - - 0x01C8C8 07:C8B8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8CB 07:C8BB: AD 13 00  LDA a: ram_0013
C - - - - - 0x01C8CE 07:C8BE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C8D1 07:C8C1: D0 1A     BNE $C8DD
C - - - - - 0x01C8D3 07:C8C3: A9 00     LDA #$00
C - - - - - 0x01C8D5 07:C8C5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8D8 07:C8C8: AD 5B 00  LDA a: ram_005B
C - - - - - 0x01C8DB 07:C8CB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C8DE 07:C8CE: F0 05     BEQ $C8D5
C - - - - - 0x01C8E0 07:C8D0: A9 0A     LDA #$0A
C - - - - - 0x01C8E2 07:C8D2: 8D 10 00  STA a: ram_0010
C - - - - - 0x01C8E5 07:C8D5: A9 00     LDA #$00
C - - - - - 0x01C8E7 07:C8D7: 8D 5B 00  STA a: ram_005B
C - - - - - 0x01C8EA 07:C8DA: 4C 84 C9  JMP $C984
C - - - - - 0x01C8ED 07:C8DD: A9 00     LDA #$00
C - - - - - 0x01C8EF 07:C8DF: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8F2 07:C8E2: AD 13 00  LDA a: ram_0013
C - - - - - 0x01C8F5 07:C8E5: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C8F8 07:C8E8: F0 22     BEQ $C90C
C - - - - - 0x01C8FA 07:C8EA: A9 01     LDA #$01
C - - - - - 0x01C8FC 07:C8EC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C8FF 07:C8EF: AD 5C 00  LDA a: ram_005C
C - - - - - 0x01C902 07:C8F2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C905 07:C8F5: D0 15     BNE $C90C
C - - - - - 0x01C907 07:C8F7: A9 23     LDA #$23
C - - - - - 0x01C909 07:C8F9: 8D 10 00  STA a: ram_0010
C - - - - - 0x01C90C 07:C8FC: A9 01     LDA #$01
C - - - - - 0x01C90E 07:C8FE: 8D 0F 00  STA a: ram_000F
- - - - - - 0x01C911 07:C901: A9        .byte $A9   ; 
- - - - - - 0x01C912 07:C902: 01        .byte $01   ; 
- - - - - - 0x01C913 07:C903: 8D        .byte $8D   ; 
- - - - - - 0x01C914 07:C904: 5A        .byte $5A   ; 
- - - - - - 0x01C915 07:C905: 00        .byte $00   ; 
- - - - - - 0x01C916 07:C906: 20        .byte $20   ; 
- - - - - - 0x01C917 07:C907: D8        .byte $D8   ; 
- - - - - - 0x01C918 07:C908: D5        .byte $D5   ; 
- - - - - - 0x01C919 07:C909: 4C        .byte $4C   ; 
- - - - - - 0x01C91A 07:C90A: 84        .byte $84   ; 
- - - - - - 0x01C91B 07:C90B: C9        .byte $C9   ; 
- - - - - - 0x01C91C 07:C90C: A9        .byte $A9   ; 
- - - - - - 0x01C91D 07:C90D: 00        .byte $00   ; 
- - - - - - 0x01C91E 07:C90E: 8D        .byte $8D   ; 
- - - - - - 0x01C91F 07:C90F: 09        .byte $09   ; 
- - - - - - 0x01C920 07:C910: 00        .byte $00   ; 
- - - - - - 0x01C921 07:C911: AD        .byte $AD   ; 
- - - - - - 0x01C922 07:C912: 13        .byte $13   ; 
- - - - - - 0x01C923 07:C913: 00        .byte $00   ; 
- - - - - - 0x01C924 07:C914: CD        .byte $CD   ; 
C - - - - - 0x01C925 07:C915: 09 00     ORA #$00
C - - - - - 0x01C927 07:C917: F0 13     BEQ $C92C
C - - - - - 0x01C929 07:C919: A9 00     LDA #$00
C - - - - - 0x01C92B 07:C91B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C92E 07:C91E: AD 5B 00  LDA a: ram_005B
C - - - - - 0x01C931 07:C921: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C934 07:C924: F0 06     BEQ $C92C
C - - - - - 0x01C936 07:C926: CE 5B 00  DEC a: ram_005B
C - - - - - 0x01C939 07:C929: 4C 84 C9  JMP $C984
C - - - - - 0x01C93C 07:C92C: A9 00     LDA #$00
C - - - - - 0x01C93E 07:C92E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C941 07:C931: AD 13 00  LDA a: ram_0013
C - - - - - 0x01C944 07:C934: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C947 07:C937: F0 4B     BEQ $C984
C - - - - - 0x01C949 07:C939: A9 00     LDA #$00
C - - - - - 0x01C94B 07:C93B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C94E 07:C93E: AD 5D 00  LDA a: ram_005D
C - - - - - 0x01C951 07:C941: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C954 07:C944: F0 3E     BEQ $C984
C - - - - - 0x01C956 07:C946: 20 84 D5  JSR $D584
C - - - - - 0x01C959 07:C949: A9 01     LDA #$01
C - - - - - 0x01C95B 07:C94B: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01C95E 07:C94E: A9 28     LDA #$28
C - - - - - 0x01C960 07:C950: 8D 10 00  STA a: ram_0010
C - - - - - 0x01C963 07:C953: A9 03     LDA #$03
C - - - - - 0x01C965 07:C955: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C968 07:C958: AD 06 00  LDA a: ram_0006
C - - - - - 0x01C96B 07:C95B: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C96E 07:C95E: D0 05     BNE $C965
C - - - - - 0x01C970 07:C960: A9 2D     LDA #$2D
C - - - - - 0x01C972 07:C962: 8D 10 00  STA a: ram_0010
C - - - - - 0x01C975 07:C965: A9 00     LDA #$00
C - - - - - 0x01C977 07:C967: 8D 09 00  STA a: ram_0009
- - - - - - 0x01C97A 07:C96A: AD        .byte $AD   ; 
- - - - - - 0x01C97B 07:C96B: 12        .byte $12   ; 
- - - - - - 0x01C97C 07:C96C: 00        .byte $00   ; 
- - - - - - 0x01C97D 07:C96D: CD        .byte $CD   ; 
C - - - - - 0x01C97E 07:C96E: 09 00     ORA #$00
C - - - - - 0x01C980 07:C970: F0 05     BEQ $C977
C - - - - - 0x01C982 07:C972: A9 26     LDA #$26
C - - - - - 0x01C984 07:C974: 8D 10 00  STA a: ram_0010
C - - - - - 0x01C987 07:C977: A9 00     LDA #$00
C - - - - - 0x01C989 07:C979: 8D 5D 00  STA a: ram_005D
C - - - - - 0x01C98C 07:C97C: A9 0F     LDA #$0F
C - - - - - 0x01C98E 07:C97E: 8D 5B 00  STA a: ram_005B
C - - - - - 0x01C991 07:C981: 4C 84 C9  JMP $C984
C - - - - - 0x01C994 07:C984: 20 8C CB  JSR $CB8C
C - - - - - 0x01C997 07:C987: A9 00     LDA #$00
C - - - - - 0x01C999 07:C989: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C99C 07:C98C: AD 0D 00  LDA a: ram_000D
C - - - - - 0x01C99F 07:C98F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C9A2 07:C992: F0 03     BEQ $C997
C - - - - - 0x01C9A4 07:C994: CE 0D 00  DEC a: ram_000D
C - - - - - 0x01C9A7 07:C997: 20 7E EE  JSR $EE7E
C - - - - - 0x01C9AA 07:C99A: 20 D9 D4  JSR $D4D9
C - - - - - 0x01C9AD 07:C99D: 60        RTS
C - - - - - 0x01C9AE 07:C99E: A9 00     LDA #$00
C - - - - - 0x01C9B0 07:C9A0: 8D 15 40  STA $4015
C - - - - - 0x01C9B3 07:C9A3: 20 39 D5  JSR $D539
C - - - - - 0x01C9B6 07:C9A6: A9 00     LDA #$00
C - - - - - 0x01C9B8 07:C9A8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C9BB 07:C9AB: AD 1A 00  LDA a: ram_001A
C - - - - - 0x01C9BE 07:C9AE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C9C1 07:C9B1: F0 03     BEQ $C9B6
C - - - - - 0x01C9C3 07:C9B3: 4C 9E C9  JMP $C99E
C - - - - - 0x01C9C6 07:C9B6: 20 39 D5  JSR $D539
C - - - - - 0x01C9C9 07:C9B9: A9 00     LDA #$00
C - - - - - 0x01C9CB 07:C9BB: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C9CE 07:C9BE: AD 1A 00  LDA a: ram_001A
C - - - - - 0x01C9D1 07:C9C1: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C9D4 07:C9C4: D0 03     BNE $C9C9
C - - - - - 0x01C9D6 07:C9C6: 4C B6 C9  JMP $C9B6
C - - - - - 0x01C9D9 07:C9C9: 20 39 D5  JSR $D539
C - - - - - 0x01C9DC 07:C9CC: A9 00     LDA #$00
C - - - - - 0x01C9DE 07:C9CE: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C9E1 07:C9D1: AD 1A 00  LDA a: ram_001A
C - - - - - 0x01C9E4 07:C9D4: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C9E7 07:C9D7: F0 03     BEQ $C9DC
C - - - - - 0x01C9E9 07:C9D9: 4C C9 C9  JMP $C9C9
C - - - - - 0x01C9EC 07:C9DC: A9 0F     LDA #$0F
C - - - - - 0x01C9EE 07:C9DE: 8D 15 40  STA $4015
C - - - - - 0x01C9F1 07:C9E1: 60        RTS
C - - - - - 0x01C9F2 07:C9E2: AD 5C 80  LDA $805C
C - - - - - 0x01C9F5 07:C9E5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01C9F8 07:C9E8: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01C9FB 07:C9EB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01C9FE 07:C9EE: D0 03     BNE $C9F3
C - - - - - 0x01CA00 07:C9F0: 4C 36 CA  JMP $CA36
C - - - - - 0x01CA03 07:C9F3: AD 5D 80  LDA $805D
C - - - - - 0x01CA06 07:C9F6: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CA09 07:C9F9: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CA0C 07:C9FC: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CA0F 07:C9FF: D0 03     BNE $CA04
C - - - - - 0x01CA11 07:CA01: 4C 36 CA  JMP $CA36
C - - - - - 0x01CA14 07:CA04: AD 5E 80  LDA $805E
C - - - - - 0x01CA17 07:CA07: 8D 09 00  STA a: ram_0009
- - - - - - 0x01CA1A 07:CA0A: AD        .byte $AD   ; 
- - - - - - 0x01CA1B 07:CA0B: 5E        .byte $5E   ; 
- - - - - - 0x01CA1C 07:CA0C: 00        .byte $00   ; 
C - - - - - 0x01CA1D 07:CA0D: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CA20 07:CA10: D0 03     BNE $CA15
C - - - - - 0x01CA22 07:CA12: 4C 36 CA  JMP $CA36
C - - - - - 0x01CA25 07:CA15: A9 00     LDA #$00
C - - - - - 0x01CA27 07:CA17: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01CA2A 07:CA1A: 20 8E DB  JSR $DB8E
- - - - - - 0x01CA2D 07:CA1D: 20        .byte $20   ; 
C - - - - - 0x01CA2E 07:CA1E: ED D5 EE  SBC $EED5
C - - - - - 0x01CA31 07:CA21: 0E 00 A9  ASL $A900
C - - - - - 0x01CA34 07:CA24: 1E 8D 09  ASL $098D,X
C - - - - - 0x01CA37 07:CA27: 00        BRK
C - - - - - 0x01CA38 07:CA28: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01CA3B 07:CA2B: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CA3E 07:CA2E: F0 03     BEQ $CA33
C - - - - - 0x01CA40 07:CA30: 4C 1A CA  JMP $CA1A
C - - - - - 0x01CA43 07:CA33: 4C B7 CA  JMP $CAB7
C - - - - - 0x01CA46 07:CA36: 20 26 DC  JSR $DC26
C - - - - - 0x01CA49 07:CA39: AD 5F 80  LDA $805F
C - - - - - 0x01CA4C 07:CA3C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CA4F 07:CA3F: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CA52 07:CA42: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CA55 07:CA45: F0 25     BEQ $CA6C
C - - - - - 0x01CA57 07:CA47: 20 79 E6  JSR $E679
C - - - - - 0x01CA5A 07:CA4A: 20 04 D2  JSR $D204
C - - - - - 0x01CA5D 07:CA4D: 20 04 D2  JSR $D204
- - - - - - 0x01CA60 07:CA50: 20        .byte $20   ; 
- - - - - - 0x01CA61 07:CA51: 04        .byte $04   ; 
- - - - - - 0x01CA62 07:CA52: D2        .byte $D2   ; 
- - - - - - 0x01CA63 07:CA53: 20        .byte $20   ; 
- - - - - - 0x01CA64 07:CA54: 8E        .byte $8E   ; 
- - - - - - 0x01CA65 07:CA55: DB        .byte $DB   ; 
- - - - - - 0x01CA66 07:CA56: A9        .byte $A9   ; 
- - - - - - 0x01CA67 07:CA57: 00        .byte $00   ; 
- - - - - - 0x01CA68 07:CA58: 8D        .byte $8D   ; 
- - - - - - 0x01CA69 07:CA59: 09        .byte $09   ; 
- - - - - - 0x01CA6A 07:CA5A: 00        .byte $00   ; 
- - - - - - 0x01CA6B 07:CA5B: AD        .byte $AD   ; 
- - - - - - 0x01CA6C 07:CA5C: 58        .byte $58   ; 
- - - - - - 0x01CA6D 07:CA5D: 00        .byte $00   ; 
- - - - - - 0x01CA6E 07:CA5E: CD        .byte $CD   ; 
- - - - - - 0x01CA6F 07:CA5F: 09        .byte $09   ; 
- - - - - - 0x01CA70 07:CA60: 00        .byte $00   ; 
- - - - - - 0x01CA71 07:CA61: F0        .byte $F0   ; 
- - - - - - 0x01CA72 07:CA62: 03        .byte $03   ; 
- - - - - - 0x01CA73 07:CA63: 20        .byte $20   ; 
- - - - - - 0x01CA74 07:CA64: 29        .byte $29   ; 
- - - - - - 0x01CA75 07:CA65: D6        .byte $D6   ; 
- - - - - - 0x01CA76 07:CA66: 20        .byte $20   ; 
- - - - - - 0x01CA77 07:CA67: ED        .byte $ED   ; 
- - - - - - 0x01CA78 07:CA68: D5        .byte $D5   ; 
- - - - - - 0x01CA79 07:CA69: 4C        .byte $4C   ; 
- - - - - - 0x01CA7A 07:CA6A: 39        .byte $39   ; 
- - - - - - 0x01CA7B 07:CA6B: CA        .byte $CA   ; 
- - - - - - 0x01CA7C 07:CA6C: A9        .byte $A9   ; 
- - - - - - 0x01CA7D 07:CA6D: 02        .byte $02   ; 
- - - - - - 0x01CA7E 07:CA6E: 8D        .byte $8D   ; 
- - - - - - 0x01CA7F 07:CA6F: 0C        .byte $0C   ; 
- - - - - - 0x01CA80 07:CA70: 00        .byte $00   ; 
- - - - - - 0x01CA81 07:CA71: 60        .byte $60   ; 
- - - - - - 0x01CA82 07:CA72: A9        .byte $A9   ; 
- - - - - - 0x01CA83 07:CA73: 00        .byte $00   ; 
- - - - - - 0x01CA84 07:CA74: 8D        .byte $8D   ; 
C - - - - - 0x01CA85 07:CA75: 09 00     ORA #$00
C - - - - - 0x01CA87 07:CA77: AD 0D 00  LDA a: ram_000D
C - - - - - 0x01CA8A 07:CA7A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CA8D 07:CA7D: F0 01     BEQ $CA80
C - - - - - 0x01CA8F 07:CA7F: 60        RTS
C - - - - - 0x01CA90 07:CA80: A9 96     LDA #$96
C - - - - - 0x01CA92 07:CA82: 8D 0D 00  STA a: ram_000D
C - - - - - 0x01CA95 07:CA85: A9 01     LDA #$01
C - - - - - 0x01CA97 07:CA87: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01CA9A 07:CA8A: A9 0A     LDA #$0A
C - - - - - 0x01CA9C 07:CA8C: 8D 10 00  STA a: ram_0010
C - - - - - 0x01CA9F 07:CA8F: CE 0A 00  DEC a: ram_000A
C - - - - - 0x01CAA2 07:CA92: A9 FF     LDA #$FF
C - - - - - 0x01CAA4 07:CA94: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CAA7 07:CA97: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01CAAA 07:CA9A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CAAD 07:CA9D: D0 05     BNE $CAA4
C - - - - - 0x01CAAF 07:CA9F: A9 00     LDA #$00
C - - - - - 0x01CAB1 07:CAA1: 8D 0A 00  STA a: ram_000A
C - - - - - 0x01CAB4 07:CAA4: A9 00     LDA #$00
C - - - - - 0x01CAB6 07:CAA6: 8D 09 00  STA a: ram_0009
- - - - - - 0x01CAB9 07:CAA9: AD        .byte $AD   ; 
- - - - - - 0x01CABA 07:CAAA: 0A        .byte $0A   ; 
- - - - - - 0x01CABB 07:CAAB: 00        .byte $00   ; 
- - - - - - 0x01CABC 07:CAAC: CD        .byte $CD   ; 
C - - - - - 0x01CABD 07:CAAD: 09 00     ORA #$00
C - - - - - 0x01CABF 07:CAAF: D0 05     BNE $CAB6
C - - - - - 0x01CAC1 07:CAB1: A9 37     LDA #$37
C - - - - - 0x01CAC3 07:CAB3: 8D 10 00  STA a: ram_0010
C - - - - - 0x01CAC6 07:CAB6: 60        RTS
C - - - - - 0x01CAC7 07:CAB7: CE 08 00  DEC a: ram_0008
C - - - - - 0x01CACA 07:CABA: 60        RTS
C - - - - - 0x01CACB 07:CABB: 20 41 C2  JSR $C241
C - - - - - 0x01CACE 07:CABE: 20 C3 DB  JSR $DBC3
C - - - - - 0x01CAD1 07:CAC1: 20 DA DB  JSR $DBDA
C - - - - - 0x01CAD4 07:CAC4: A9 03     LDA #$03
C - - - - - 0x01CAD6 07:CAC6: 8D 0A 00  STA a: ram_000A
C - - - - - 0x01CAD9 07:CAC9: A9 64     LDA #$64
C - - - - - 0x01CADB 07:CACB: 8D 0D 00  STA a: ram_000D
C - - - - - 0x01CADE 07:CACE: A9 01     LDA #$01
C - - - - - 0x01CAE0 07:CAD0: 8D 1C 00  STA a: ram_001C
C - - - - - 0x01CAE3 07:CAD3: A9 0A     LDA #$0A
C - - - - - 0x01CAE5 07:CAD5: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01CAE8 07:CAD8: A9 00     LDA #$00
C - - - - - 0x01CAEA 07:CADA: 8D 5F 00  STA a: ram_005F
C - - - - - 0x01CAED 07:CADD: A9 02     LDA #$02
C - - - - - 0x01CAEF 07:CADF: 8D 5E 00  STA a: ram_005E
C - - - - - 0x01CAF2 07:CAE2: A9 01     LDA #$01
C - - - - - 0x01CAF4 07:CAE4: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CAF7 07:CAE7: AD 27 00  LDA a: ram_0027
C - - - - - 0x01CAFA 07:CAEA: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CAFD 07:CAED: D0 06     BNE $CAF5
C - - - - - 0x01CAFF 07:CAEF: AD 59 80  LDA $8059
C - - - - - 0x01CB02 07:CAF2: 8D 5E 00  STA a: ram_005E
C - - - - - 0x01CB05 07:CAF5: A9 00     LDA #$00
C - - - - - 0x01CB07 07:CAF7: 8D 10 00  STA a: ram_0010
C - - - - - 0x01CB0A 07:CAFA: A9 00     LDA #$00
C - - - - - 0x01CB0C 07:CAFC: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01CB0F 07:CAFF: A9 FF     LDA #$FF
C - - - - - 0x01CB11 07:CB01: 8D 60 00  STA a: ram_0060
C - - - - - 0x01CB14 07:CB04: 20 25 D8  JSR $D825
C - - - - - 0x01CB17 07:CB07: A9 00     LDA #$00
C - - - - - 0x01CB19 07:CB09: 8D 61 00  STA a: ram_0061
C - - - - - 0x01CB1C 07:CB0C: 20 8E DB  JSR $DB8E
C - - - - - 0x01CB1F 07:CB0F: EE 61 00  INC a: ram_0061
C - - - - - 0x01CB22 07:CB12: A9 78     LDA #$78
C - - - - - 0x01CB24 07:CB14: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CB27 07:CB17: AD 61 00  LDA a: ram_0061
C - - - - - 0x01CB2A 07:CB1A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CB2D 07:CB1D: 10 03     BPL $CB22
C - - - - - 0x01CB2F 07:CB1F: 4C 0C CB  JMP $CB0C
C - - - - - 0x01CB32 07:CB22: A9 00     LDA #$00
C - - - - - 0x01CB34 07:CB24: 8D 61 00  STA a: ram_0061
C - - - - - 0x01CB37 07:CB27: 20 C3 DB  JSR $DBC3
C - - - - - 0x01CB3A 07:CB2A: 20 5E C3  JSR $C35E
C - - - - - 0x01CB3D 07:CB2D: A9 00     LDA #$00
C - - - - - 0x01CB3F 07:CB2F: 8D 07 00  STA a: ram_0007
C - - - - - 0x01CB42 07:CB32: 20 EB E5  JSR $E5EB
C - - - - - 0x01CB45 07:CB35: A9 0F     LDA #$0F
C - - - - - 0x01CB47 07:CB37: 8D 15 40  STA $4015
C - - - - - 0x01CB4A 07:CB3A: A9 00     LDA #$00
C - - - - - 0x01CB4C 07:CB3C: 8D 1E 00  STA a: ram_001E
C - - - - - 0x01CB4F 07:CB3F: A9 00     LDA #$00
C - - - - - 0x01CB51 07:CB41: 8D 1F 00  STA a: ram_001F
C - - - - - 0x01CB54 07:CB44: A9 00     LDA #$00
C - - - - - 0x01CB56 07:CB46: 8D 20 00  STA a: ram_0020
C - - - - - 0x01CB59 07:CB49: A9 00     LDA #$00
C - - - - - 0x01CB5B 07:CB4B: 8D 21 00  STA a: ram_0021
C - - - - - 0x01CB5E 07:CB4E: AD 20 00  LDA a: ram_0020
C - - - - - 0x01CB61 07:CB51: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CB64 07:CB54: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CB67 07:CB57: 38        SEC
C - - - - - 0x01CB68 07:CB58: E9 06     SBC #$06
C - - - - - 0x01CB6A 07:CB5A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CB6D 07:CB5D: 30 16     BMI $CB75
C - - - - - 0x01CB6F 07:CB5F: 20 E5 D6  JSR $D6E5
C - - - - - 0x01CB72 07:CB62: A9 00     LDA #$00
C - - - - - 0x01CB74 07:CB64: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CB77 07:CB67: AD 58 00  LDA a: ram_0058
C - - - - - 0x01CB7A 07:CB6A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CB7D 07:CB6D: F0 03     BEQ $CB72
C - - - - - 0x01CB7F 07:CB6F: 20 29 D6  JSR $D629
C - - - - - 0x01CB82 07:CB72: 4C 4E CB  JMP $CB4E
C - - - - - 0x01CB85 07:CB75: 20 8B C2  JSR $C28B
C - - - - - 0x01CB88 07:CB78: 20 8E DB  JSR $DB8E
C - - - - - 0x01CB8B 07:CB7B: 20 C4 E7  JSR $E7C4
C - - - - - 0x01CB8E 07:CB7E: A9 00     LDA #$00
C - - - - - 0x01CB90 07:CB80: 8D 5D 00  STA a: ram_005D
C - - - - - 0x01CB93 07:CB83: A9 00     LDA #$00
C - - - - - 0x01CB95 07:CB85: 8D 25 00  STA a: ram_0025
C - - - - - 0x01CB98 07:CB88: 20 BB D2  JSR $D2BB
C - - - - - 0x01CB9B 07:CB8B: 60        RTS
C - - - - - 0x01CB9C 07:CB8C: AE 10 00  LDX a: ram_0010
C - - - - - 0x01CB9F 07:CB8F: BD 40 E0  LDA $E040,X
C - - - - - 0x01CBA2 07:CB92: 8D 62 00  STA a: ram_0062
C - - - - - 0x01CBA5 07:CB95: A9 01     LDA #$01
C - - - - - 0x01CBA7 07:CB97: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CBAA 07:CB9A: AD 0F 00  LDA a: ram_000F
C - - - - - 0x01CBAD 07:CB9D: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CBB0 07:CBA0: D0 04     BNE $CBA6
C - - - - - 0x01CBB2 07:CBA2: 4C 4A CE  JMP $CE4A
C - - - - - 0x01CBB5 07:CBA5: 60        RTS
C - - - - - 0x01CBB6 07:CBA6: 4C 23 D0  JMP $D023
C - - - - - 0x01CBB9 07:CBA9: 60        RTS
C - - - - - 0x01CBBA 07:CBAA: A9 03     LDA #$03
C - - - - - 0x01CBBC 07:CBAC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CBBF 07:CBAF: AD 5F 00  LDA a: ram_005F
- - - - - - 0x01CBC2 07:CBB2: CD        .byte $CD   ; 
C - - - - - 0x01CBC3 07:CBB3: 09 00     ORA #$00
C - - - - - 0x01CBC5 07:CBB5: 10 03     BPL $CBBA
C - - - - - 0x01CBC7 07:CBB7: 4C 04 D2  JMP $D204
C - - - - - 0x01CBCA 07:CBBA: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CBCD 07:CBBD: 0A        ASL
C - - - - - 0x01CBCE 07:CBBE: 0A        ASL
C - - - - - 0x01CBCF 07:CBBF: 0A        ASL
C - - - - - 0x01CBD0 07:CBC0: 18        CLC
C - - - - - 0x01CBD1 07:CBC1: 69 08     ADC #$08
C - - - - - 0x01CBD3 07:CBC3: 8D 63 00  STA a: ram_0063
C - - - - - 0x01CBD6 07:CBC6: A9 7F     LDA #$7F
C - - - - - 0x01CBD8 07:CBC8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CBDB 07:CBCB: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CBDE 07:CBCE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CBE1 07:CBD1: 30 58     BMI $CC2B
C - - - - - 0x01CBE3 07:CBD3: A9 81     LDA #$81
C - - - - - 0x01CBE5 07:CBD5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CBE8 07:CBD8: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CBEB 07:CBDB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CBEE 07:CBDE: 10 4B     BPL $CC2B
C - - - - - 0x01CBF0 07:CBE0: AE 63 00  LDX a: ram_0063
C - - - - - 0x01CBF3 07:CBE3: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CBF6 07:CBE6: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CBF9 07:CBE9: A9 00     LDA #$00
C - - - - - 0x01CBFB 07:CBEB: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CBFE 07:CBEE: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CC01 07:CBF1: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CC04 07:CBF4: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC07 07:CBF7: F0 01     BEQ $CBFA
C - - - - - 0x01CC09 07:CBF9: 60        RTS
C - - - - - 0x01CC0A 07:CBFA: A9 00     LDA #$00
C - - - - - 0x01CC0C 07:CBFC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CC0F 07:CBFF: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CC12 07:CC02: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC15 07:CC05: F0 03     BEQ $CC0A
C - - - - - 0x01CC17 07:CC07: 4C 04 D2  JMP $D204
C - - - - - 0x01CC1A 07:CC0A: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CC1D 07:CC0D: 18        CLC
C - - - - - 0x01CC1E 07:CC0E: 69 06     ADC #$06
- - - - - - 0x01CC20 07:CC10: AA        .byte $AA   ; 
- - - - - - 0x01CC21 07:CC11: BD        .byte $BD   ; 
- - - - - - 0x01CC22 07:CC12: 00        .byte $00   ; 
C - - - - - 0x01CC23 07:CC13: 04        UNDEFINED
C - - - - - 0x01CC24 07:CC14: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CC27 07:CC17: A9 00     LDA #$00
C - - - - - 0x01CC29 07:CC19: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CC2C 07:CC1C: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CC2F 07:CC1F: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CC32 07:CC22: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC35 07:CC25: F0 01     BEQ $CC28
C - - - - - 0x01CC37 07:CC27: 60        RTS
C - - - - - 0x01CC38 07:CC28: 4C 04 D2  JMP $D204
C - - - - - 0x01CC3B 07:CC2B: A9 7F     LDA #$7F
C - - - - - 0x01CC3D 07:CC2D: 8D 09 00  STA a: ram_0009
- - - - - - 0x01CC40 07:CC30: AD        .byte $AD   ; 
C - - - - - 0x01CC41 07:CC31: 0C        UNDEFINED
C - - - - - 0x01CC42 07:CC32: 00        BRK
C - - - - - 0x01CC43 07:CC33: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC46 07:CC36: 10 5F     BPL $CC97
C - - - - - 0x01CC48 07:CC38: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CC4B 07:CC3B: 4A        LSR
C - - - - - 0x01CC4C 07:CC3C: 4A        LSR
C - - - - - 0x01CC4D 07:CC3D: 4A        LSR
C - - - - - 0x01CC4E 07:CC3E: 4A        LSR
C - - - - - 0x01CC4F 07:CC3F: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CC52 07:CC42: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CC55 07:CC45: 18        CLC
C - - - - - 0x01CC56 07:CC46: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CC59 07:CC49: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CC5C 07:CC4C: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CC5F 07:CC4F: BD 00 04  LDA ram_0400,X
C - - - - - 0x01CC62 07:CC52: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CC65 07:CC55: A9 00     LDA #$00
C - - - - - 0x01CC67 07:CC57: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CC6A 07:CC5A: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CC6D 07:CC5D: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CC70 07:CC60: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC73 07:CC63: F0 01     BEQ $CC66
C - - - - - 0x01CC75 07:CC65: 60        RTS
C - - - - - 0x01CC76 07:CC66: A9 00     LDA #$00
C - - - - - 0x01CC78 07:CC68: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CC7B 07:CC6B: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CC7E 07:CC6E: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CC81 07:CC71: F0 03     BEQ $CC76
C - - - - - 0x01CC83 07:CC73: 4C 04 D2  JMP $D204
C - - - - - 0x01CC86 07:CC76: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CC89 07:CC79: 38        SEC
C - - - - - 0x01CC8A 07:CC7A: E9 01     SBC #$01
- - - - - - 0x01CC8C 07:CC7C: AA        .byte $AA   ; 
- - - - - - 0x01CC8D 07:CC7D: BD        .byte $BD   ; 
- - - - - - 0x01CC8E 07:CC7E: 00        .byte $00   ; 
C - - - - - 0x01CC8F 07:CC7F: 04        UNDEFINED
C - - - - - 0x01CC90 07:CC80: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CC93 07:CC83: A9 00     LDA #$00
C - - - - - 0x01CC95 07:CC85: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CC98 07:CC88: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CC9B 07:CC8B: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CC9E 07:CC8E: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CCA1 07:CC91: F0 01     BEQ $CC94
C - - - - - 0x01CCA3 07:CC93: 60        RTS
C - - - - - 0x01CCA4 07:CC94: 4C 04 D2  JMP $D204
C - - - - - 0x01CCA7 07:CC97: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CCAA 07:CC9A: 38        SEC
C - - - - - 0x01CCAB 07:CC9B: E9 70     SBC #$70
C - - - - - 0x01CCAD 07:CC9D: 4A        LSR
C - - - - - 0x01CCAE 07:CC9E: 4A        LSR
C - - - - - 0x01CCAF 07:CC9F: 4A        LSR
C - - - - - 0x01CCB0 07:CCA0: 4A        LSR
C - - - - - 0x01CCB1 07:CCA1: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CCB4 07:CCA4: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CCB7 07:CCA7: 18        CLC
C - - - - - 0x01CCB8 07:CCA8: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CCBB 07:CCAB: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CCBE 07:CCAE: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CCC1 07:CCB1: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CCC4 07:CCB4: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CCC7 07:CCB7: A9 00     LDA #$00
C - - - - - 0x01CCC9 07:CCB9: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CCCC 07:CCBC: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CCCF 07:CCBF: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CCD2 07:CCC2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CCD5 07:CCC5: F0 01     BEQ $CCC8
C - - - - - 0x01CCD7 07:CCC7: 60        RTS
C - - - - - 0x01CCD8 07:CCC8: A9 00     LDA #$00
C - - - - - 0x01CCDA 07:CCCA: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CCDD 07:CCCD: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CCE0 07:CCD0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CCE3 07:CCD3: F0 03     BEQ $CCD8
C - - - - - 0x01CCE5 07:CCD5: 4C 04 D2  JMP $D204
C - - - - - 0x01CCE8 07:CCD8: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CCEB 07:CCDB: 38        SEC
C - - - - - 0x01CCEC 07:CCDC: E9 01     SBC #$01
C - - - - - 0x01CCEE 07:CCDE: AA        TAX
C - - - - - 0x01CCEF 07:CCDF: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CCF2 07:CCE2: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CCF5 07:CCE5: A9 00     LDA #$00
C - - - - - 0x01CCF7 07:CCE7: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CCFA 07:CCEA: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CCFD 07:CCED: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CD00 07:CCF0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD03 07:CCF3: F0 01     BEQ $CCF6
C - - - - - 0x01CD05 07:CCF5: 60        RTS
C - - - - - 0x01CD06 07:CCF6: 20 04 D2  JSR $D204
C - - - - - 0x01CD09 07:CCF9: 60        RTS
C - - - - - 0x01CD0A 07:CCFA: A9 00     LDA #$00
C - - - - - 0x01CD0C 07:CCFC: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD0F 07:CCFF: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01CD12 07:CD02: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD15 07:CD05: F0 03     BEQ $CD0A
C - - - - - 0x01CD17 07:CD07: 4C 55 D2  JMP $D255
C - - - - - 0x01CD1A 07:CD0A: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CD1D 07:CD0D: 38        SEC
C - - - - - 0x01CD1E 07:CD0E: E9 01     SBC #$01
C - - - - - 0x01CD20 07:CD10: 0A        ASL
C - - - - - 0x01CD21 07:CD11: 0A        ASL
C - - - - - 0x01CD22 07:CD12: 0A        ASL
C - - - - - 0x01CD23 07:CD13: 8D 63 00  STA a: ram_0063
C - - - - - 0x01CD26 07:CD16: A9 7F     LDA #$7F
C - - - - - 0x01CD28 07:CD18: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD2B 07:CD1B: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CD2E 07:CD1E: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD31 07:CD21: 30 58     BMI $CD7B
C - - - - - 0x01CD33 07:CD23: A9 81     LDA #$81
C - - - - - 0x01CD35 07:CD25: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD38 07:CD28: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CD3B 07:CD2B: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD3E 07:CD2E: 10 4B     BPL $CD7B
C - - - - - 0x01CD40 07:CD30: AE 63 00  LDX a: ram_0063
C - - - - - 0x01CD43 07:CD33: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CD46 07:CD36: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CD49 07:CD39: A9 00     LDA #$00
C - - - - - 0x01CD4B 07:CD3B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD4E 07:CD3E: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CD51 07:CD41: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CD54 07:CD44: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD57 07:CD47: F0 01     BEQ $CD4A
C - - - - - 0x01CD59 07:CD49: 60        RTS
C - - - - - 0x01CD5A 07:CD4A: A9 00     LDA #$00
C - - - - - 0x01CD5C 07:CD4C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD5F 07:CD4F: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CD62 07:CD52: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD65 07:CD55: F0 03     BEQ $CD5A
C - - - - - 0x01CD67 07:CD57: 4C 55 D2  JMP $D255
C - - - - - 0x01CD6A 07:CD5A: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CD6D 07:CD5D: 18        CLC
C - - - - - 0x01CD6E 07:CD5E: 69 06     ADC #$06
- - - - - - 0x01CD70 07:CD60: AA        .byte $AA   ; 
- - - - - - 0x01CD71 07:CD61: BD        .byte $BD   ; 
- - - - - - 0x01CD72 07:CD62: 00        .byte $00   ; 
C - - - - - 0x01CD73 07:CD63: 04        UNDEFINED
C - - - - - 0x01CD74 07:CD64: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CD77 07:CD67: A9 00     LDA #$00
C - - - - - 0x01CD79 07:CD69: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CD7C 07:CD6C: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CD7F 07:CD6F: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CD82 07:CD72: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD85 07:CD75: F0 01     BEQ $CD78
C - - - - - 0x01CD87 07:CD77: 60        RTS
C - - - - - 0x01CD88 07:CD78: 4C 55 D2  JMP $D255
C - - - - - 0x01CD8B 07:CD7B: A9 7F     LDA #$7F
C - - - - - 0x01CD8D 07:CD7D: 8D 09 00  STA a: ram_0009
- - - - - - 0x01CD90 07:CD80: AD        .byte $AD   ; 
C - - - - - 0x01CD91 07:CD81: 0C        UNDEFINED
C - - - - - 0x01CD92 07:CD82: 00        BRK
C - - - - - 0x01CD93 07:CD83: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CD96 07:CD86: 10 5F     BPL $CDE7
C - - - - - 0x01CD98 07:CD88: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CD9B 07:CD8B: 4A        LSR
C - - - - - 0x01CD9C 07:CD8C: 4A        LSR
C - - - - - 0x01CD9D 07:CD8D: 4A        LSR
C - - - - - 0x01CD9E 07:CD8E: 4A        LSR
C - - - - - 0x01CD9F 07:CD8F: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CDA2 07:CD92: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CDA5 07:CD95: 18        CLC
C - - - - - 0x01CDA6 07:CD96: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CDA9 07:CD99: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CDAC 07:CD9C: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CDAF 07:CD9F: BD 00 04  LDA ram_0400,X
C - - - - - 0x01CDB2 07:CDA2: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CDB5 07:CDA5: A9 00     LDA #$00
C - - - - - 0x01CDB7 07:CDA7: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CDBA 07:CDAA: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CDBD 07:CDAD: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CDC0 07:CDB0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CDC3 07:CDB3: F0 01     BEQ $CDB6
C - - - - - 0x01CDC5 07:CDB5: 60        RTS
C - - - - - 0x01CDC6 07:CDB6: A9 00     LDA #$00
C - - - - - 0x01CDC8 07:CDB8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CDCB 07:CDBB: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CDCE 07:CDBE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CDD1 07:CDC1: F0 03     BEQ $CDC6
C - - - - - 0x01CDD3 07:CDC3: 4C 55 D2  JMP $D255
C - - - - - 0x01CDD6 07:CDC6: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CDD9 07:CDC9: 38        SEC
C - - - - - 0x01CDDA 07:CDCA: E9 01     SBC #$01
- - - - - - 0x01CDDC 07:CDCC: AA        .byte $AA   ; 
- - - - - - 0x01CDDD 07:CDCD: BD        .byte $BD   ; 
- - - - - - 0x01CDDE 07:CDCE: 00        .byte $00   ; 
C - - - - - 0x01CDDF 07:CDCF: 04        UNDEFINED
C - - - - - 0x01CDE0 07:CDD0: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CDE3 07:CDD3: A9 00     LDA #$00
C - - - - - 0x01CDE5 07:CDD5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CDE8 07:CDD8: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CDEB 07:CDDB: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CDEE 07:CDDE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CDF1 07:CDE1: F0 01     BEQ $CDE4
C - - - - - 0x01CDF3 07:CDE3: 60        RTS
C - - - - - 0x01CDF4 07:CDE4: 4C 55 D2  JMP $D255
C - - - - - 0x01CDF7 07:CDE7: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CDFA 07:CDEA: 18        CLC
C - - - - - 0x01CDFB 07:CDEB: 69 90     ADC #$90
C - - - - - 0x01CDFD 07:CDED: 4A        LSR
C - - - - - 0x01CDFE 07:CDEE: 4A        LSR
C - - - - - 0x01CDFF 07:CDEF: 4A        LSR
C - - - - - 0x01CE00 07:CDF0: 4A        LSR
C - - - - - 0x01CE01 07:CDF1: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CE04 07:CDF4: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CE07 07:CDF7: 18        CLC
C - - - - - 0x01CE08 07:CDF8: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CE0B 07:CDFB: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CE0E 07:CDFE: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CE11 07:CE01: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CE14 07:CE04: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CE17 07:CE07: A9 00     LDA #$00
C - - - - - 0x01CE19 07:CE09: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE1C 07:CE0C: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CE1F 07:CE0F: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CE22 07:CE12: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE25 07:CE15: F0 01     BEQ $CE18
C - - - - - 0x01CE27 07:CE17: 60        RTS
C - - - - - 0x01CE28 07:CE18: A9 00     LDA #$00
C - - - - - 0x01CE2A 07:CE1A: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE2D 07:CE1D: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CE30 07:CE20: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE33 07:CE23: F0 03     BEQ $CE28
C - - - - - 0x01CE35 07:CE25: 4C 55 D2  JMP $D255
C - - - - - 0x01CE38 07:CE28: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CE3B 07:CE2B: 38        SEC
C - - - - - 0x01CE3C 07:CE2C: E9 01     SBC #$01
C - - - - - 0x01CE3E 07:CE2E: AA        TAX
C - - - - - 0x01CE3F 07:CE2F: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CE42 07:CE32: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CE45 07:CE35: A9 00     LDA #$00
C - - - - - 0x01CE47 07:CE37: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE4A 07:CE3A: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CE4D 07:CE3D: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CE50 07:CE40: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE53 07:CE43: F0 01     BEQ $CE46
C - - - - - 0x01CE55 07:CE45: 60        RTS
C - - - - - 0x01CE56 07:CE46: 4C 55 D2  JMP $D255
C - - - - - 0x01CE59 07:CE49: 60        RTS
C - - - - - 0x01CE5A 07:CE4A: A9 00     LDA #$00
C - - - - - 0x01CE5C 07:CE4C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE5F 07:CE4F: AD 0C 00  LDA a: ram_000C
- - - - - - 0x01CE62 07:CE52: 29        .byte $29   ; 
C - - - - - 0x01CE63 07:CE53: F8        SED
C - - - - - 0x01CE64 07:CE54: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE67 07:CE57: D0 16     BNE $CE6F
C - - - - - 0x01CE69 07:CE59: CE 10 00  DEC a: ram_0010
C - - - - - 0x01CE6C 07:CE5C: A9 00     LDA #$00
C - - - - - 0x01CE6E 07:CE5E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE71 07:CE61: AD 10 00  LDA a: ram_0010
C - - - - - 0x01CE74 07:CE64: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE77 07:CE67: D0 05     BNE $CE6E
C - - - - - 0x01CE79 07:CE69: A9 00     LDA #$00
C - - - - - 0x01CE7B 07:CE6B: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01CE7E 07:CE6E: 60        RTS
C - - - - - 0x01CE7F 07:CE6F: A9 00     LDA #$00
C - - - - - 0x01CE81 07:CE71: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CE84 07:CE74: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01CE87 07:CE77: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CE8A 07:CE7A: D0 23     BNE $CE9F
C - - - - - 0x01CE8C 07:CE7C: 20 41 C2  JSR $C241
C - - - - - 0x01CE8F 07:CE7F: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CE92 07:CE82: 38        SEC
C - - - - - 0x01CE93 07:CE83: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CE96 07:CE86: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01CE99 07:CE89: CE 10 00  DEC a: ram_0010
C - - - - - 0x01CE9C 07:CE8C: A9 00     LDA #$00
C - - - - - 0x01CE9E 07:CE8E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CEA1 07:CE91: AD 10 00  LDA a: ram_0010
C - - - - - 0x01CEA4 07:CE94: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CEA7 07:CE97: D0 05     BNE $CE9E
C - - - - - 0x01CEA9 07:CE99: A9 00     LDA #$00
C - - - - - 0x01CEAB 07:CE9B: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01CEAE 07:CE9E: 60        RTS
C - - - - - 0x01CEAF 07:CE9F: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01CEB2 07:CEA2: 0A        ASL
C - - - - - 0x01CEB3 07:CEA3: 0A        ASL
C - - - - - 0x01CEB4 07:CEA4: 0A        ASL
C - - - - - 0x01CEB5 07:CEA5: 8D 63 00  STA a: ram_0063
C - - - - - 0x01CEB8 07:CEA8: A9 97     LDA #$97
C - - - - - 0x01CEBA 07:CEAA: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CEBD 07:CEAD: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CEC0 07:CEB0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CEC3 07:CEB3: 30 03     BMI $CEB8
C - - - - - 0x01CEC5 07:CEB5: 4C 71 CF  JMP $CF71
C - - - - - 0x01CEC8 07:CEB8: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CECB 07:CEBB: 48        PHA
C - - - - - 0x01CECC 07:CEBC: A9 E8     LDA #$E8
C - - - - - 0x01CECE 07:CEBE: 38        SEC
C - - - - - 0x01CECF 07:CEBF: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CED2 07:CEC2: 8D 11 00  STA a: ram_0011
C - - - - - 0x01CED5 07:CEC5: 68        PLA
C - - - - - 0x01CED6 07:CEC6: 18        CLC
C - - - - - 0x01CED7 07:CEC7: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01CEDA 07:CECA: 4A        LSR
C - - - - - 0x01CEDB 07:CECB: 4A        LSR
C - - - - - 0x01CEDC 07:CECC: 4A        LSR
C - - - - - 0x01CEDD 07:CECD: 4A        LSR
C - - - - - 0x01CEDE 07:CECE: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CEE1 07:CED1: A9 00     LDA #$00
C - - - - - 0x01CEE3 07:CED3: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CEE6 07:CED6: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CEE9 07:CED9: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CEEC 07:CEDC: F0 19     BEQ $CEF7
C - - - - - 0x01CEEE 07:CEDE: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CEF1 07:CEE1: 48        PHA
C - - - - - 0x01CEF2 07:CEE2: A9 EF     LDA #$EF
C - - - - - 0x01CEF4 07:CEE4: 38        SEC
C - - - - - 0x01CEF5 07:CEE5: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CEF8 07:CEE8: 8D 11 00  STA a: ram_0011
C - - - - - 0x01CEFB 07:CEEB: 68        PLA
C - - - - - 0x01CEFC 07:CEEC: 18        CLC
C - - - - - 0x01CEFD 07:CEED: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01CF00 07:CEF0: 4A        LSR
C - - - - - 0x01CF01 07:CEF1: 4A        LSR
C - - - - - 0x01CF02 07:CEF2: 4A        LSR
C - - - - - 0x01CF03 07:CEF3: 4A        LSR
C - - - - - 0x01CF04 07:CEF4: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CF07 07:CEF7: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CF0A 07:CEFA: 18        CLC
C - - - - - 0x01CF0B 07:CEFB: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CF0E 07:CEFE: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CF11 07:CF01: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CF14 07:CF04: BD 00 04  LDA ram_0400,X
C - - - - - 0x01CF17 07:CF07: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CF1A 07:CF0A: A9 00     LDA #$00
C - - - - - 0x01CF1C 07:CF0C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CF1F 07:CF0F: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CF22 07:CF12: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CF25 07:CF15: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CF28 07:CF18: F0 03     BEQ $CF1D
C - - - - - 0x01CF2A 07:CF1A: 4C 1A D0  JMP $D01A
C - - - - - 0x01CF2D 07:CF1D: A9 00     LDA #$00
C - - - - - 0x01CF2F 07:CF1F: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CF32 07:CF22: A9 04     LDA #$04
C - - - - - 0x01CF34 07:CF24: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CF37 07:CF27: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01CF3A 07:CF2A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CF3D 07:CF2D: 30 0F     BMI $CF3E
C - - - - - 0x01CF3F 07:CF2F: F0 0D     BEQ $CF3E
C - - - - - 0x01CF41 07:CF31: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CF44 07:CF34: 18        CLC
C - - - - - 0x01CF45 07:CF35: 69 08     ADC #$08
C - - - - - 0x01CF47 07:CF37: AA        TAX
C - - - - - 0x01CF48 07:CF38: BD 00 04  LDA ram_0400,X
C - - - - - 0x01CF4B 07:CF3B: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CF4E 07:CF3E: A9 00     LDA #$00
C - - - - - 0x01CF50 07:CF40: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CF53 07:CF43: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CF56 07:CF46: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CF59 07:CF49: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CF5C 07:CF4C: F0 03     BEQ $CF51
C - - - - - 0x01CF5E 07:CF4E: 4C 1A D0  JMP $D01A
C - - - - - 0x01CF61 07:CF51: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CF64 07:CF54: 38        SEC
C - - - - - 0x01CF65 07:CF55: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CF68 07:CF58: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01CF6B 07:CF5B: CE 10 00  DEC a: ram_0010
C - - - - - 0x01CF6E 07:CF5E: A9 00     LDA #$00
C - - - - - 0x01CF70 07:CF60: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CF73 07:CF63: AD 10 00  LDA a: ram_0010
C - - - - - 0x01CF76 07:CF66: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CF79 07:CF69: D0 05     BNE $CF70
C - - - - - 0x01CF7B 07:CF6B: A9 00     LDA #$00
C - - - - - 0x01CF7D 07:CF6D: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01CF80 07:CF70: 60        RTS
C - - - - - 0x01CF81 07:CF71: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CF84 07:CF74: 18        CLC
C - - - - - 0x01CF85 07:CF75: 69 79     ADC #$79
C - - - - - 0x01CF87 07:CF77: 38        SEC
C - - - - - 0x01CF88 07:CF78: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CF8B 07:CF7B: 4A        LSR
C - - - - - 0x01CF8C 07:CF7C: 4A        LSR
C - - - - - 0x01CF8D 07:CF7D: 4A        LSR
C - - - - - 0x01CF8E 07:CF7E: 4A        LSR
C - - - - - 0x01CF8F 07:CF7F: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CF92 07:CF82: A9 00     LDA #$00
C - - - - - 0x01CF94 07:CF84: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CF97 07:CF87: AD 12 00  LDA a: ram_0012
C - - - - - 0x01CF9A 07:CF8A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CF9D 07:CF8D: F0 11     BEQ $CFA0
C - - - - - 0x01CF9F 07:CF8F: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01CFA2 07:CF92: 18        CLC
C - - - - - 0x01CFA3 07:CF93: 69 7F     ADC #$7F
C - - - - - 0x01CFA5 07:CF95: 38        SEC
C - - - - - 0x01CFA6 07:CF96: ED 62 00  SBC a: ram_0062
C - - - - - 0x01CFA9 07:CF99: 4A        LSR
C - - - - - 0x01CFAA 07:CF9A: 4A        LSR
C - - - - - 0x01CFAB 07:CF9B: 4A        LSR
C - - - - - 0x01CFAC 07:CF9C: 4A        LSR
C - - - - - 0x01CFAD 07:CF9D: 8D 65 00  STA a: ram_0065
C - - - - - 0x01CFB0 07:CFA0: AD 63 00  LDA a: ram_0063
C - - - - - 0x01CFB3 07:CFA3: 18        CLC
C - - - - - 0x01CFB4 07:CFA4: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01CFB7 07:CFA7: 8D 66 00  STA a: ram_0066
C - - - - - 0x01CFBA 07:CFAA: AE 66 00  LDX a: ram_0066
C - - - - - 0x01CFBD 07:CFAD: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CFC0 07:CFB0: 8D 67 00  STA a: ram_0067
C - - - - - 0x01CFC3 07:CFB3: A9 00     LDA #$00
C - - - - - 0x01CFC5 07:CFB5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CFC8 07:CFB8: AD 67 00  LDA a: ram_0067
C - - - - - 0x01CFCB 07:CFBB: 2D 54 00  AND a: ram_0054
C - - - - - 0x01CFCE 07:CFBE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CFD1 07:CFC1: F0 03     BEQ $CFC6
C - - - - - 0x01CFD3 07:CFC3: 4C 1A D0  JMP $D01A
C - - - - - 0x01CFD6 07:CFC6: A9 00     LDA #$00
C - - - - - 0x01CFD8 07:CFC8: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CFDB 07:CFCB: A9 04     LDA #$04
C - - - - - 0x01CFDD 07:CFCD: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CFE0 07:CFD0: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01CFE3 07:CFD3: CD 09 00  CMP a: ram_0009
C - - - - - 0x01CFE6 07:CFD6: 30 0F     BMI $CFE7
C - - - - - 0x01CFE8 07:CFD8: F0 0D     BEQ $CFE7
C - - - - - 0x01CFEA 07:CFDA: AD 66 00  LDA a: ram_0066
C - - - - - 0x01CFED 07:CFDD: 18        CLC
C - - - - - 0x01CFEE 07:CFDE: 69 08     ADC #$08
C - - - - - 0x01CFF0 07:CFE0: AA        TAX
C - - - - - 0x01CFF1 07:CFE1: BD 00 02  LDA ram_0200,X
C - - - - - 0x01CFF4 07:CFE4: 8D 64 00  STA a: ram_0064
C - - - - - 0x01CFF7 07:CFE7: A9 00     LDA #$00
C - - - - - 0x01CFF9 07:CFE9: 8D 09 00  STA a: ram_0009
C - - - - - 0x01CFFC 07:CFEC: AD 64 00  LDA a: ram_0064
C - - - - - 0x01CFFF 07:CFEF: 2D 54 00  AND a: ram_0054
C - - - - - 0x01D002 07:CFF2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D005 07:CFF5: F0 03     BEQ $CFFA
C - - - - - 0x01D007 07:CFF7: 4C 1A D0  JMP $D01A
C - - - - - 0x01D00A 07:CFFA: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D00D 07:CFFD: 38        SEC
C - - - - - 0x01D00E 07:CFFE: ED 62 00  SBC a: ram_0062
C - - - - - 0x01D011 07:D001: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D014 07:D004: CE 10 00  DEC a: ram_0010
C - - - - - 0x01D017 07:D007: A9 00     LDA #$00
C - - - - - 0x01D019 07:D009: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D01C 07:D00C: AD 10 00  LDA a: ram_0010
C - - - - - 0x01D01F 07:D00F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D022 07:D012: D0 05     BNE $D019
C - - - - - 0x01D024 07:D014: A9 00     LDA #$00
C - - - - - 0x01D026 07:D016: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D029 07:D019: 60        RTS
C - - - - - 0x01D02A 07:D01A: A9 00     LDA #$00
C - - - - - 0x01D02C 07:D01C: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D02F 07:D01F: 20 92 DC  JSR $DC92
C - - - - - 0x01D032 07:D022: 60        RTS
C - - - - - 0x01D033 07:D023: A9 00     LDA #$00
C - - - - - 0x01D035 07:D025: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D038 07:D028: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01D03B 07:D02B: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D03E 07:D02E: D0 2D     BNE $D05D
C - - - - - 0x01D040 07:D030: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D043 07:D033: 18        CLC
C - - - - - 0x01D044 07:D034: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D047 07:D037: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D04A 07:D03A: A9 00     LDA #$00
C - - - - - 0x01D04C 07:D03C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D04F 07:D03F: AD 62 00  LDA a: ram_0062
C - - - - - 0x01D052 07:D042: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D055 07:D045: F0 05     BEQ $D04C
C - - - - - 0x01D057 07:D047: A9 00     LDA #$00
C - - - - - 0x01D059 07:D049: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D05C 07:D04C: A9 3C     LDA #$3C
C - - - - - 0x01D05E 07:D04E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D061 07:D051: AD 10 00  LDA a: ram_0010
C - - - - - 0x01D064 07:D054: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D067 07:D057: 10 03     BPL $D05C
C - - - - - 0x01D069 07:D059: EE 10 00  INC a: ram_0010
C - - - - - 0x01D06C 07:D05C: 60        RTS
C - - - - - 0x01D06D 07:D05D: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D070 07:D060: 0A        ASL
C - - - - - 0x01D071 07:D061: 0A        ASL
C - - - - - 0x01D072 07:D062: 0A        ASL
C - - - - - 0x01D073 07:D063: 8D 63 00  STA a: ram_0063
C - - - - - 0x01D076 07:D066: A9 E8     LDA #$E8
C - - - - - 0x01D078 07:D068: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D07B 07:D06B: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D07E 07:D06E: 29 F8     AND #$F8
C - - - - - 0x01D080 07:D070: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D083 07:D073: D0 0B     BNE $D080
C - - - - - 0x01D085 07:D075: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D088 07:D078: 18        CLC
C - - - - - 0x01D089 07:D079: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D08C 07:D07C: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D08F 07:D07F: 60        RTS
C - - - - - 0x01D090 07:D080: A9 F0     LDA #$F0
C - - - - - 0x01D092 07:D082: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D095 07:D085: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D098 07:D088: 29 F0     AND #$F0
C - - - - - 0x01D09A 07:D08A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D09D 07:D08D: D0 0B     BNE $D09A
C - - - - - 0x01D09F 07:D08F: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D0A2 07:D092: 18        CLC
C - - - - - 0x01D0A3 07:D093: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D0A6 07:D096: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D0A9 07:D099: 60        RTS
C - - - - - 0x01D0AA 07:D09A: A9 7F     LDA #$7F
C - - - - - 0x01D0AC 07:D09C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D0AF 07:D09F: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D0B2 07:D0A2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D0B5 07:D0A5: 30 03     BMI $D0AA
C - - - - - 0x01D0B7 07:D0A7: 4C 44 D1  JMP $D144
C - - - - - 0x01D0BA 07:D0AA: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D0BD 07:D0AD: 18        CLC
C - - - - - 0x01D0BE 07:D0AE: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D0C1 07:D0B1: 4A        LSR
C - - - - - 0x01D0C2 07:D0B2: 4A        LSR
C - - - - - 0x01D0C3 07:D0B3: 4A        LSR
C - - - - - 0x01D0C4 07:D0B4: 4A        LSR
C - - - - - 0x01D0C5 07:D0B5: 8D 65 00  STA a: ram_0065
C - - - - - 0x01D0C8 07:D0B8: AD 63 00  LDA a: ram_0063
C - - - - - 0x01D0CB 07:D0BB: 18        CLC
C - - - - - 0x01D0CC 07:D0BC: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01D0CF 07:D0BF: 8D 66 00  STA a: ram_0066
C - - - - - 0x01D0D2 07:D0C2: AE 66 00  LDX a: ram_0066
C - - - - - 0x01D0D5 07:D0C5: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D0D8 07:D0C8: 8D 67 00  STA a: ram_0067
C - - - - - 0x01D0DB 07:D0CB: A9 00     LDA #$00
C - - - - - 0x01D0DD 07:D0CD: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D0E0 07:D0D0: AD 67 00  LDA a: ram_0067
C - - - - - 0x01D0E3 07:D0D3: 2D 54 00  AND a: ram_0054
C - - - - - 0x01D0E6 07:D0D6: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D0E9 07:D0D9: F0 03     BEQ $D0DE
C - - - - - 0x01D0EB 07:D0DB: 4C E1 D1  JMP $D1E1
C - - - - - 0x01D0EE 07:D0DE: A9 00     LDA #$00
C - - - - - 0x01D0F0 07:D0E0: 8D 64 00  STA a: ram_0064
C - - - - - 0x01D0F3 07:D0E3: A9 04     LDA #$04
C - - - - - 0x01D0F5 07:D0E5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D0F8 07:D0E8: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D0FB 07:D0EB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D0FE 07:D0EE: 30 0F     BMI $D0FF
C - - - - - 0x01D100 07:D0F0: F0 0D     BEQ $D0FF
C - - - - - 0x01D102 07:D0F2: AD 66 00  LDA a: ram_0066
C - - - - - 0x01D105 07:D0F5: 18        CLC
C - - - - - 0x01D106 07:D0F6: 69 08     ADC #$08
C - - - - - 0x01D108 07:D0F8: AA        TAX
C - - - - - 0x01D109 07:D0F9: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D10C 07:D0FC: 8D 64 00  STA a: ram_0064
C - - - - - 0x01D10F 07:D0FF: A9 00     LDA #$00
C - - - - - 0x01D111 07:D101: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D114 07:D104: AD 64 00  LDA a: ram_0064
C - - - - - 0x01D117 07:D107: 2D 54 00  AND a: ram_0054
C - - - - - 0x01D11A 07:D10A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D11D 07:D10D: F0 03     BEQ $D112
C - - - - - 0x01D11F 07:D10F: 4C E1 D1  JMP $D1E1
C - - - - - 0x01D122 07:D112: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D125 07:D115: 18        CLC
C - - - - - 0x01D126 07:D116: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D129 07:D119: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D12C 07:D11C: A9 00     LDA #$00
C - - - - - 0x01D12E 07:D11E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D131 07:D121: AD 62 00  LDA a: ram_0062
C - - - - - 0x01D134 07:D124: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D137 07:D127: F0 05     BEQ $D12E
C - - - - - 0x01D139 07:D129: A9 00     LDA #$00
C - - - - - 0x01D13B 07:D12B: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D13E 07:D12E: A9 3C     LDA #$3C
C - - - - - 0x01D140 07:D130: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D143 07:D133: AD 10 00  LDA a: ram_0010
C - - - - - 0x01D146 07:D136: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D149 07:D139: 10 03     BPL $D13E
C - - - - - 0x01D14B 07:D13B: EE 10 00  INC a: ram_0010
C - - - - - 0x01D14E 07:D13E: A9 00     LDA #$00
C - - - - - 0x01D150 07:D140: 8D 5D 00  STA a: ram_005D
C - - - - - 0x01D153 07:D143: 60        RTS
C - - - - - 0x01D154 07:D144: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D157 07:D147: 18        CLC
C - - - - - 0x01D158 07:D148: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D15B 07:D14B: 18        CLC
C - - - - - 0x01D15C 07:D14C: 69 90     ADC #$90
C - - - - - 0x01D15E 07:D14E: 4A        LSR
C - - - - - 0x01D15F 07:D14F: 4A        LSR
C - - - - - 0x01D160 07:D150: 4A        LSR
C - - - - - 0x01D161 07:D151: 4A        LSR
C - - - - - 0x01D162 07:D152: 8D 65 00  STA a: ram_0065
C - - - - - 0x01D165 07:D155: AD 63 00  LDA a: ram_0063
C - - - - - 0x01D168 07:D158: 18        CLC
C - - - - - 0x01D169 07:D159: 6D 65 00  ADC a: ram_0065
C - - - - - 0x01D16C 07:D15C: 8D 66 00  STA a: ram_0066
C - - - - - 0x01D16F 07:D15F: AE 66 00  LDX a: ram_0066
C - - - - - 0x01D172 07:D162: BD 00 02  LDA ram_0200,X
C - - - - - 0x01D175 07:D165: 8D 67 00  STA a: ram_0067
C - - - - - 0x01D178 07:D168: A9 00     LDA #$00
C - - - - - 0x01D17A 07:D16A: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D17D 07:D16D: AD 67 00  LDA a: ram_0067
C - - - - - 0x01D180 07:D170: 2D 54 00  AND a: ram_0054
C - - - - - 0x01D183 07:D173: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D186 07:D176: F0 03     BEQ $D17B
C - - - - - 0x01D188 07:D178: 4C E1 D1  JMP $D1E1
C - - - - - 0x01D18B 07:D17B: A9 00     LDA #$00
C - - - - - 0x01D18D 07:D17D: 8D 64 00  STA a: ram_0064
C - - - - - 0x01D190 07:D180: A9 04     LDA #$04
C - - - - - 0x01D192 07:D182: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D195 07:D185: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D198 07:D188: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D19B 07:D18B: 30 0F     BMI $D19C
C - - - - - 0x01D19D 07:D18D: F0 0D     BEQ $D19C
C - - - - - 0x01D19F 07:D18F: AD 66 00  LDA a: ram_0066
C - - - - - 0x01D1A2 07:D192: 18        CLC
C - - - - - 0x01D1A3 07:D193: 69 08     ADC #$08
C - - - - - 0x01D1A5 07:D195: AA        TAX
C - - - - - 0x01D1A6 07:D196: BD 00 02  LDA ram_0200,X
C - - - - - 0x01D1A9 07:D199: 8D 64 00  STA a: ram_0064
C - - - - - 0x01D1AC 07:D19C: A9 00     LDA #$00
C - - - - - 0x01D1AE 07:D19E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D1B1 07:D1A1: AD 64 00  LDA a: ram_0064
C - - - - - 0x01D1B4 07:D1A4: 2D 54 00  AND a: ram_0054
C - - - - - 0x01D1B7 07:D1A7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D1BA 07:D1AA: F0 03     BEQ $D1AF
C - - - - - 0x01D1BC 07:D1AC: 4C E1 D1  JMP $D1E1
C - - - - - 0x01D1BF 07:D1AF: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D1C2 07:D1B2: 18        CLC
C - - - - - 0x01D1C3 07:D1B3: 6D 62 00  ADC a: ram_0062
C - - - - - 0x01D1C6 07:D1B6: 8D 0C 00  STA a: ram_000C
C - - - - - 0x01D1C9 07:D1B9: A9 00     LDA #$00
C - - - - - 0x01D1CB 07:D1BB: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D1CE 07:D1BE: AD 62 00  LDA a: ram_0062
C - - - - - 0x01D1D1 07:D1C1: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D1D4 07:D1C4: F0 05     BEQ $D1CB
C - - - - - 0x01D1D6 07:D1C6: A9 00     LDA #$00
C - - - - - 0x01D1D8 07:D1C8: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D1DB 07:D1CB: A9 3C     LDA #$3C
C - - - - - 0x01D1DD 07:D1CD: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D1E0 07:D1D0: AD 10 00  LDA a: ram_0010
C - - - - - 0x01D1E3 07:D1D3: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D1E6 07:D1D6: 10 03     BPL $D1DB
C - - - - - 0x01D1E8 07:D1D8: EE 10 00  INC a: ram_0010
C - - - - - 0x01D1EB 07:D1DB: A9 00     LDA #$00
C - - - - - 0x01D1ED 07:D1DD: 8D 5D 00  STA a: ram_005D
C - - - - - 0x01D1F0 07:D1E0: 60        RTS
C - - - - - 0x01D1F1 07:D1E1: A9 02     LDA #$02
C - - - - - 0x01D1F3 07:D1E3: 8D 0F 00  STA a: ram_000F
C - - - - - 0x01D1F6 07:D1E6: A9 11     LDA #$11
C - - - - - 0x01D1F8 07:D1E8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D1FB 07:D1EB: AD 10 00  LDA a: ram_0010
C - - - - - 0x01D1FE 07:D1EE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D201 07:D1F1: 30 06     BMI $D1F9
C - - - - - 0x01D203 07:D1F3: A9 0C     LDA #$0C
C - - - - - 0x01D205 07:D1F5: 8D 10 00  STA a: ram_0010
C - - - - - 0x01D208 07:D1F8: 60        RTS
C - - - - - 0x01D209 07:D1F9: A9 00     LDA #$00
C - - - - - 0x01D20B 07:D1FB: 8D 10 00  STA a: ram_0010
C - - - - - 0x01D20E 07:D1FE: A9 01     LDA #$01
C - - - - - 0x01D210 07:D200: 8D 5D 00  STA a: ram_005D
C - - - - - 0x01D213 07:D203: 60        RTS
C - - - - - 0x01D214 07:D204: AD 58 80  LDA $8058
C - - - - - 0x01D217 07:D207: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D21A 07:D20A: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D21D 07:D20D: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D220 07:D210: D0 01     BNE $D213
C - - - - - 0x01D222 07:D212: 60        RTS
C - - - - - 0x01D223 07:D213: AD 59 80  LDA $8059
C - - - - - 0x01D226 07:D216: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D229 07:D219: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D22C 07:D21C: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D22F 07:D21F: D0 05     BNE $D226
C - - - - - 0x01D231 07:D221: A9 01     LDA #$01
C - - - - - 0x01D233 07:D223: 8D 27 00  STA a: ram_0027
C - - - - - 0x01D236 07:D226: EE 5F 00  INC a: ram_005F
C - - - - - 0x01D239 07:D229: A9 10     LDA #$10
C - - - - - 0x01D23B 07:D22B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D23E 07:D22E: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D241 07:D231: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D244 07:D234: D0 08     BNE $D23E
C - - - - - 0x01D246 07:D236: A9 00     LDA #$00
C - - - - - 0x01D248 07:D238: 8D 5F 00  STA a: ram_005F
C - - - - - 0x01D24B 07:D23B: EE 5E 00  INC a: ram_005E
C - - - - - 0x01D24E 07:D23E: A9 0A     LDA #$0A
C - - - - - 0x01D250 07:D240: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D253 07:D243: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D256 07:D246: 38        SEC
C - - - - - 0x01D257 07:D247: ED 20 00  SBC a: ram_0020
C - - - - - 0x01D25A 07:D24A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D25D 07:D24D: 30 05     BMI $D254
C - - - - - 0x01D25F 07:D24F: F0 03     BEQ $D254
C - - - - - 0x01D261 07:D251: 20 E5 D6  JSR $D6E5
C - - - - - 0x01D264 07:D254: 60        RTS
C - - - - - 0x01D265 07:D255: A9 00     LDA #$00
C - - - - - 0x01D267 07:D257: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D26A 07:D25A: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D26D 07:D25D: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D270 07:D260: D0 0E     BNE $D270
C - - - - - 0x01D272 07:D262: A9 08     LDA #$08
C - - - - - 0x01D274 07:D264: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D277 07:D267: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D27A 07:D26A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D27D 07:D26D: 10 01     BPL $D270
C - - - - - 0x01D27F 07:D26F: 60        RTS
C - - - - - 0x01D280 07:D270: AD 5A 80  LDA $805A
C - - - - - 0x01D283 07:D273: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D286 07:D276: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D289 07:D279: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D28C 07:D27C: D0 0E     BNE $D28C
C - - - - - 0x01D28E 07:D27E: A9 01     LDA #$01
C - - - - - 0x01D290 07:D280: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D293 07:D283: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D296 07:D286: CD 09 00  CMP a: ram_0009
- - - - - - 0x01D299 07:D289: 10        .byte $10   ; 
- - - - - - 0x01D29A 07:D28A: 01        .byte $01   ; 
- - - - - - 0x01D29B 07:D28B: 60        .byte $60   ; 
- - - - - - 0x01D29C 07:D28C: CE        .byte $CE   ; 
- - - - - - 0x01D29D 07:D28D: 5F        .byte $5F   ; 
- - - - - - 0x01D29E 07:D28E: 00        .byte $00   ; 
- - - - - - 0x01D29F 07:D28F: A9        .byte $A9   ; 
- - - - - - 0x01D2A0 07:D290: FF        .byte $FF   ; 
- - - - - - 0x01D2A1 07:D291: 8D        .byte $8D   ; 
- - - - - - 0x01D2A2 07:D292: 09        .byte $09   ; 
- - - - - - 0x01D2A3 07:D293: 00        .byte $00   ; 
- - - - - - 0x01D2A4 07:D294: AD        .byte $AD   ; 
C - - - - - 0x01D2A5 07:D295: 5F        UNDEFINED
C - - - - - 0x01D2A6 07:D296: 00        BRK
C - - - - - 0x01D2A7 07:D297: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D2AA 07:D29A: D0 08     BNE $D2A4
C - - - - - 0x01D2AC 07:D29C: A9 0F     LDA #$0F
C - - - - - 0x01D2AE 07:D29E: 8D 5F 00  STA a: ram_005F
C - - - - - 0x01D2B1 07:D2A1: CE 5E 00  DEC a: ram_005E
C - - - - - 0x01D2B4 07:D2A4: A9 06     LDA #$06
C - - - - - 0x01D2B6 07:D2A6: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D2B9 07:D2A9: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D2BC 07:D2AC: 38        SEC
C - - - - - 0x01D2BD 07:D2AD: ED 20 00  SBC a: ram_0020
C - - - - - 0x01D2C0 07:D2B0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D2C3 07:D2B3: 10 05     BPL $D2BA
C - - - - - 0x01D2C5 07:D2B5: F0 03     BEQ $D2BA
C - - - - - 0x01D2C7 07:D2B7: 20 73 D7  JSR $D773
C - - - - - 0x01D2CA 07:D2BA: 60        RTS
C - - - - - 0x01D2CB 07:D2BB: A9 20     LDA #$20
C - - - - - 0x01D2CD 07:D2BD: 8D 24 00  STA a: ram_0024
C - - - - - 0x01D2D0 07:D2C0: EE 25 00  INC a: ram_0025
C - - - - - 0x01D2D3 07:D2C3: A9 00     LDA #$00
C - - - - - 0x01D2D5 07:D2C5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D2D8 07:D2C8: AD 25 00  LDA a: ram_0025
C - - - - - 0x01D2DB 07:D2CB: 29 08     AND #$08
C - - - - - 0x01D2DD 07:D2CD: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D2E0 07:D2D0: F0 05     BEQ $D2D7
C - - - - - 0x01D2E2 07:D2D2: A9 28     LDA #$28
C - - - - - 0x01D2E4 07:D2D4: 8D 24 00  STA a: ram_0024
C - - - - - 0x01D2E7 07:D2D7: A9 00     LDA #$00
C - - - - - 0x01D2E9 07:D2D9: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D2EC 07:D2DC: AD 59 00  LDA a: ram_0059
C - - - - - 0x01D2EF 07:D2DF: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D2F2 07:D2E2: D0 05     BNE $D2E9
C - - - - - 0x01D2F4 07:D2E4: A9 00     LDA #$00
C - - - - - 0x01D2F6 07:D2E6: 8D 25 00  STA a: ram_0025
C - - - - - 0x01D2F9 07:D2E9: A9 02     LDA #$02
C - - - - - 0x01D2FB 07:D2EB: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D2FE 07:D2EE: AD 0F 00  LDA a: ram_000F
C - - - - - 0x01D301 07:D2F1: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D304 07:D2F4: F0 05     BEQ $D2FB
C - - - - - 0x01D306 07:D2F6: A9 30     LDA #$30
C - - - - - 0x01D308 07:D2F8: 8D 24 00  STA a: ram_0024
C - - - - - 0x01D30B 07:D2FB: A9 00     LDA #$00
C - - - - - 0x01D30D 07:D2FD: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D310 07:D300: AD 12 00  LDA a: ram_0012
C - - - - - 0x01D313 07:D303: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D316 07:D306: F0 05     BEQ $D30D
C - - - - - 0x01D318 07:D308: A9 38     LDA #$38
C - - - - - 0x01D31A 07:D30A: 8D 24 00  STA a: ram_0024
C - - - - - 0x01D31D 07:D30D: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01D320 07:D310: 38        SEC
C - - - - - 0x01D321 07:D311: E9 20     SBC #$20
C - - - - - 0x01D323 07:D313: 8D 68 00  STA a: ram_0068
C - - - - - 0x01D326 07:D316: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01D329 07:D319: 38        SEC
C - - - - - 0x01D32A 07:D31A: ED 20 00  SBC a: ram_0020
C - - - - - 0x01D32D 07:D31D: 0A        ASL
C - - - - - 0x01D32E 07:D31E: 0A        ASL
C - - - - - 0x01D32F 07:D31F: 0A        ASL
C - - - - - 0x01D330 07:D320: 0A        ASL
C - - - - - 0x01D331 07:D321: 48        PHA
C - - - - - 0x01D332 07:D322: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01D335 07:D325: 38        SEC
C - - - - - 0x01D336 07:D326: ED 21 00  SBC a: ram_0021
C - - - - - 0x01D339 07:D329: 8D 11 00  STA a: ram_0011
C - - - - - 0x01D33C 07:D32C: 68        PLA
C - - - - - 0x01D33D 07:D32D: 18        CLC
C - - - - - 0x01D33E 07:D32E: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01D341 07:D331: 38        SEC
C - - - - - 0x01D342 07:D332: E9 01     SBC #$01
C - - - - - 0x01D344 07:D334: 8D 69 00  STA a: ram_0069
C - - - - - 0x01D347 07:D337: A9 01     LDA #$01
C - - - - - 0x01D349 07:D339: 8D 6A 00  STA a: ram_006A
C - - - - - 0x01D34C 07:D33C: A9 00     LDA #$00
C - - - - - 0x01D34E 07:D33E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D351 07:D341: AD 0D 00  LDA a: ram_000D
C - - - - - 0x01D354 07:D344: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D357 07:D347: F0 08     BEQ $D351
C - - - - - 0x01D359 07:D349: AD 0D 00  LDA a: ram_000D
C - - - - - 0x01D35C 07:D34C: 29 03     AND #$03
C - - - - - 0x01D35E 07:D34E: 8D 6A 00  STA a: ram_006A
C - - - - - 0x01D361 07:D351: A9 00     LDA #$00
C - - - - - 0x01D363 07:D353: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D366 07:D356: AD 5A 00  LDA a: ram_005A
C - - - - - 0x01D369 07:D359: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D36C 07:D35C: F0 33     BEQ $D391
C - - - - - 0x01D36E 07:D35E: AD 69 00  LDA a: ram_0069
C - - - - - 0x01D371 07:D361: 18        CLC
C - - - - - 0x01D372 07:D362: 69 04     ADC #$04
C - - - - - 0x01D374 07:D364: 8D 6B 00  STA a: ram_006B
- - - - - - 0x01D377 07:D367: AD        .byte $AD   ; 
- - - - - - 0x01D378 07:D368: 0C        .byte $0C   ; 
- - - - - - 0x01D379 07:D369: 00        .byte $00   ; 
- - - - - - 0x01D37A 07:D36A: 38        .byte $38   ; 
- - - - - - 0x01D37B 07:D36B: E9        .byte $E9   ; 
- - - - - - 0x01D37C 07:D36C: 02        .byte $02   ; 
- - - - - - 0x01D37D 07:D36D: 8D        .byte $8D   ; 
- - - - - - 0x01D37E 07:D36E: 6C        .byte $6C   ; 
- - - - - - 0x01D37F 07:D36F: 00        .byte $00   ; 
- - - - - - 0x01D380 07:D370: A9        .byte $A9   ; 
- - - - - - 0x01D381 07:D371: 03        .byte $03   ; 
- - - - - - 0x01D382 07:D372: 8D        .byte $8D   ; 
- - - - - - 0x01D383 07:D373: 6D        .byte $6D   ; 
- - - - - - 0x01D384 07:D374: 00        .byte $00   ; 
- - - - - - 0x01D385 07:D375: A9        .byte $A9   ; 
- - - - - - 0x01D386 07:D376: 00        .byte $00   ; 
- - - - - - 0x01D387 07:D377: 8D        .byte $8D   ; 
- - - - - - 0x01D388 07:D378: 09        .byte $09   ; 
- - - - - - 0x01D389 07:D379: 00        .byte $00   ; 
- - - - - - 0x01D38A 07:D37A: AD        .byte $AD   ; 
- - - - - - 0x01D38B 07:D37B: 1B        .byte $1B   ; 
- - - - - - 0x01D38C 07:D37C: 00        .byte $00   ; 
- - - - - - 0x01D38D 07:D37D: 29        .byte $29   ; 
- - - - - - 0x01D38E 07:D37E: 02        .byte $02   ; 
- - - - - - 0x01D38F 07:D37F: CD        .byte $CD   ; 
- - - - - - 0x01D390 07:D380: 09        .byte $09   ; 
- - - - - - 0x01D391 07:D381: 00        .byte $00   ; 
- - - - - - 0x01D392 07:D382: F0        .byte $F0   ; 
- - - - - - 0x01D393 07:D383: 05        .byte $05   ; 
- - - - - - 0x01D394 07:D384: A9        .byte $A9   ; 
- - - - - - 0x01D395 07:D385: 43        .byte $43   ; 
- - - - - - 0x01D396 07:D386: 8D        .byte $8D   ; 
- - - - - - 0x01D397 07:D387: 6D        .byte $6D   ; 
- - - - - - 0x01D398 07:D388: 00        .byte $00   ; 
- - - - - - 0x01D399 07:D389: A9        .byte $A9   ; 
- - - - - - 0x01D39A 07:D38A: 1E        .byte $1E   ; 
- - - - - - 0x01D39B 07:D38B: 8D        .byte $8D   ; 
- - - - - - 0x01D39C 07:D38C: 6E        .byte $6E   ; 
- - - - - - 0x01D39D 07:D38D: 00        .byte $00   ; 
- - - - - - 0x01D39E 07:D38E: 20        .byte $20   ; 
- - - - - - 0x01D39F 07:D38F: F5        .byte $F5   ; 
- - - - - - 0x01D3A0 07:D390: F4        .byte $F4   ; 
- - - - - - 0x01D3A1 07:D391: A9        .byte $A9   ; 
- - - - - - 0x01D3A2 07:D392: 01        .byte $01   ; 
- - - - - - 0x01D3A3 07:D393: 8D        .byte $8D   ; 
- - - - - - 0x01D3A4 07:D394: 09        .byte $09   ; 
- - - - - - 0x01D3A5 07:D395: 00        .byte $00   ; 
- - - - - - 0x01D3A6 07:D396: AD        .byte $AD   ; 
- - - - - - 0x01D3A7 07:D397: 1C        .byte $1C   ; 
- - - - - - 0x01D3A8 07:D398: 00        .byte $00   ; 
- - - - - - 0x01D3A9 07:D399: CD        .byte $CD   ; 
C - - - - - 0x01D3AA 07:D39A: 09 00     ORA #$00
C - - - - - 0x01D3AC 07:D39C: D0 03     BNE $D3A1
C - - - - - 0x01D3AE 07:D39E: 4C A4 D3  JMP $D3A4
C - - - - - 0x01D3B1 07:D3A1: 4C 3A D4  JMP $D43A
C - - - - - 0x01D3B4 07:D3A4: A2 00     LDX #$00
C - - - - - 0x01D3B6 07:D3A6: AD 68 00  LDA a: ram_0068
C - - - - - 0x01D3B9 07:D3A9: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3BC 07:D3AC: A2 01     LDX #$01
C - - - - - 0x01D3BE 07:D3AE: AD 24 00  LDA a: ram_0024
C - - - - - 0x01D3C1 07:D3B1: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3C4 07:D3B4: A2 02     LDX #$02
C - - - - - 0x01D3C6 07:D3B6: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D3C9 07:D3B9: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3CC 07:D3BC: A2 03     LDX #$03
C - - - - - 0x01D3CE 07:D3BE: AD 69 00  LDA a: ram_0069
C - - - - - 0x01D3D1 07:D3C1: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3D4 07:D3C4: A2 04     LDX #$04
C - - - - - 0x01D3D6 07:D3C6: A9 10     LDA #$10
C - - - - - 0x01D3D8 07:D3C8: 18        CLC
C - - - - - 0x01D3D9 07:D3C9: 6D 68 00  ADC a: ram_0068
C - - - - - 0x01D3DC 07:D3CC: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3DF 07:D3CF: A2 05     LDX #$05
C - - - - - 0x01D3E1 07:D3D1: A9 02     LDA #$02
C - - - - - 0x01D3E3 07:D3D3: 18        CLC
C - - - - - 0x01D3E4 07:D3D4: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D3E7 07:D3D7: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3EA 07:D3DA: A2 06     LDX #$06
C - - - - - 0x01D3EC 07:D3DC: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D3EF 07:D3DF: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3F2 07:D3E2: A2 07     LDX #$07
C - - - - - 0x01D3F4 07:D3E4: AD 69 00  LDA a: ram_0069
C - - - - - 0x01D3F7 07:D3E7: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D3FA 07:D3EA: A2 08     LDX #$08
C - - - - - 0x01D3FC 07:D3EC: AD 68 00  LDA a: ram_0068
C - - - - - 0x01D3FF 07:D3EF: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D402 07:D3F2: A2 09     LDX #$09
C - - - - - 0x01D404 07:D3F4: A9 04     LDA #$04
C - - - - - 0x01D406 07:D3F6: 18        CLC
C - - - - - 0x01D407 07:D3F7: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D40A 07:D3FA: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D40D 07:D3FD: A2 0A     LDX #$0A
C - - - - - 0x01D40F 07:D3FF: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D412 07:D402: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D415 07:D405: A2 0B     LDX #$0B
C - - - - - 0x01D417 07:D407: A9 08     LDA #$08
C - - - - - 0x01D419 07:D409: 18        CLC
C - - - - - 0x01D41A 07:D40A: 6D 69 00  ADC a: ram_0069
C - - - - - 0x01D41D 07:D40D: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D420 07:D410: A2 0C     LDX #$0C
C - - - - - 0x01D422 07:D412: A9 10     LDA #$10
C - - - - - 0x01D424 07:D414: 18        CLC
C - - - - - 0x01D425 07:D415: 6D 68 00  ADC a: ram_0068
C - - - - - 0x01D428 07:D418: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D42B 07:D41B: A2 0D     LDX #$0D
C - - - - - 0x01D42D 07:D41D: A9 06     LDA #$06
C - - - - - 0x01D42F 07:D41F: 18        CLC
C - - - - - 0x01D430 07:D420: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D433 07:D423: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D436 07:D426: A2 0E     LDX #$0E
C - - - - - 0x01D438 07:D428: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D43B 07:D42B: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D43E 07:D42E: A2 0F     LDX #$0F
C - - - - - 0x01D440 07:D430: A9 08     LDA #$08
C - - - - - 0x01D442 07:D432: 18        CLC
C - - - - - 0x01D443 07:D433: 6D 69 00  ADC a: ram_0069
C - - - - - 0x01D446 07:D436: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D449 07:D439: 60        RTS
C - - - - - 0x01D44A 07:D43A: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D44D 07:D43D: 18        CLC
C - - - - - 0x01D44E 07:D43E: 69 40     ADC #$40
C - - - - - 0x01D450 07:D440: 8D 6A 00  STA a: ram_006A
C - - - - - 0x01D453 07:D443: A2 00     LDX #$00
C - - - - - 0x01D455 07:D445: AD 68 00  LDA a: ram_0068
C - - - - - 0x01D458 07:D448: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D45B 07:D44B: A2 01     LDX #$01
C - - - - - 0x01D45D 07:D44D: A9 04     LDA #$04
C - - - - - 0x01D45F 07:D44F: 18        CLC
C - - - - - 0x01D460 07:D450: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D463 07:D453: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D466 07:D456: A2 02     LDX #$02
C - - - - - 0x01D468 07:D458: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D46B 07:D45B: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D46E 07:D45E: A2 03     LDX #$03
C - - - - - 0x01D470 07:D460: AD 69 00  LDA a: ram_0069
C - - - - - 0x01D473 07:D463: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D476 07:D466: A2 04     LDX #$04
C - - - - - 0x01D478 07:D468: A9 10     LDA #$10
C - - - - - 0x01D47A 07:D46A: 18        CLC
C - - - - - 0x01D47B 07:D46B: 6D 68 00  ADC a: ram_0068
C - - - - - 0x01D47E 07:D46E: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D481 07:D471: A2 05     LDX #$05
C - - - - - 0x01D483 07:D473: A9 06     LDA #$06
C - - - - - 0x01D485 07:D475: 18        CLC
C - - - - - 0x01D486 07:D476: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D489 07:D479: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D48C 07:D47C: A2 06     LDX #$06
C - - - - - 0x01D48E 07:D47E: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D491 07:D481: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D494 07:D484: A2 07     LDX #$07
C - - - - - 0x01D496 07:D486: AD 69 00  LDA a: ram_0069
C - - - - - 0x01D499 07:D489: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D49C 07:D48C: A2 08     LDX #$08
C - - - - - 0x01D49E 07:D48E: AD 68 00  LDA a: ram_0068
C - - - - - 0x01D4A1 07:D491: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4A4 07:D494: A2 09     LDX #$09
C - - - - - 0x01D4A6 07:D496: AD 24 00  LDA a: ram_0024
C - - - - - 0x01D4A9 07:D499: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4AC 07:D49C: A2 0A     LDX #$0A
C - - - - - 0x01D4AE 07:D49E: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D4B1 07:D4A1: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4B4 07:D4A4: A2 0B     LDX #$0B
C - - - - - 0x01D4B6 07:D4A6: A9 08     LDA #$08
C - - - - - 0x01D4B8 07:D4A8: 18        CLC
C - - - - - 0x01D4B9 07:D4A9: 6D 69 00  ADC a: ram_0069
C - - - - - 0x01D4BC 07:D4AC: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4BF 07:D4AF: A2 0C     LDX #$0C
C - - - - - 0x01D4C1 07:D4B1: A9 10     LDA #$10
C - - - - - 0x01D4C3 07:D4B3: 18        CLC
C - - - - - 0x01D4C4 07:D4B4: 6D 68 00  ADC a: ram_0068
C - - - - - 0x01D4C7 07:D4B7: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4CA 07:D4BA: A2 0D     LDX #$0D
C - - - - - 0x01D4CC 07:D4BC: A9 02     LDA #$02
C - - - - - 0x01D4CE 07:D4BE: 18        CLC
C - - - - - 0x01D4CF 07:D4BF: 6D 24 00  ADC a: ram_0024
C - - - - - 0x01D4D2 07:D4C2: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4D5 07:D4C5: A2 0E     LDX #$0E
C - - - - - 0x01D4D7 07:D4C7: AD 6A 00  LDA a: ram_006A
C - - - - - 0x01D4DA 07:D4CA: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4DD 07:D4CD: A2 0F     LDX #$0F
C - - - - - 0x01D4DF 07:D4CF: A9 08     LDA #$08
C - - - - - 0x01D4E1 07:D4D1: 18        CLC
C - - - - - 0x01D4E2 07:D4D2: 6D 69 00  ADC a: ram_0069
C - - - - - 0x01D4E5 07:D4D5: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4E8 07:D4D8: 60        RTS
C - - - - - 0x01D4E9 07:D4D9: A9 00     LDA #$00
C - - - - - 0x01D4EB 07:D4DB: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01D4EE 07:D4DE: AD 0A 00  LDA a: ram_000A
C - - - - - 0x01D4F1 07:D4E1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D4F4 07:D4E4: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01D4F7 07:D4E7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D4FA 07:D4EA: 30 01     BMI $D4ED
C - - - - - 0x01D4FC 07:D4EC: 60        RTS
C - - - - - 0x01D4FD 07:D4ED: AE 22 00  LDX a: ram_0022
C - - - - - 0x01D500 07:D4F0: A9 08     LDA #$08
C - - - - - 0x01D502 07:D4F2: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D505 07:D4F5: A9 01     LDA #$01
C - - - - - 0x01D507 07:D4F7: 18        CLC
C - - - - - 0x01D508 07:D4F8: 6D 22 00  ADC a: ram_0022
C - - - - - 0x01D50B 07:D4FB: AA        TAX
C - - - - - 0x01D50C 07:D4FC: A9 02     LDA #$02
C - - - - - 0x01D50E 07:D4FE: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D511 07:D501: A9 02     LDA #$02
C - - - - - 0x01D513 07:D503: 18        CLC
C - - - - - 0x01D514 07:D504: 6D 22 00  ADC a: ram_0022
C - - - - - 0x01D517 07:D507: AA        TAX
C - - - - - 0x01D518 07:D508: A9 02     LDA #$02
C - - - - - 0x01D51A 07:D50A: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D51D 07:D50D: A9 03     LDA #$03
C - - - - - 0x01D51F 07:D50F: 18        CLC
C - - - - - 0x01D520 07:D510: 6D 22 00  ADC a: ram_0022
C - - - - - 0x01D523 07:D513: AA        TAX
C - - - - - 0x01D524 07:D514: A9 10     LDA #$10
C - - - - - 0x01D526 07:D516: 48        PHA
C - - - - - 0x01D527 07:D517: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01D52A 07:D51A: 0A        ASL
C - - - - - 0x01D52B 07:D51B: 0A        ASL
C - - - - - 0x01D52C 07:D51C: 0A        ASL
C - - - - - 0x01D52D 07:D51D: 8D 11 00  STA a: ram_0011
C - - - - - 0x01D530 07:D520: 68        PLA
C - - - - - 0x01D531 07:D521: 18        CLC
C - - - - - 0x01D532 07:D522: 6D 11 00  ADC a: ram_0011
C - - - - - 0x01D535 07:D525: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D538 07:D528: AD 22 00  LDA a: ram_0022
C - - - - - 0x01D53B 07:D52B: 18        CLC
C - - - - - 0x01D53C 07:D52C: 69 04     ADC #$04
C - - - - - 0x01D53E 07:D52E: 8D 22 00  STA a: ram_0022
C - - - - - 0x01D541 07:D531: EE 0E 00  INC a: ram_000E
C - - - - - 0x01D544 07:D534: 4C DE D4  JMP $D4DE
C - - - - - 0x01D547 07:D537: 60        RTS
C - - - - - 0x01D548 07:D538: 60        RTS
C - - - - - 0x01D549 07:D539: A9 01     LDA #$01
C - - - - - 0x01D54B 07:D53B: 8D 16 40  STA $4016
C - - - - - 0x01D54E 07:D53E: A9 00     LDA #$00
- - - - - - 0x01D550 07:D540: 8D        .byte $8D   ; 
- - - - - - 0x01D551 07:D541: 16        .byte $16   ; 
C - - - - - 0x01D552 07:D542: 40        RTI
C - - - - - 0x01D553 07:D543: AD 16 40  LDA $4016
C - - - - - 0x01D556 07:D546: 29 01     AND #$01
C - - - - - 0x01D558 07:D548: 8D 13 00  STA a: ram_0013
C - - - - - 0x01D55B 07:D54B: AD 16 40  LDA $4016
C - - - - - 0x01D55E 07:D54E: 29 01     AND #$01
C - - - - - 0x01D560 07:D550: 8D 14 00  STA a: ram_0014
C - - - - - 0x01D563 07:D553: AD 16 40  LDA $4016
C - - - - - 0x01D566 07:D556: 29 01     AND #$01
C - - - - - 0x01D568 07:D558: 8D 19 00  STA a: ram_0019
C - - - - - 0x01D56B 07:D55B: AD 16 40  LDA $4016
C - - - - - 0x01D56E 07:D55E: 29 01     AND #$01
C - - - - - 0x01D570 07:D560: 8D 1A 00  STA a: ram_001A
C - - - - - 0x01D573 07:D563: AD 16 40  LDA $4016
C - - - - - 0x01D576 07:D566: 29 01     AND #$01
C - - - - - 0x01D578 07:D568: 8D 15 00  STA a: ram_0015
C - - - - - 0x01D57B 07:D56B: AD 16 40  LDA $4016
C - - - - - 0x01D57E 07:D56E: 29 01     AND #$01
C - - - - - 0x01D580 07:D570: 8D 16 00  STA a: ram_0016
C - - - - - 0x01D583 07:D573: AD 16 40  LDA $4016
C - - - - - 0x01D586 07:D576: 29 01     AND #$01
C - - - - - 0x01D588 07:D578: 8D 18 00  STA a: ram_0018
C - - - - - 0x01D58B 07:D57B: AD 16 40  LDA $4016
C - - - - - 0x01D58E 07:D57E: 29 01     AND #$01
C - - - - - 0x01D590 07:D580: 8D 17 00  STA a: ram_0017
C - - - - - 0x01D593 07:D583: 60        RTS
C - - - - - 0x01D594 07:D584: A9 9F     LDA #$9F
C - - - - - 0x01D596 07:D586: 8D 04 40  STA $4004
C - - - - - 0x01D599 07:D589: A9 8C     LDA #$8C
C - - - - - 0x01D59B 07:D58B: 8D 05 40  STA $4005
C - - - - - 0x01D59E 07:D58E: A9 4D     LDA #$4D
C - - - - - 0x01D5A0 07:D590: 8D 06 40  STA $4006
C - - - - - 0x01D5A3 07:D593: A9 95     LDA #$95
C - - - - - 0x01D5A5 07:D595: 8D 07 40  STA $4007
C - - - - - 0x01D5A8 07:D598: 60        RTS
C - - - - - 0x01D5A9 07:D599: A9 9F     LDA #$9F
C - - - - - 0x01D5AB 07:D59B: 8D 00 40  STA $4000
C - - - - - 0x01D5AE 07:D59E: A9 84     LDA #$84
C - - - - - 0x01D5B0 07:D5A0: 8D 01 40  STA $4001
- - - - - - 0x01D5B3 07:D5A3: A9        .byte $A9   ; 
- - - - - - 0x01D5B4 07:D5A4: D3        .byte $D3   ; 
- - - - - - 0x01D5B5 07:D5A5: 8D        .byte $8D   ; 
- - - - - - 0x01D5B6 07:D5A6: 02        .byte $02   ; 
- - - - - - 0x01D5B7 07:D5A7: 40        .byte $40   ; 
- - - - - - 0x01D5B8 07:D5A8: A9        .byte $A9   ; 
- - - - - - 0x01D5B9 07:D5A9: FC        .byte $FC   ; 
- - - - - - 0x01D5BA 07:D5AA: 8D        .byte $8D   ; 
- - - - - - 0x01D5BB 07:D5AB: 03        .byte $03   ; 
- - - - - - 0x01D5BC 07:D5AC: 40        .byte $40   ; 
- - - - - - 0x01D5BD 07:D5AD: 60        .byte $60   ; 
- - - - - - 0x01D5BE 07:D5AE: A9        .byte $A9   ; 
- - - - - - 0x01D5BF 07:D5AF: 88        .byte $88   ; 
- - - - - - 0x01D5C0 07:D5B0: 8D        .byte $8D   ; 
- - - - - - 0x01D5C1 07:D5B1: 00        .byte $00   ; 
- - - - - - 0x01D5C2 07:D5B2: 40        .byte $40   ; 
- - - - - - 0x01D5C3 07:D5B3: A9        .byte $A9   ; 
- - - - - - 0x01D5C4 07:D5B4: 48        .byte $48   ; 
- - - - - - 0x01D5C5 07:D5B5: 8D        .byte $8D   ; 
- - - - - - 0x01D5C6 07:D5B6: 01        .byte $01   ; 
- - - - - - 0x01D5C7 07:D5B7: 40        .byte $40   ; 
- - - - - - 0x01D5C8 07:D5B8: A9        .byte $A9   ; 
- - - - - - 0x01D5C9 07:D5B9: 25        .byte $25   ; 
- - - - - - 0x01D5CA 07:D5BA: 8D        .byte $8D   ; 
- - - - - - 0x01D5CB 07:D5BB: 02        .byte $02   ; 
- - - - - - 0x01D5CC 07:D5BC: 40        .byte $40   ; 
- - - - - - 0x01D5CD 07:D5BD: A9        .byte $A9   ; 
- - - - - - 0x01D5CE 07:D5BE: 4B        .byte $4B   ; 
- - - - - - 0x01D5CF 07:D5BF: 8D        .byte $8D   ; 
- - - - - - 0x01D5D0 07:D5C0: 03        .byte $03   ; 
- - - - - - 0x01D5D1 07:D5C1: 40        .byte $40   ; 
- - - - - - 0x01D5D2 07:D5C2: 60        .byte $60   ; 
- - - - - - 0x01D5D3 07:D5C3: A9        .byte $A9   ; 
- - - - - - 0x01D5D4 07:D5C4: 0B        .byte $0B   ; 
- - - - - - 0x01D5D5 07:D5C5: 8D        .byte $8D   ; 
- - - - - - 0x01D5D6 07:D5C6: 0C        .byte $0C   ; 
- - - - - - 0x01D5D7 07:D5C7: 40        .byte $40   ; 
- - - - - - 0x01D5D8 07:D5C8: A9        .byte $A9   ; 
- - - - - - 0x01D5D9 07:D5C9: FF        .byte $FF   ; 
- - - - - - 0x01D5DA 07:D5CA: 8D        .byte $8D   ; 
- - - - - - 0x01D5DB 07:D5CB: 0D        .byte $0D   ; 
C - - - - - 0x01D5DC 07:D5CC: 40        RTI
C - - - - - 0x01D5DD 07:D5CD: A9 FF     LDA #$FF
C - - - - - 0x01D5DF 07:D5CF: 8D 0E 40  STA $400E
C - - - - - 0x01D5E2 07:D5D2: A9 08     LDA #$08
C - - - - - 0x01D5E4 07:D5D4: 8D 0F 40  STA $400F
C - - - - - 0x01D5E7 07:D5D7: 60        RTS
C - - - - - 0x01D5E8 07:D5D8: A9 0F     LDA #$0F
C - - - - - 0x01D5EA 07:D5DA: 8D 0C 40  STA $400C
C - - - - - 0x01D5ED 07:D5DD: A9 FF     LDA #$FF
C - - - - - 0x01D5EF 07:D5DF: 8D 0D 40  STA $400D
- - - - - - 0x01D5F2 07:D5E2: A9        .byte $A9   ; 
- - - - - - 0x01D5F3 07:D5E3: F9        .byte $F9   ; 
- - - - - - 0x01D5F4 07:D5E4: 8D        .byte $8D   ; 
- - - - - - 0x01D5F5 07:D5E5: 0E        .byte $0E   ; 
- - - - - - 0x01D5F6 07:D5E6: 40        .byte $40   ; 
- - - - - - 0x01D5F7 07:D5E7: A9        .byte $A9   ; 
- - - - - - 0x01D5F8 07:D5E8: 08        .byte $08   ; 
- - - - - - 0x01D5F9 07:D5E9: 8D        .byte $8D   ; 
- - - - - - 0x01D5FA 07:D5EA: 0F        .byte $0F   ; 
- - - - - - 0x01D5FB 07:D5EB: 40        .byte $40   ; 
- - - - - - 0x01D5FC 07:D5EC: 60        .byte $60   ; 
- - - - - - 0x01D5FD 07:D5ED: A9        .byte $A9   ; 
- - - - - - 0x01D5FE 07:D5EE: 00        .byte $00   ; 
- - - - - - 0x01D5FF 07:D5EF: 8D        .byte $8D   ; 
- - - - - - 0x01D600 07:D5F0: 09        .byte $09   ; 
- - - - - - 0x01D601 07:D5F1: 00        .byte $00   ; 
- - - - - - 0x01D602 07:D5F2: AD        .byte $AD   ; 
- - - - - - 0x01D603 07:D5F3: 1E        .byte $1E   ; 
- - - - - - 0x01D604 07:D5F4: 00        .byte $00   ; 
- - - - - - 0x01D605 07:D5F5: 29        .byte $29   ; 
C - - - - - 0x01D606 07:D5F6: 04        UNDEFINED
C - - - - - 0x01D607 07:D5F7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D60A 07:D5FA: F0 0D     BEQ $D609
C - - - - - 0x01D60C 07:D5FC: A9 31     LDA #$31
C - - - - - 0x01D60E 07:D5FE: 8D 00 20  STA $2000
C - - - - - 0x01D611 07:D601: A9 1C     LDA #$1C
C - - - - - 0x01D613 07:D603: 8D 01 20  STA $2001
C - - - - - 0x01D616 07:D606: 4C 13 D6  JMP $D613
C - - - - - 0x01D619 07:D609: A9 30     LDA #$30
C - - - - - 0x01D61B 07:D60B: 8D 00 20  STA $2000
C - - - - - 0x01D61E 07:D60E: A9 1C     LDA #$1C
C - - - - - 0x01D620 07:D610: 8D 01 20  STA $2001
C - - - - - 0x01D623 07:D613: AD 1E 00  LDA a: ram_001E
C - - - - - 0x01D626 07:D616: 0A        ASL
C - - - - - 0x01D627 07:D617: 0A        ASL
C - - - - - 0x01D628 07:D618: 0A        ASL
C - - - - - 0x01D629 07:D619: 0A        ASL
C - - - - - 0x01D62A 07:D61A: 0A        ASL
C - - - - - 0x01D62B 07:D61B: 0A        ASL
C - - - - - 0x01D62C 07:D61C: 18        CLC
C - - - - - 0x01D62D 07:D61D: 6D 1F 00  ADC a: ram_001F
C - - - - - 0x01D630 07:D620: 8D 05 20  STA $2005
C - - - - - 0x01D633 07:D623: A9 00     LDA #$00
C - - - - - 0x01D635 07:D625: 8D 05 20  STA $2005
C - - - - - 0x01D638 07:D628: 60        RTS
C - - - - - 0x01D639 07:D629: A9 00     LDA #$00
C - - - - - 0x01D63B 07:D62B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D63E 07:D62E: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D641 07:D631: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D644 07:D634: D0 01     BNE $D637
C - - - - - 0x01D646 07:D636: 60        RTS
C - - - - - 0x01D647 07:D637: A9 06     LDA #$06
C - - - - - 0x01D649 07:D639: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D64C 07:D63C: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D64F 07:D63F: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D652 07:D642: 30 03     BMI $D647
C - - - - - 0x01D654 07:D644: 4C 96 D6  JMP $D696
C - - - - - 0x01D657 07:D647: AD 1E 00  LDA a: ram_001E
C - - - - - 0x01D65A 07:D64A: 18        CLC
C - - - - - 0x01D65B 07:D64B: 69 05     ADC #$05
C - - - - - 0x01D65D 07:D64D: 8D 52 00  STA a: ram_0052
C - - - - - 0x01D660 07:D650: A9 01     LDA #$01
C - - - - - 0x01D662 07:D652: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D665 07:D655: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D668 07:D658: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D66B 07:D65B: D0 03     BNE $D660
C - - - - - 0x01D66D 07:D65D: 20 B4 C4  JSR $C4B4
C - - - - - 0x01D670 07:D660: A9 03     LDA #$03
C - - - - - 0x01D672 07:D662: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D675 07:D665: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D678 07:D668: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D67B 07:D66B: D0 03     BNE $D670
C - - - - - 0x01D67D 07:D66D: 20 AA C5  JSR $C5AA
C - - - - - 0x01D680 07:D670: A9 04     LDA #$04
C - - - - - 0x01D682 07:D672: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D685 07:D675: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D688 07:D678: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D68B 07:D67B: D0 03     BNE $D680
C - - - - - 0x01D68D 07:D67D: 20 A0 C6  JSR $C6A0
C - - - - - 0x01D690 07:D680: A9 05     LDA #$05
C - - - - - 0x01D692 07:D682: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D695 07:D685: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D698 07:D688: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D69B 07:D68B: D0 03     BNE $D690
C - - - - - 0x01D69D 07:D68D: 20 06 C7  JSR $C706
C - - - - - 0x01D6A0 07:D690: A9 00     LDA #$00
C - - - - - 0x01D6A2 07:D692: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D6A5 07:D695: 60        RTS
C - - - - - 0x01D6A6 07:D696: AD 1E 00  LDA a: ram_001E
C - - - - - 0x01D6A9 07:D699: 38        SEC
C - - - - - 0x01D6AA 07:D69A: E9 01     SBC #$01
C - - - - - 0x01D6AC 07:D69C: 8D 52 00  STA a: ram_0052
C - - - - - 0x01D6AF 07:D69F: A9 06     LDA #$06
C - - - - - 0x01D6B1 07:D6A1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D6B4 07:D6A4: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D6B7 07:D6A7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D6BA 07:D6AA: D0 03     BNE $D6AF
C - - - - - 0x01D6BC 07:D6AC: 20 B4 C4  JSR $C4B4
C - - - - - 0x01D6BF 07:D6AF: A9 08     LDA #$08
C - - - - - 0x01D6C1 07:D6B1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D6C4 07:D6B4: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D6C7 07:D6B7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D6CA 07:D6BA: D0 03     BNE $D6BF
C - - - - - 0x01D6CC 07:D6BC: 20 AA C5  JSR $C5AA
C - - - - - 0x01D6CF 07:D6BF: A9 09     LDA #$09
C - - - - - 0x01D6D1 07:D6C1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D6D4 07:D6C4: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D6D7 07:D6C7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D6DA 07:D6CA: D0 03     BNE $D6CF
C - - - - - 0x01D6DC 07:D6CC: 20 A0 C6  JSR $C6A0
C - - - - - 0x01D6DF 07:D6CF: A9 0A     LDA #$0A
C - - - - - 0x01D6E1 07:D6D1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D6E4 07:D6D4: AD 58 00  LDA a: ram_0058
C - - - - - 0x01D6E7 07:D6D7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D6EA 07:D6DA: D0 03     BNE $D6DF
C - - - - - 0x01D6EC 07:D6DC: 20 06 C7  JSR $C706
C - - - - - 0x01D6EF 07:D6DF: A9 00     LDA #$00
C - - - - - 0x01D6F1 07:D6E1: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D6F4 07:D6E4: 60        RTS
C - - - - - 0x01D6F5 07:D6E5: AD 5B 80  LDA $805B
C - - - - - 0x01D6F8 07:D6E8: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D6FB 07:D6EB: AD 20 00  LDA a: ram_0020
C - - - - - 0x01D6FE 07:D6EE: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D701 07:D6F1: D0 06     BNE $D6F9
C - - - - - 0x01D703 07:D6F3: A9 01     LDA #$01
C - - - - - 0x01D705 07:D6F5: 8D 0B 00  STA a: ram_000B
C - - - - - 0x01D708 07:D6F8: 60        RTS
C - - - - - 0x01D709 07:D6F9: EE 21 00  INC a: ram_0021
C - - - - - 0x01D70C 07:D6FC: A9 10     LDA #$10
C - - - - - 0x01D70E 07:D6FE: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D711 07:D701: AD 21 00  LDA a: ram_0021
C - - - - - 0x01D714 07:D704: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D717 07:D707: D0 08     BNE $D711
C - - - - - 0x01D719 07:D709: A9 00     LDA #$00
C - - - - - 0x01D71B 07:D70B: 8D 21 00  STA a: ram_0021
C - - - - - 0x01D71E 07:D70E: EE 20 00  INC a: ram_0020
C - - - - - 0x01D721 07:D711: A9 3F     LDA #$3F
C - - - - - 0x01D723 07:D713: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D726 07:D716: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D729 07:D719: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D72C 07:D71C: D0 09     BNE $D727
C - - - - - 0x01D72E 07:D71E: A9 00     LDA #$00
C - - - - - 0x01D730 07:D720: 8D 1F 00  STA a: ram_001F
C - - - - - 0x01D733 07:D723: EE 1E 00  INC a: ram_001E
C - - - - - 0x01D736 07:D726: 60        RTS
C - - - - - 0x01D737 07:D727: EE 1F 00  INC a: ram_001F
C - - - - - 0x01D73A 07:D72A: A9 0A     LDA #$0A
C - - - - - 0x01D73C 07:D72C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D73F 07:D72F: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D742 07:D732: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D745 07:D735: D0 05     BNE $D73C
C - - - - - 0x01D747 07:D737: A9 01     LDA #$01
C - - - - - 0x01D749 07:D739: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D74C 07:D73C: A9 1E     LDA #$1E
C - - - - - 0x01D74E 07:D73E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D751 07:D741: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D754 07:D744: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D757 07:D747: D0 05     BNE $D74E
C - - - - - 0x01D759 07:D749: A9 03     LDA #$03
C - - - - - 0x01D75B 07:D74B: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D75E 07:D74E: A9 28     LDA #$28
C - - - - - 0x01D760 07:D750: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D763 07:D753: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D766 07:D756: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D769 07:D759: D0 05     BNE $D760
C - - - - - 0x01D76B 07:D75B: A9 04     LDA #$04
C - - - - - 0x01D76D 07:D75D: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D770 07:D760: A9 32     LDA #$32
C - - - - - 0x01D772 07:D762: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D775 07:D765: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D778 07:D768: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D77B 07:D76B: D0 05     BNE $D772
C - - - - - 0x01D77D 07:D76D: A9 05     LDA #$05
C - - - - - 0x01D77F 07:D76F: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D782 07:D772: 60        RTS
C - - - - - 0x01D783 07:D773: A9 00     LDA #$00
C - - - - - 0x01D785 07:D775: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D788 07:D778: AD 1E 00  LDA a: ram_001E
C - - - - - 0x01D78B 07:D77B: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D78E 07:D77E: D0 0E     BNE $D78E
C - - - - - 0x01D790 07:D780: A9 01     LDA #$01
C - - - - - 0x01D792 07:D782: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D795 07:D785: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D798 07:D788: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D79B 07:D78B: 10 01     BPL $D78E
C - - - - - 0x01D79D 07:D78D: 60        RTS
C - - - - - 0x01D79E 07:D78E: AD 5B 80  LDA $805B
C - - - - - 0x01D7A1 07:D791: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D7A4 07:D794: AD 20 00  LDA a: ram_0020
C - - - - - 0x01D7A7 07:D797: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D7AA 07:D79A: D0 01     BNE $D79D
C - - - - - 0x01D7AC 07:D79C: 60        RTS
C - - - - - 0x01D7AD 07:D79D: CE 21 00  DEC a: ram_0021
C - - - - - 0x01D7B0 07:D7A0: A9 FF     LDA #$FF
C - - - - - 0x01D7B2 07:D7A2: 8D 09 00  STA a: ram_0009
- - - - - - 0x01D7B5 07:D7A5: AD        .byte $AD   ; 
C - - - - - 0x01D7B6 07:D7A6: 21 00     AND (ram_0000,X)
C - - - - - 0x01D7B8 07:D7A8: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D7BB 07:D7AB: D0 08     BNE $D7B5
C - - - - - 0x01D7BD 07:D7AD: A9 0F     LDA #$0F
C - - - - - 0x01D7BF 07:D7AF: 8D 21 00  STA a: ram_0021
C - - - - - 0x01D7C2 07:D7B2: CE 20 00  DEC a: ram_0020
C - - - - - 0x01D7C5 07:D7B5: A9 00     LDA #$00
C - - - - - 0x01D7C7 07:D7B7: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D7CA 07:D7BA: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D7CD 07:D7BD: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D7D0 07:D7C0: D0 09     BNE $D7CB
C - - - - - 0x01D7D2 07:D7C2: A9 3F     LDA #$3F
C - - - - - 0x01D7D4 07:D7C4: 8D 1F 00  STA a: ram_001F
C - - - - - 0x01D7D7 07:D7C7: CE 1E 00  DEC a: ram_001E
C - - - - - 0x01D7DA 07:D7CA: 60        RTS
C - - - - - 0x01D7DB 07:D7CB: CE 1F 00  DEC a: ram_001F
C - - - - - 0x01D7DE 07:D7CE: A9 00     LDA #$00
C - - - - - 0x01D7E0 07:D7D0: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D7E3 07:D7D3: AD 1E 00  LDA a: ram_001E
C - - - - - 0x01D7E6 07:D7D6: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D7E9 07:D7D9: D0 01     BNE $D7DC
C - - - - - 0x01D7EB 07:D7DB: 60        RTS
C - - - - - 0x01D7EC 07:D7DC: A9 08     LDA #$08
C - - - - - 0x01D7EE 07:D7DE: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D7F1 07:D7E1: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D7F4 07:D7E4: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D7F7 07:D7E7: D0 05     BNE $D7EE
C - - - - - 0x01D7F9 07:D7E9: A9 06     LDA #$06
C - - - - - 0x01D7FB 07:D7EB: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D7FE 07:D7EE: A9 1C     LDA #$1C
C - - - - - 0x01D800 07:D7F0: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D803 07:D7F3: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D806 07:D7F6: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D809 07:D7F9: D0 05     BNE $D800
C - - - - - 0x01D80B 07:D7FB: A9 08     LDA #$08
C - - - - - 0x01D80D 07:D7FD: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D810 07:D800: A9 26     LDA #$26
C - - - - - 0x01D812 07:D802: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D815 07:D805: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D818 07:D808: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D81B 07:D80B: D0 05     BNE $D812
C - - - - - 0x01D81D 07:D80D: A9 09     LDA #$09
C - - - - - 0x01D81F 07:D80F: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D822 07:D812: A9 30     LDA #$30
C - - - - - 0x01D824 07:D814: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D827 07:D817: AD 1F 00  LDA a: ram_001F
C - - - - - 0x01D82A 07:D81A: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D82D 07:D81D: D0 05     BNE $D824
C - - - - - 0x01D82F 07:D81F: A9 0A     LDA #$0A
C - - - - - 0x01D831 07:D821: 8D 58 00  STA a: ram_0058
C - - - - - 0x01D834 07:D824: 60        RTS
C - - - - - 0x01D835 07:D825: 20 E9 DA  JSR $DAE9
C - - - - - 0x01D838 07:D828: A9 21     LDA #$21
C - - - - - 0x01D83A 07:D82A: 8D 06 20  STA $2006
C - - - - - 0x01D83D 07:D82D: A9 08     LDA #$08
C - - - - - 0x01D83F 07:D82F: 8D 06 20  STA $2006
C - - - - - 0x01D842 07:D832: A2 00     LDX #$00
C - - - - - 0x01D844 07:D834: BD B8 BF  LDA $BFB8,X
C - - - - - 0x01D847 07:D837: 8D 07 20  STA $2007
C - - - - - 0x01D84A 07:D83A: E8        INX
C - - - - - 0x01D84B 07:D83B: E0 20     CPX #$20
C - - - - - 0x01D84D 07:D83D: D0 F5     BNE $D834
C - - - - - 0x01D84F 07:D83F: A9 21     LDA #$21
C - - - - - 0x01D851 07:D841: 8D 06 20  STA $2006
C - - - - - 0x01D854 07:D844: A9 68     LDA #$68
C - - - - - 0x01D856 07:D846: 8D 06 20  STA $2006
C - - - - - 0x01D859 07:D849: A2 00     LDX #$00
C - - - - - 0x01D85B 07:D84B: BD D8 BF  LDA $BFD8,X
C - - - - - 0x01D85E 07:D84E: 8D 07 20  STA $2007
C - - - - - 0x01D861 07:D851: E8        INX
C - - - - - 0x01D862 07:D852: E0 20     CPX #$20
C - - - - - 0x01D864 07:D854: D0 F5     BNE $D84B
C - - - - - 0x01D866 07:D856: 20 8E DB  JSR $DB8E
C - - - - - 0x01D869 07:D859: AD 08 00  LDA a: ram_0008
C - - - - - 0x01D86C 07:D85C: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01D86F 07:D85F: A9 22     LDA #$22
C - - - - - 0x01D871 07:D861: 8D 06 20  STA $2006
C - - - - - 0x01D874 07:D864: A9 04     LDA #$04
C - - - - - 0x01D876 07:D866: 8D 06 20  STA $2006
C - - - - - 0x01D879 07:D869: A9 EE     LDA #$EE
C - - - - - 0x01D87B 07:D86B: 8D 07 20  STA $2007
C - - - - - 0x01D87E 07:D86E: A9 EF     LDA #$EF
C - - - - - 0x01D880 07:D870: 8D 07 20  STA $2007
C - - - - - 0x01D883 07:D873: CE 0E 00  DEC a: ram_000E
C - - - - - 0x01D886 07:D876: A9 00     LDA #$00
C - - - - - 0x01D888 07:D878: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D88B 07:D87B: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01D88E 07:D87E: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D891 07:D881: F0 03     BEQ $D886
C - - - - - 0x01D893 07:D883: 4C 69 D8  JMP $D869
C - - - - - 0x01D896 07:D886: AD 08 00  LDA a: ram_0008
C - - - - - 0x01D899 07:D889: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01D89C 07:D88C: A9 22     LDA #$22
C - - - - - 0x01D89E 07:D88E: 8D 06 20  STA $2006
C - - - - - 0x01D8A1 07:D891: A9 24     LDA #$24
C - - - - - 0x01D8A3 07:D893: 8D 06 20  STA $2006
C - - - - - 0x01D8A6 07:D896: A9 FE     LDA #$FE
C - - - - - 0x01D8A8 07:D898: 8D 07 20  STA $2007
C - - - - - 0x01D8AB 07:D89B: A9 FF     LDA #$FF
C - - - - - 0x01D8AD 07:D89D: 8D 07 20  STA $2007
C - - - - - 0x01D8B0 07:D8A0: CE 0E 00  DEC a: ram_000E
C - - - - - 0x01D8B3 07:D8A3: A9 00     LDA #$00
C - - - - - 0x01D8B5 07:D8A5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01D8B8 07:D8A8: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01D8BB 07:D8AB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01D8BE 07:D8AE: F0 03     BEQ $D8B3
C - - - - - 0x01D8C0 07:D8B0: 4C 96 D8  JMP $D896
C - - - - - 0x01D8C3 07:D8B3: 20 09 DB  JSR $DB09
C - - - - - 0x01D8C6 07:D8B6: 60        RTS
C - - - - - 0x01D8C7 07:D8B7: 20 E9 DA  JSR $DAE9
C - - - - - 0x01D8CA 07:D8BA: 20 8E DB  JSR $DB8E
C - - - - - 0x01D8CD 07:D8BD: A9 20     LDA #$20
C - - - - - 0x01D8CF 07:D8BF: 8D 06 20  STA $2006
- - - - - - 0x01D8D2 07:D8C2: A9        .byte $A9   ; 
- - - - - - 0x01D8D3 07:D8C3: 48        .byte $48   ; 
- - - - - - 0x01D8D4 07:D8C4: 8D        .byte $8D   ; 
- - - - - - 0x01D8D5 07:D8C5: 06        .byte $06   ; 
- - - - - - 0x01D8D6 07:D8C6: 20        .byte $20   ; 
- - - - - - 0x01D8D7 07:D8C7: A9        .byte $A9   ; 
- - - - - - 0x01D8D8 07:D8C8: 00        .byte $00   ; 
- - - - - - 0x01D8D9 07:D8C9: 8D        .byte $8D   ; 
- - - - - - 0x01D8DA 07:D8CA: 0E        .byte $0E   ; 
- - - - - - 0x01D8DB 07:D8CB: 00        .byte $00   ; 
- - - - - - 0x01D8DC 07:D8CC: AE        .byte $AE   ; 
- - - - - - 0x01D8DD 07:D8CD: 0E        .byte $0E   ; 
- - - - - - 0x01D8DE 07:D8CE: 00        .byte $00   ; 
- - - - - - 0x01D8DF 07:D8CF: BD        .byte $BD   ; 
- - - - - - 0x01D8E0 07:D8D0: 01        .byte $01   ; 
- - - - - - 0x01D8E1 07:D8D1: E4        .byte $E4   ; 
- - - - - - 0x01D8E2 07:D8D2: 8D        .byte $8D   ; 
- - - - - - 0x01D8E3 07:D8D3: 07        .byte $07   ; 
- - - - - - 0x01D8E4 07:D8D4: 20        .byte $20   ; 
- - - - - - 0x01D8E5 07:D8D5: EE        .byte $EE   ; 
- - - - - - 0x01D8E6 07:D8D6: 0E        .byte $0E   ; 
- - - - - - 0x01D8E7 07:D8D7: 00        .byte $00   ; 
- - - - - - 0x01D8E8 07:D8D8: A9        .byte $A9   ; 
- - - - - - 0x01D8E9 07:D8D9: 0F        .byte $0F   ; 
- - - - - - 0x01D8EA 07:D8DA: 8D        .byte $8D   ; 
- - - - - - 0x01D8EB 07:D8DB: 09        .byte $09   ; 
- - - - - - 0x01D8EC 07:D8DC: 00        .byte $00   ; 
- - - - - - 0x01D8ED 07:D8DD: AD        .byte $AD   ; 
- - - - - - 0x01D8EE 07:D8DE: 0E        .byte $0E   ; 
- - - - - - 0x01D8EF 07:D8DF: 00        .byte $00   ; 
- - - - - - 0x01D8F0 07:D8E0: CD        .byte $CD   ; 
- - - - - - 0x01D8F1 07:D8E1: 09        .byte $09   ; 
- - - - - - 0x01D8F2 07:D8E2: 00        .byte $00   ; 
- - - - - - 0x01D8F3 07:D8E3: F0        .byte $F0   ; 
- - - - - - 0x01D8F4 07:D8E4: 03        .byte $03   ; 
- - - - - - 0x01D8F5 07:D8E5: 4C        .byte $4C   ; 
- - - - - - 0x01D8F6 07:D8E6: CC        .byte $CC   ; 
- - - - - - 0x01D8F7 07:D8E7: D8        .byte $D8   ; 
- - - - - - 0x01D8F8 07:D8E8: 20        .byte $20   ; 
- - - - - - 0x01D8F9 07:D8E9: 8E        .byte $8E   ; 
- - - - - - 0x01D8FA 07:D8EA: DB        .byte $DB   ; 
- - - - - - 0x01D8FB 07:D8EB: A9        .byte $A9   ; 
- - - - - - 0x01D8FC 07:D8EC: 20        .byte $20   ; 
- - - - - - 0x01D8FD 07:D8ED: 8D        .byte $8D   ; 
- - - - - - 0x01D8FE 07:D8EE: 06        .byte $06   ; 
- - - - - - 0x01D8FF 07:D8EF: 20        .byte $20   ; 
- - - - - - 0x01D900 07:D8F0: A9        .byte $A9   ; 
- - - - - - 0x01D901 07:D8F1: AB        .byte $AB   ; 
- - - - - - 0x01D902 07:D8F2: 8D        .byte $8D   ; 
- - - - - - 0x01D903 07:D8F3: 06        .byte $06   ; 
- - - - - - 0x01D904 07:D8F4: 20        .byte $20   ; 
- - - - - - 0x01D905 07:D8F5: A9        .byte $A9   ; 
- - - - - - 0x01D906 07:D8F6: 00        .byte $00   ; 
- - - - - - 0x01D907 07:D8F7: 8D        .byte $8D   ; 
- - - - - - 0x01D908 07:D8F8: 0E        .byte $0E   ; 
- - - - - - 0x01D909 07:D8F9: 00        .byte $00   ; 
- - - - - - 0x01D90A 07:D8FA: AE        .byte $AE   ; 
- - - - - - 0x01D90B 07:D8FB: 0E        .byte $0E   ; 
- - - - - - 0x01D90C 07:D8FC: 00        .byte $00   ; 
- - - - - - 0x01D90D 07:D8FD: BD        .byte $BD   ; 
- - - - - - 0x01D90E 07:D8FE: 10        .byte $10   ; 
- - - - - - 0x01D90F 07:D8FF: E4        .byte $E4   ; 
- - - - - - 0x01D910 07:D900: 8D        .byte $8D   ; 
- - - - - - 0x01D911 07:D901: 07        .byte $07   ; 
- - - - - - 0x01D912 07:D902: 20        .byte $20   ; 
- - - - - - 0x01D913 07:D903: EE        .byte $EE   ; 
- - - - - - 0x01D914 07:D904: 0E        .byte $0E   ; 
- - - - - - 0x01D915 07:D905: 00        .byte $00   ; 
- - - - - - 0x01D916 07:D906: A9        .byte $A9   ; 
- - - - - - 0x01D917 07:D907: 08        .byte $08   ; 
- - - - - - 0x01D918 07:D908: 8D        .byte $8D   ; 
- - - - - - 0x01D919 07:D909: 09        .byte $09   ; 
- - - - - - 0x01D91A 07:D90A: 00        .byte $00   ; 
- - - - - - 0x01D91B 07:D90B: AD        .byte $AD   ; 
- - - - - - 0x01D91C 07:D90C: 0E        .byte $0E   ; 
- - - - - - 0x01D91D 07:D90D: 00        .byte $00   ; 
- - - - - - 0x01D91E 07:D90E: CD        .byte $CD   ; 
- - - - - - 0x01D91F 07:D90F: 09        .byte $09   ; 
- - - - - - 0x01D920 07:D910: 00        .byte $00   ; 
- - - - - - 0x01D921 07:D911: F0        .byte $F0   ; 
- - - - - - 0x01D922 07:D912: 03        .byte $03   ; 
- - - - - - 0x01D923 07:D913: 4C        .byte $4C   ; 
- - - - - - 0x01D924 07:D914: FA        .byte $FA   ; 
- - - - - - 0x01D925 07:D915: D8        .byte $D8   ; 
- - - - - - 0x01D926 07:D916: 20        .byte $20   ; 
- - - - - - 0x01D927 07:D917: 8E        .byte $8E   ; 
- - - - - - 0x01D928 07:D918: DB        .byte $DB   ; 
- - - - - - 0x01D929 07:D919: A9        .byte $A9   ; 
- - - - - - 0x01D92A 07:D91A: 21        .byte $21   ; 
- - - - - - 0x01D92B 07:D91B: 8D        .byte $8D   ; 
- - - - - - 0x01D92C 07:D91C: 06        .byte $06   ; 
- - - - - - 0x01D92D 07:D91D: 20        .byte $20   ; 
- - - - - - 0x01D92E 07:D91E: A9        .byte $A9   ; 
- - - - - - 0x01D92F 07:D91F: 01        .byte $01   ; 
- - - - - - 0x01D930 07:D920: 8D        .byte $8D   ; 
- - - - - - 0x01D931 07:D921: 06        .byte $06   ; 
- - - - - - 0x01D932 07:D922: 20        .byte $20   ; 
- - - - - - 0x01D933 07:D923: A9        .byte $A9   ; 
- - - - - - 0x01D934 07:D924: 00        .byte $00   ; 
- - - - - - 0x01D935 07:D925: 8D        .byte $8D   ; 
- - - - - - 0x01D936 07:D926: 0E        .byte $0E   ; 
- - - - - - 0x01D937 07:D927: 00        .byte $00   ; 
- - - - - - 0x01D938 07:D928: AE        .byte $AE   ; 
- - - - - - 0x01D939 07:D929: 0E        .byte $0E   ; 
- - - - - - 0x01D93A 07:D92A: 00        .byte $00   ; 
- - - - - - 0x01D93B 07:D92B: BD        .byte $BD   ; 
- - - - - - 0x01D93C 07:D92C: 19        .byte $19   ; 
- - - - - - 0x01D93D 07:D92D: E4        .byte $E4   ; 
- - - - - - 0x01D93E 07:D92E: 8D        .byte $8D   ; 
- - - - - - 0x01D93F 07:D92F: 07        .byte $07   ; 
- - - - - - 0x01D940 07:D930: 20        .byte $20   ; 
- - - - - - 0x01D941 07:D931: EE        .byte $EE   ; 
- - - - - - 0x01D942 07:D932: 0E        .byte $0E   ; 
- - - - - - 0x01D943 07:D933: 00        .byte $00   ; 
- - - - - - 0x01D944 07:D934: A9        .byte $A9   ; 
- - - - - - 0x01D945 07:D935: 1E        .byte $1E   ; 
- - - - - - 0x01D946 07:D936: 8D        .byte $8D   ; 
- - - - - - 0x01D947 07:D937: 09        .byte $09   ; 
- - - - - - 0x01D948 07:D938: 00        .byte $00   ; 
- - - - - - 0x01D949 07:D939: AD        .byte $AD   ; 
- - - - - - 0x01D94A 07:D93A: 0E        .byte $0E   ; 
- - - - - - 0x01D94B 07:D93B: 00        .byte $00   ; 
- - - - - - 0x01D94C 07:D93C: CD        .byte $CD   ; 
- - - - - - 0x01D94D 07:D93D: 09        .byte $09   ; 
- - - - - - 0x01D94E 07:D93E: 00        .byte $00   ; 
- - - - - - 0x01D94F 07:D93F: F0        .byte $F0   ; 
- - - - - - 0x01D950 07:D940: 03        .byte $03   ; 
- - - - - - 0x01D951 07:D941: 4C        .byte $4C   ; 
- - - - - - 0x01D952 07:D942: 28        .byte $28   ; 
- - - - - - 0x01D953 07:D943: D9        .byte $D9   ; 
- - - - - - 0x01D954 07:D944: 20        .byte $20   ; 
- - - - - - 0x01D955 07:D945: 8E        .byte $8E   ; 
- - - - - - 0x01D956 07:D946: DB        .byte $DB   ; 
- - - - - - 0x01D957 07:D947: A9        .byte $A9   ; 
- - - - - - 0x01D958 07:D948: 21        .byte $21   ; 
- - - - - - 0x01D959 07:D949: 8D        .byte $8D   ; 
- - - - - - 0x01D95A 07:D94A: 06        .byte $06   ; 
- - - - - - 0x01D95B 07:D94B: 20        .byte $20   ; 
- - - - - - 0x01D95C 07:D94C: A9        .byte $A9   ; 
- - - - - - 0x01D95D 07:D94D: 61        .byte $61   ; 
- - - - - - 0x01D95E 07:D94E: 8D        .byte $8D   ; 
- - - - - - 0x01D95F 07:D94F: 06        .byte $06   ; 
- - - - - - 0x01D960 07:D950: 20        .byte $20   ; 
- - - - - - 0x01D961 07:D951: A9        .byte $A9   ; 
- - - - - - 0x01D962 07:D952: 00        .byte $00   ; 
- - - - - - 0x01D963 07:D953: 8D        .byte $8D   ; 
- - - - - - 0x01D964 07:D954: 0E        .byte $0E   ; 
- - - - - - 0x01D965 07:D955: 00        .byte $00   ; 
- - - - - - 0x01D966 07:D956: AE        .byte $AE   ; 
- - - - - - 0x01D967 07:D957: 0E        .byte $0E   ; 
- - - - - - 0x01D968 07:D958: 00        .byte $00   ; 
- - - - - - 0x01D969 07:D959: BD        .byte $BD   ; 
- - - - - - 0x01D96A 07:D95A: 37        .byte $37   ; 
- - - - - - 0x01D96B 07:D95B: E4        .byte $E4   ; 
- - - - - - 0x01D96C 07:D95C: 8D        .byte $8D   ; 
- - - - - - 0x01D96D 07:D95D: 07        .byte $07   ; 
- - - - - - 0x01D96E 07:D95E: 20        .byte $20   ; 
- - - - - - 0x01D96F 07:D95F: EE        .byte $EE   ; 
- - - - - - 0x01D970 07:D960: 0E        .byte $0E   ; 
- - - - - - 0x01D971 07:D961: 00        .byte $00   ; 
- - - - - - 0x01D972 07:D962: A9        .byte $A9   ; 
- - - - - - 0x01D973 07:D963: 1E        .byte $1E   ; 
- - - - - - 0x01D974 07:D964: 8D        .byte $8D   ; 
- - - - - - 0x01D975 07:D965: 09        .byte $09   ; 
- - - - - - 0x01D976 07:D966: 00        .byte $00   ; 
- - - - - - 0x01D977 07:D967: AD        .byte $AD   ; 
- - - - - - 0x01D978 07:D968: 0E        .byte $0E   ; 
- - - - - - 0x01D979 07:D969: 00        .byte $00   ; 
- - - - - - 0x01D97A 07:D96A: CD        .byte $CD   ; 
- - - - - - 0x01D97B 07:D96B: 09        .byte $09   ; 
- - - - - - 0x01D97C 07:D96C: 00        .byte $00   ; 
- - - - - - 0x01D97D 07:D96D: F0        .byte $F0   ; 
- - - - - - 0x01D97E 07:D96E: 03        .byte $03   ; 
- - - - - - 0x01D97F 07:D96F: 4C        .byte $4C   ; 
- - - - - - 0x01D980 07:D970: 56        .byte $56   ; 
- - - - - - 0x01D981 07:D971: D9        .byte $D9   ; 
- - - - - - 0x01D982 07:D972: 20        .byte $20   ; 
- - - - - - 0x01D983 07:D973: 8E        .byte $8E   ; 
- - - - - - 0x01D984 07:D974: DB        .byte $DB   ; 
- - - - - - 0x01D985 07:D975: A9        .byte $A9   ; 
- - - - - - 0x01D986 07:D976: 21        .byte $21   ; 
- - - - - - 0x01D987 07:D977: 8D        .byte $8D   ; 
- - - - - - 0x01D988 07:D978: 06        .byte $06   ; 
- - - - - - 0x01D989 07:D979: 20        .byte $20   ; 
- - - - - - 0x01D98A 07:D97A: A9        .byte $A9   ; 
- - - - - - 0x01D98B 07:D97B: A1        .byte $A1   ; 
- - - - - - 0x01D98C 07:D97C: 8D        .byte $8D   ; 
- - - - - - 0x01D98D 07:D97D: 06        .byte $06   ; 
- - - - - - 0x01D98E 07:D97E: 20        .byte $20   ; 
- - - - - - 0x01D98F 07:D97F: A9        .byte $A9   ; 
- - - - - - 0x01D990 07:D980: 00        .byte $00   ; 
- - - - - - 0x01D991 07:D981: 8D        .byte $8D   ; 
- - - - - - 0x01D992 07:D982: 0E        .byte $0E   ; 
- - - - - - 0x01D993 07:D983: 00        .byte $00   ; 
- - - - - - 0x01D994 07:D984: AE        .byte $AE   ; 
- - - - - - 0x01D995 07:D985: 0E        .byte $0E   ; 
- - - - - - 0x01D996 07:D986: 00        .byte $00   ; 
- - - - - - 0x01D997 07:D987: BD        .byte $BD   ; 
- - - - - - 0x01D998 07:D988: 55        .byte $55   ; 
- - - - - - 0x01D999 07:D989: E4        .byte $E4   ; 
- - - - - - 0x01D99A 07:D98A: 8D        .byte $8D   ; 
- - - - - - 0x01D99B 07:D98B: 07        .byte $07   ; 
- - - - - - 0x01D99C 07:D98C: 20        .byte $20   ; 
- - - - - - 0x01D99D 07:D98D: EE        .byte $EE   ; 
- - - - - - 0x01D99E 07:D98E: 0E        .byte $0E   ; 
- - - - - - 0x01D99F 07:D98F: 00        .byte $00   ; 
- - - - - - 0x01D9A0 07:D990: A9        .byte $A9   ; 
- - - - - - 0x01D9A1 07:D991: 1E        .byte $1E   ; 
- - - - - - 0x01D9A2 07:D992: 8D        .byte $8D   ; 
- - - - - - 0x01D9A3 07:D993: 09        .byte $09   ; 
- - - - - - 0x01D9A4 07:D994: 00        .byte $00   ; 
- - - - - - 0x01D9A5 07:D995: AD        .byte $AD   ; 
- - - - - - 0x01D9A6 07:D996: 0E        .byte $0E   ; 
- - - - - - 0x01D9A7 07:D997: 00        .byte $00   ; 
- - - - - - 0x01D9A8 07:D998: CD        .byte $CD   ; 
- - - - - - 0x01D9A9 07:D999: 09        .byte $09   ; 
- - - - - - 0x01D9AA 07:D99A: 00        .byte $00   ; 
- - - - - - 0x01D9AB 07:D99B: F0        .byte $F0   ; 
- - - - - - 0x01D9AC 07:D99C: 03        .byte $03   ; 
- - - - - - 0x01D9AD 07:D99D: 4C        .byte $4C   ; 
- - - - - - 0x01D9AE 07:D99E: 84        .byte $84   ; 
- - - - - - 0x01D9AF 07:D99F: D9        .byte $D9   ; 
- - - - - - 0x01D9B0 07:D9A0: 20        .byte $20   ; 
- - - - - - 0x01D9B1 07:D9A1: 8E        .byte $8E   ; 
- - - - - - 0x01D9B2 07:D9A2: DB        .byte $DB   ; 
- - - - - - 0x01D9B3 07:D9A3: A9        .byte $A9   ; 
- - - - - - 0x01D9B4 07:D9A4: 21        .byte $21   ; 
- - - - - - 0x01D9B5 07:D9A5: 8D        .byte $8D   ; 
- - - - - - 0x01D9B6 07:D9A6: 06        .byte $06   ; 
- - - - - - 0x01D9B7 07:D9A7: 20        .byte $20   ; 
- - - - - - 0x01D9B8 07:D9A8: A9        .byte $A9   ; 
- - - - - - 0x01D9B9 07:D9A9: E1        .byte $E1   ; 
- - - - - - 0x01D9BA 07:D9AA: 8D        .byte $8D   ; 
- - - - - - 0x01D9BB 07:D9AB: 06        .byte $06   ; 
- - - - - - 0x01D9BC 07:D9AC: 20        .byte $20   ; 
- - - - - - 0x01D9BD 07:D9AD: A9        .byte $A9   ; 
- - - - - - 0x01D9BE 07:D9AE: 00        .byte $00   ; 
- - - - - - 0x01D9BF 07:D9AF: 8D        .byte $8D   ; 
- - - - - - 0x01D9C0 07:D9B0: 0E        .byte $0E   ; 
- - - - - - 0x01D9C1 07:D9B1: 00        .byte $00   ; 
- - - - - - 0x01D9C2 07:D9B2: AE        .byte $AE   ; 
- - - - - - 0x01D9C3 07:D9B3: 0E        .byte $0E   ; 
- - - - - - 0x01D9C4 07:D9B4: 00        .byte $00   ; 
- - - - - - 0x01D9C5 07:D9B5: BD        .byte $BD   ; 
- - - - - - 0x01D9C6 07:D9B6: 73        .byte $73   ; 
- - - - - - 0x01D9C7 07:D9B7: E4        .byte $E4   ; 
- - - - - - 0x01D9C8 07:D9B8: 8D        .byte $8D   ; 
- - - - - - 0x01D9C9 07:D9B9: 07        .byte $07   ; 
- - - - - - 0x01D9CA 07:D9BA: 20        .byte $20   ; 
- - - - - - 0x01D9CB 07:D9BB: EE        .byte $EE   ; 
- - - - - - 0x01D9CC 07:D9BC: 0E        .byte $0E   ; 
- - - - - - 0x01D9CD 07:D9BD: 00        .byte $00   ; 
- - - - - - 0x01D9CE 07:D9BE: A9        .byte $A9   ; 
- - - - - - 0x01D9CF 07:D9BF: 1E        .byte $1E   ; 
- - - - - - 0x01D9D0 07:D9C0: 8D        .byte $8D   ; 
- - - - - - 0x01D9D1 07:D9C1: 09        .byte $09   ; 
- - - - - - 0x01D9D2 07:D9C2: 00        .byte $00   ; 
- - - - - - 0x01D9D3 07:D9C3: AD        .byte $AD   ; 
- - - - - - 0x01D9D4 07:D9C4: 0E        .byte $0E   ; 
- - - - - - 0x01D9D5 07:D9C5: 00        .byte $00   ; 
- - - - - - 0x01D9D6 07:D9C6: CD        .byte $CD   ; 
- - - - - - 0x01D9D7 07:D9C7: 09        .byte $09   ; 
- - - - - - 0x01D9D8 07:D9C8: 00        .byte $00   ; 
- - - - - - 0x01D9D9 07:D9C9: F0        .byte $F0   ; 
- - - - - - 0x01D9DA 07:D9CA: 03        .byte $03   ; 
- - - - - - 0x01D9DB 07:D9CB: 4C        .byte $4C   ; 
- - - - - - 0x01D9DC 07:D9CC: B2        .byte $B2   ; 
- - - - - - 0x01D9DD 07:D9CD: D9        .byte $D9   ; 
- - - - - - 0x01D9DE 07:D9CE: 20        .byte $20   ; 
- - - - - - 0x01D9DF 07:D9CF: 8E        .byte $8E   ; 
- - - - - - 0x01D9E0 07:D9D0: DB        .byte $DB   ; 
- - - - - - 0x01D9E1 07:D9D1: A9        .byte $A9   ; 
- - - - - - 0x01D9E2 07:D9D2: 22        .byte $22   ; 
- - - - - - 0x01D9E3 07:D9D3: 8D        .byte $8D   ; 
- - - - - - 0x01D9E4 07:D9D4: 06        .byte $06   ; 
- - - - - - 0x01D9E5 07:D9D5: 20        .byte $20   ; 
- - - - - - 0x01D9E6 07:D9D6: A9        .byte $A9   ; 
- - - - - - 0x01D9E7 07:D9D7: 21        .byte $21   ; 
- - - - - - 0x01D9E8 07:D9D8: 8D        .byte $8D   ; 
- - - - - - 0x01D9E9 07:D9D9: 06        .byte $06   ; 
- - - - - - 0x01D9EA 07:D9DA: 20        .byte $20   ; 
- - - - - - 0x01D9EB 07:D9DB: A9        .byte $A9   ; 
- - - - - - 0x01D9EC 07:D9DC: 00        .byte $00   ; 
- - - - - - 0x01D9ED 07:D9DD: 8D        .byte $8D   ; 
- - - - - - 0x01D9EE 07:D9DE: 0E        .byte $0E   ; 
- - - - - - 0x01D9EF 07:D9DF: 00        .byte $00   ; 
- - - - - - 0x01D9F0 07:D9E0: AE        .byte $AE   ; 
- - - - - - 0x01D9F1 07:D9E1: 0E        .byte $0E   ; 
- - - - - - 0x01D9F2 07:D9E2: 00        .byte $00   ; 
- - - - - - 0x01D9F3 07:D9E3: BD        .byte $BD   ; 
- - - - - - 0x01D9F4 07:D9E4: 91        .byte $91   ; 
- - - - - - 0x01D9F5 07:D9E5: E4        .byte $E4   ; 
- - - - - - 0x01D9F6 07:D9E6: 8D        .byte $8D   ; 
- - - - - - 0x01D9F7 07:D9E7: 07        .byte $07   ; 
- - - - - - 0x01D9F8 07:D9E8: 20        .byte $20   ; 
- - - - - - 0x01D9F9 07:D9E9: EE        .byte $EE   ; 
- - - - - - 0x01D9FA 07:D9EA: 0E        .byte $0E   ; 
- - - - - - 0x01D9FB 07:D9EB: 00        .byte $00   ; 
- - - - - - 0x01D9FC 07:D9EC: A9        .byte $A9   ; 
- - - - - - 0x01D9FD 07:D9ED: 1E        .byte $1E   ; 
- - - - - - 0x01D9FE 07:D9EE: 8D        .byte $8D   ; 
- - - - - - 0x01D9FF 07:D9EF: 09        .byte $09   ; 
- - - - - - 0x01DA00 07:D9F0: 00        .byte $00   ; 
- - - - - - 0x01DA01 07:D9F1: AD        .byte $AD   ; 
- - - - - - 0x01DA02 07:D9F2: 0E        .byte $0E   ; 
- - - - - - 0x01DA03 07:D9F3: 00        .byte $00   ; 
- - - - - - 0x01DA04 07:D9F4: CD        .byte $CD   ; 
- - - - - - 0x01DA05 07:D9F5: 09        .byte $09   ; 
- - - - - - 0x01DA06 07:D9F6: 00        .byte $00   ; 
- - - - - - 0x01DA07 07:D9F7: F0        .byte $F0   ; 
- - - - - - 0x01DA08 07:D9F8: 03        .byte $03   ; 
- - - - - - 0x01DA09 07:D9F9: 4C        .byte $4C   ; 
- - - - - - 0x01DA0A 07:D9FA: E0        .byte $E0   ; 
- - - - - - 0x01DA0B 07:D9FB: D9        .byte $D9   ; 
- - - - - - 0x01DA0C 07:D9FC: 20        .byte $20   ; 
- - - - - - 0x01DA0D 07:D9FD: 8E        .byte $8E   ; 
- - - - - - 0x01DA0E 07:D9FE: DB        .byte $DB   ; 
- - - - - - 0x01DA0F 07:D9FF: A9        .byte $A9   ; 
- - - - - - 0x01DA10 07:DA00: 22        .byte $22   ; 
- - - - - - 0x01DA11 07:DA01: 8D        .byte $8D   ; 
- - - - - - 0x01DA12 07:DA02: 06        .byte $06   ; 
- - - - - - 0x01DA13 07:DA03: 20        .byte $20   ; 
- - - - - - 0x01DA14 07:DA04: A9        .byte $A9   ; 
- - - - - - 0x01DA15 07:DA05: 61        .byte $61   ; 
- - - - - - 0x01DA16 07:DA06: 8D        .byte $8D   ; 
- - - - - - 0x01DA17 07:DA07: 06        .byte $06   ; 
- - - - - - 0x01DA18 07:DA08: 20        .byte $20   ; 
- - - - - - 0x01DA19 07:DA09: A9        .byte $A9   ; 
- - - - - - 0x01DA1A 07:DA0A: 00        .byte $00   ; 
- - - - - - 0x01DA1B 07:DA0B: 8D        .byte $8D   ; 
- - - - - - 0x01DA1C 07:DA0C: 0E        .byte $0E   ; 
- - - - - - 0x01DA1D 07:DA0D: 00        .byte $00   ; 
- - - - - - 0x01DA1E 07:DA0E: AE        .byte $AE   ; 
- - - - - - 0x01DA1F 07:DA0F: 0E        .byte $0E   ; 
- - - - - - 0x01DA20 07:DA10: 00        .byte $00   ; 
- - - - - - 0x01DA21 07:DA11: BD        .byte $BD   ; 
- - - - - - 0x01DA22 07:DA12: AF        .byte $AF   ; 
- - - - - - 0x01DA23 07:DA13: E4        .byte $E4   ; 
- - - - - - 0x01DA24 07:DA14: 8D        .byte $8D   ; 
- - - - - - 0x01DA25 07:DA15: 07        .byte $07   ; 
- - - - - - 0x01DA26 07:DA16: 20        .byte $20   ; 
- - - - - - 0x01DA27 07:DA17: EE        .byte $EE   ; 
- - - - - - 0x01DA28 07:DA18: 0E        .byte $0E   ; 
- - - - - - 0x01DA29 07:DA19: 00        .byte $00   ; 
- - - - - - 0x01DA2A 07:DA1A: A9        .byte $A9   ; 
- - - - - - 0x01DA2B 07:DA1B: 1E        .byte $1E   ; 
- - - - - - 0x01DA2C 07:DA1C: 8D        .byte $8D   ; 
- - - - - - 0x01DA2D 07:DA1D: 09        .byte $09   ; 
- - - - - - 0x01DA2E 07:DA1E: 00        .byte $00   ; 
- - - - - - 0x01DA2F 07:DA1F: AD        .byte $AD   ; 
- - - - - - 0x01DA30 07:DA20: 0E        .byte $0E   ; 
- - - - - - 0x01DA31 07:DA21: 00        .byte $00   ; 
- - - - - - 0x01DA32 07:DA22: CD        .byte $CD   ; 
- - - - - - 0x01DA33 07:DA23: 09        .byte $09   ; 
- - - - - - 0x01DA34 07:DA24: 00        .byte $00   ; 
- - - - - - 0x01DA35 07:DA25: F0        .byte $F0   ; 
- - - - - - 0x01DA36 07:DA26: 03        .byte $03   ; 
- - - - - - 0x01DA37 07:DA27: 4C        .byte $4C   ; 
- - - - - - 0x01DA38 07:DA28: 0E        .byte $0E   ; 
- - - - - - 0x01DA39 07:DA29: DA        .byte $DA   ; 
- - - - - - 0x01DA3A 07:DA2A: 20        .byte $20   ; 
- - - - - - 0x01DA3B 07:DA2B: 8E        .byte $8E   ; 
- - - - - - 0x01DA3C 07:DA2C: DB        .byte $DB   ; 
- - - - - - 0x01DA3D 07:DA2D: A9        .byte $A9   ; 
- - - - - - 0x01DA3E 07:DA2E: 22        .byte $22   ; 
- - - - - - 0x01DA3F 07:DA2F: 8D        .byte $8D   ; 
- - - - - - 0x01DA40 07:DA30: 06        .byte $06   ; 
- - - - - - 0x01DA41 07:DA31: 20        .byte $20   ; 
- - - - - - 0x01DA42 07:DA32: A9        .byte $A9   ; 
- - - - - - 0x01DA43 07:DA33: A1        .byte $A1   ; 
- - - - - - 0x01DA44 07:DA34: 8D        .byte $8D   ; 
- - - - - - 0x01DA45 07:DA35: 06        .byte $06   ; 
- - - - - - 0x01DA46 07:DA36: 20        .byte $20   ; 
- - - - - - 0x01DA47 07:DA37: A9        .byte $A9   ; 
- - - - - - 0x01DA48 07:DA38: 00        .byte $00   ; 
- - - - - - 0x01DA49 07:DA39: 8D        .byte $8D   ; 
- - - - - - 0x01DA4A 07:DA3A: 0E        .byte $0E   ; 
- - - - - - 0x01DA4B 07:DA3B: 00        .byte $00   ; 
- - - - - - 0x01DA4C 07:DA3C: AE        .byte $AE   ; 
- - - - - - 0x01DA4D 07:DA3D: 0E        .byte $0E   ; 
- - - - - - 0x01DA4E 07:DA3E: 00        .byte $00   ; 
- - - - - - 0x01DA4F 07:DA3F: BD        .byte $BD   ; 
- - - - - - 0x01DA50 07:DA40: CD        .byte $CD   ; 
- - - - - - 0x01DA51 07:DA41: E4        .byte $E4   ; 
- - - - - - 0x01DA52 07:DA42: 8D        .byte $8D   ; 
- - - - - - 0x01DA53 07:DA43: 07        .byte $07   ; 
- - - - - - 0x01DA54 07:DA44: 20        .byte $20   ; 
- - - - - - 0x01DA55 07:DA45: EE        .byte $EE   ; 
- - - - - - 0x01DA56 07:DA46: 0E        .byte $0E   ; 
- - - - - - 0x01DA57 07:DA47: 00        .byte $00   ; 
- - - - - - 0x01DA58 07:DA48: A9        .byte $A9   ; 
- - - - - - 0x01DA59 07:DA49: 1E        .byte $1E   ; 
- - - - - - 0x01DA5A 07:DA4A: 8D        .byte $8D   ; 
- - - - - - 0x01DA5B 07:DA4B: 09        .byte $09   ; 
- - - - - - 0x01DA5C 07:DA4C: 00        .byte $00   ; 
- - - - - - 0x01DA5D 07:DA4D: AD        .byte $AD   ; 
- - - - - - 0x01DA5E 07:DA4E: 0E        .byte $0E   ; 
- - - - - - 0x01DA5F 07:DA4F: 00        .byte $00   ; 
- - - - - - 0x01DA60 07:DA50: CD        .byte $CD   ; 
- - - - - - 0x01DA61 07:DA51: 09        .byte $09   ; 
- - - - - - 0x01DA62 07:DA52: 00        .byte $00   ; 
- - - - - - 0x01DA63 07:DA53: F0        .byte $F0   ; 
- - - - - - 0x01DA64 07:DA54: 03        .byte $03   ; 
- - - - - - 0x01DA65 07:DA55: 4C        .byte $4C   ; 
- - - - - - 0x01DA66 07:DA56: 3C        .byte $3C   ; 
- - - - - - 0x01DA67 07:DA57: DA        .byte $DA   ; 
- - - - - - 0x01DA68 07:DA58: 20        .byte $20   ; 
- - - - - - 0x01DA69 07:DA59: 09        .byte $09   ; 
- - - - - - 0x01DA6A 07:DA5A: DB        .byte $DB   ; 
- - - - - - 0x01DA6B 07:DA5B: 20        .byte $20   ; 
- - - - - - 0x01DA6C 07:DA5C: 41        .byte $41   ; 
- - - - - - 0x01DA6D 07:DA5D: C2        .byte $C2   ; 
- - - - - - 0x01DA6E 07:DA5E: A9        .byte $A9   ; 
- - - - - - 0x01DA6F 07:DA5F: 00        .byte $00   ; 
- - - - - - 0x01DA70 07:DA60: 8D        .byte $8D   ; 
- - - - - - 0x01DA71 07:DA61: 05        .byte $05   ; 
- - - - - - 0x01DA72 07:DA62: 20        .byte $20   ; 
- - - - - - 0x01DA73 07:DA63: A9        .byte $A9   ; 
- - - - - - 0x01DA74 07:DA64: 00        .byte $00   ; 
- - - - - - 0x01DA75 07:DA65: 8D        .byte $8D   ; 
- - - - - - 0x01DA76 07:DA66: 05        .byte $05   ; 
- - - - - - 0x01DA77 07:DA67: 20        .byte $20   ; 
- - - - - - 0x01DA78 07:DA68: 20        .byte $20   ; 
- - - - - - 0x01DA79 07:DA69: 8E        .byte $8E   ; 
- - - - - - 0x01DA7A 07:DA6A: DB        .byte $DB   ; 
- - - - - - 0x01DA7B 07:DA6B: 20        .byte $20   ; 
- - - - - - 0x01DA7C 07:DA6C: 39        .byte $39   ; 
- - - - - - 0x01DA7D 07:DA6D: D5        .byte $D5   ; 
- - - - - - 0x01DA7E 07:DA6E: A9        .byte $A9   ; 
- - - - - - 0x01DA7F 07:DA6F: 00        .byte $00   ; 
- - - - - - 0x01DA80 07:DA70: 8D        .byte $8D   ; 
- - - - - - 0x01DA81 07:DA71: 09        .byte $09   ; 
- - - - - - 0x01DA82 07:DA72: 00        .byte $00   ; 
- - - - - - 0x01DA83 07:DA73: AD        .byte $AD   ; 
- - - - - - 0x01DA84 07:DA74: 1A        .byte $1A   ; 
- - - - - - 0x01DA85 07:DA75: 00        .byte $00   ; 
- - - - - - 0x01DA86 07:DA76: CD        .byte $CD   ; 
- - - - - - 0x01DA87 07:DA77: 09        .byte $09   ; 
- - - - - - 0x01DA88 07:DA78: 00        .byte $00   ; 
- - - - - - 0x01DA89 07:DA79: D0        .byte $D0   ; 
- - - - - - 0x01DA8A 07:DA7A: 03        .byte $03   ; 
- - - - - - 0x01DA8B 07:DA7B: 4C        .byte $4C   ; 
- - - - - - 0x01DA8C 07:DA7C: 68        .byte $68   ; 
- - - - - - 0x01DA8D 07:DA7D: DA        .byte $DA   ; 
- - - - - - 0x01DA8E 07:DA7E: 20        .byte $20   ; 
- - - - - - 0x01DA8F 07:DA7F: 8E        .byte $8E   ; 
- - - - - - 0x01DA90 07:DA80: DB        .byte $DB   ; 
- - - - - - 0x01DA91 07:DA81: 20        .byte $20   ; 
- - - - - - 0x01DA92 07:DA82: 39        .byte $39   ; 
- - - - - - 0x01DA93 07:DA83: D5        .byte $D5   ; 
- - - - - - 0x01DA94 07:DA84: A9        .byte $A9   ; 
- - - - - - 0x01DA95 07:DA85: 00        .byte $00   ; 
- - - - - - 0x01DA96 07:DA86: 8D        .byte $8D   ; 
- - - - - - 0x01DA97 07:DA87: 09        .byte $09   ; 
- - - - - - 0x01DA98 07:DA88: 00        .byte $00   ; 
- - - - - - 0x01DA99 07:DA89: AD        .byte $AD   ; 
- - - - - - 0x01DA9A 07:DA8A: 1A        .byte $1A   ; 
- - - - - - 0x01DA9B 07:DA8B: 00        .byte $00   ; 
- - - - - - 0x01DA9C 07:DA8C: CD        .byte $CD   ; 
- - - - - - 0x01DA9D 07:DA8D: 09        .byte $09   ; 
- - - - - - 0x01DA9E 07:DA8E: 00        .byte $00   ; 
- - - - - - 0x01DA9F 07:DA8F: F0        .byte $F0   ; 
- - - - - - 0x01DAA0 07:DA90: 03        .byte $03   ; 
- - - - - - 0x01DAA1 07:DA91: 4C        .byte $4C   ; 
- - - - - - 0x01DAA2 07:DA92: 7E        .byte $7E   ; 
- - - - - - 0x01DAA3 07:DA93: DA        .byte $DA   ; 
- - - - - - 0x01DAA4 07:DA94: 60        .byte $60   ; 
- - - - - - 0x01DAA5 07:DA95: 20        .byte $20   ; 
- - - - - - 0x01DAA6 07:DA96: E9        .byte $E9   ; 
- - - - - - 0x01DAA7 07:DA97: DA        .byte $DA   ; 
- - - - - - 0x01DAA8 07:DA98: A9        .byte $A9   ; 
- - - - - - 0x01DAA9 07:DA99: 21        .byte $21   ; 
- - - - - - 0x01DAAA 07:DA9A: 8D        .byte $8D   ; 
- - - - - - 0x01DAAB 07:DA9B: 06        .byte $06   ; 
- - - - - - 0x01DAAC 07:DA9C: 20        .byte $20   ; 
- - - - - - 0x01DAAD 07:DA9D: A9        .byte $A9   ; 
C - - - - - 0x01DAAE 07:DA9E: 08        PHP
C - - - - - 0x01DAAF 07:DA9F: 8D 06 20  STA $2006
C - - - - - 0x01DAB2 07:DAA2: A9 00     LDA #$00
C - - - - - 0x01DAB4 07:DAA4: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01DAB7 07:DAA7: AE 0E 00  LDX a: ram_000E
C - - - - - 0x01DABA 07:DAAA: BD F8 E3  LDA $E3F8,X
C - - - - - 0x01DABD 07:DAAD: 8D 07 20  STA $2007
C - - - - - 0x01DAC0 07:DAB0: EE 0E 00  INC a: ram_000E
C - - - - - 0x01DAC3 07:DAB3: A9 09     LDA #$09
C - - - - - 0x01DAC5 07:DAB5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DAC8 07:DAB8: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01DACB 07:DABB: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DACE 07:DABE: F0 03     BEQ $DAC3
C - - - - - 0x01DAD0 07:DAC0: 4C A7 DA  JMP $DAA7
C - - - - - 0x01DAD3 07:DAC3: 20 09 DB  JSR $DB09
C - - - - - 0x01DAD6 07:DAC6: 20 41 C2  JSR $C241
C - - - - - 0x01DAD9 07:DAC9: A9 C8     LDA #$C8
C - - - - - 0x01DADB 07:DACB: 8D 71 00  STA a: ram_0071
C - - - - - 0x01DADE 07:DACE: 20 D2 DA  JSR $DAD2
C - - - - - 0x01DAE1 07:DAD1: 60        RTS
C - - - - - 0x01DAE2 07:DAD2: 20 8E DB  JSR $DB8E
C - - - - - 0x01DAE5 07:DAD5: CE 71 00  DEC a: ram_0071
C - - - - - 0x01DAE8 07:DAD8: A9 00     LDA #$00
C - - - - - 0x01DAEA 07:DADA: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DAED 07:DADD: AD 71 00  LDA a: ram_0071
C - - - - - 0x01DAF0 07:DAE0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DAF3 07:DAE3: F0 03     BEQ $DAE8
C - - - - - 0x01DAF5 07:DAE5: 4C D2 DA  JMP $DAD2
C - - - - - 0x01DAF8 07:DAE8: 60        RTS
C - - - - - 0x01DAF9 07:DAE9: 20 80 DB  JSR $DB80
C - - - - - 0x01DAFC 07:DAEC: 20 E0 C2  JSR $C2E0
C - - - - - 0x01DAFF 07:DAEF: 20 8E DB  JSR $DB8E
C - - - - - 0x01DB02 07:DAF2: 20 DA DB  JSR $DBDA
C - - - - - 0x01DB05 07:DAF5: 20 8E DB  JSR $DB8E
C - - - - - 0x01DB08 07:DAF8: 20 26 DC  JSR $DC26
C - - - - - 0x01DB0B 07:DAFB: 20 8E DB  JSR $DB8E
C - - - - - 0x01DB0E 07:DAFE: A9 00     LDA #$00
C - - - - - 0x01DB10 07:DB00: 8D 05 20  STA $2005
C - - - - - 0x01DB13 07:DB03: A9 00     LDA #$00
C - - - - - 0x01DB15 07:DB05: 8D 05 20  STA $2005
C - - - - - 0x01DB18 07:DB08: 60        RTS
C - - - - - 0x01DB19 07:DB09: A9 3F     LDA #$3F
C - - - - - 0x01DB1B 07:DB0B: 8D 06 20  STA $2006
C - - - - - 0x01DB1E 07:DB0E: A9 00     LDA #$00
C - - - - - 0x01DB20 07:DB10: 8D 06 20  STA $2006
C - - - - - 0x01DB23 07:DB13: A9 00     LDA #$00
C - - - - - 0x01DB25 07:DB15: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01DB28 07:DB18: AE 0E 00  LDX a: ram_000E
C - - - - - 0x01DB2B 07:DB1B: BD 5A E2  LDA $E25A,X
C - - - - - 0x01DB2E 07:DB1E: 8D 07 20  STA $2007
C - - - - - 0x01DB31 07:DB21: EE 0E 00  INC a: ram_000E
C - - - - - 0x01DB34 07:DB24: A9 10     LDA #$10
C - - - - - 0x01DB36 07:DB26: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DB39 07:DB29: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01DB3C 07:DB2C: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DB3F 07:DB2F: D0 01     BNE $DB32
C - - - - - 0x01DB41 07:DB31: 60        RTS
C - - - - - 0x01DB42 07:DB32: 4C 18 DB  JMP $DB18
C - - - - - 0x01DB45 07:DB35: A9 3F     LDA #$3F
C - - - - - 0x01DB47 07:DB37: 8D 06 20  STA $2006
C - - - - - 0x01DB4A 07:DB3A: A9 00     LDA #$00
C - - - - - 0x01DB4C 07:DB3C: 8D 06 20  STA $2006
- - - - - - 0x01DB4F 07:DB3F: A9        .byte $A9   ; 
- - - - - - 0x01DB50 07:DB40: 00        .byte $00   ; 
- - - - - - 0x01DB51 07:DB41: 8D        .byte $8D   ; 
- - - - - - 0x01DB52 07:DB42: 0E        .byte $0E   ; 
- - - - - - 0x01DB53 07:DB43: 00        .byte $00   ; 
- - - - - - 0x01DB54 07:DB44: AE        .byte $AE   ; 
- - - - - - 0x01DB55 07:DB45: 0E        .byte $0E   ; 
- - - - - - 0x01DB56 07:DB46: 00        .byte $00   ; 
- - - - - - 0x01DB57 07:DB47: BD        .byte $BD   ; 
- - - - - - 0x01DB58 07:DB48: 00        .byte $00   ; 
- - - - - - 0x01DB59 07:DB49: E0        .byte $E0   ; 
- - - - - - 0x01DB5A 07:DB4A: 8D        .byte $8D   ; 
- - - - - - 0x01DB5B 07:DB4B: 07        .byte $07   ; 
- - - - - - 0x01DB5C 07:DB4C: 20        .byte $20   ; 
- - - - - - 0x01DB5D 07:DB4D: EE        .byte $EE   ; 
- - - - - - 0x01DB5E 07:DB4E: 0E        .byte $0E   ; 
- - - - - - 0x01DB5F 07:DB4F: 00        .byte $00   ; 
- - - - - - 0x01DB60 07:DB50: A9        .byte $A9   ; 
- - - - - - 0x01DB61 07:DB51: 20        .byte $20   ; 
- - - - - - 0x01DB62 07:DB52: 8D        .byte $8D   ; 
- - - - - - 0x01DB63 07:DB53: 09        .byte $09   ; 
- - - - - - 0x01DB64 07:DB54: 00        .byte $00   ; 
- - - - - - 0x01DB65 07:DB55: AD        .byte $AD   ; 
- - - - - - 0x01DB66 07:DB56: 0E        .byte $0E   ; 
- - - - - - 0x01DB67 07:DB57: 00        .byte $00   ; 
- - - - - - 0x01DB68 07:DB58: CD        .byte $CD   ; 
- - - - - - 0x01DB69 07:DB59: 09        .byte $09   ; 
- - - - - - 0x01DB6A 07:DB5A: 00        .byte $00   ; 
- - - - - - 0x01DB6B 07:DB5B: D0        .byte $D0   ; 
- - - - - - 0x01DB6C 07:DB5C: 01        .byte $01   ; 
- - - - - - 0x01DB6D 07:DB5D: 60        .byte $60   ; 
- - - - - - 0x01DB6E 07:DB5E: 4C        .byte $4C   ; 
- - - - - - 0x01DB6F 07:DB5F: 44        .byte $44   ; 
- - - - - - 0x01DB70 07:DB60: DB        .byte $DB   ; 
- - - - - - 0x01DB71 07:DB61: 20        .byte $20   ; 
- - - - - - 0x01DB72 07:DB62: 29        .byte $29   ; 
- - - - - - 0x01DB73 07:DB63: D6        .byte $D6   ; 
- - - - - - 0x01DB74 07:DB64: 20        .byte $20   ; 
- - - - - - 0x01DB75 07:DB65: ED        .byte $ED   ; 
- - - - - - 0x01DB76 07:DB66: D5        .byte $D5   ; 
- - - - - - 0x01DB77 07:DB67: A9        .byte $A9   ; 
- - - - - - 0x01DB78 07:DB68: 03        .byte $03   ; 
- - - - - - 0x01DB79 07:DB69: 8D        .byte $8D   ; 
C - - - - - 0x01DB7A 07:DB6A: 14        UNDEFINED
C - - - - - 0x01DB7B 07:DB6B: 40        RTI
C - - - - - 0x01DB7C 07:DB6C: A9 10     LDA #$10
C - - - - - 0x01DB7E 07:DB6E: 8D 22 00  STA a: ram_0022
C - - - - - 0x01DB81 07:DB71: 60        RTS
C - - - - - 0x01DB82 07:DB72: 20 8E DB  JSR $DB8E
C D 4 - - - 0x01DB85 07:DB75: A9 30     LDA #$30
C - - - - - 0x01DB87 07:DB77: 8D 00 20  STA $2000
C - - - - - 0x01DB8A 07:DB7A: A9 1C     LDA #$1C
- - - - - - 0x01DB8C 07:DB7C: 8D        .byte $8D   ; 
- - - - - - 0x01DB8D 07:DB7D: 01        .byte $01   ; 
- - - - - - 0x01DB8E 07:DB7E: 20        .byte $20   ; 
- - - - - - 0x01DB8F 07:DB7F: 60        .byte $60   ; 
- - - - - - 0x01DB90 07:DB80: 20        .byte $20   ; 
- - - - - - 0x01DB91 07:DB81: 8E        .byte $8E   ; 
- - - - - - 0x01DB92 07:DB82: DB        .byte $DB   ; 
- - - - - - 0x01DB93 07:DB83: A9        .byte $A9   ; 
- - - - - - 0x01DB94 07:DB84: 20        .byte $20   ; 
- - - - - - 0x01DB95 07:DB85: 8D        .byte $8D   ; 
- - - - - - 0x01DB96 07:DB86: 00        .byte $00   ; 
- - - - - - 0x01DB97 07:DB87: 20        .byte $20   ; 
- - - - - - 0x01DB98 07:DB88: A9        .byte $A9   ; 
C - - - - - 0x01DB99 07:DB89: 1C        UNDEFINED
C - - - - - 0x01DB9A 07:DB8A: 8D 01 20  STA $2001
C - - - - - 0x01DB9D 07:DB8D: 60        RTS
C - - - - - 0x01DB9E 07:DB8E: AD 02 20  LDA $2002
C - - - - - 0x01DBA1 07:DB91: 10 FB     BPL $DB8E
C - - - - - 0x01DBA3 07:DB93: AD 02 20  LDA $2002
C - - - - - 0x01DBA6 07:DB96: 30 FB     BMI $DB93
C - - - - - 0x01DBA8 07:DB98: A9 00     LDA #$00
C - - - - - 0x01DBAA 07:DB9A: 8D 05 20  STA $2005
C - - - - - 0x01DBAD 07:DB9D: A9 00     LDA #$00
C - - - - - 0x01DBAF 07:DB9F: 8D 05 20  STA $2005
C - - - - - 0x01DBB2 07:DBA2: A9 00     LDA #$00
C - - - - - 0x01DBB4 07:DBA4: 8D 06 20  STA $2006
C - - - - - 0x01DBB7 07:DBA7: A9 00     LDA #$00
C - - - - - 0x01DBB9 07:DBA9: 8D 06 20  STA $2006
C - - - - - 0x01DBBC 07:DBAC: EE 1B 00  INC a: ram_001B
C - - - - - 0x01DBBF 07:DBAF: 60        RTS
C - - - - - 0x01DBC0 07:DBB0: AD 02 20  LDA $2002
C - - - - - 0x01DBC3 07:DBB3: 10 FB     BPL $DBB0
C - - - - - 0x01DBC5 07:DBB5: AD 02 20  LDA $2002
C - - - - - 0x01DBC8 07:DBB8: 30 FB     BMI $DBB5
- - - - - - 0x01DBCA 07:DBBA: AD        .byte $AD   ; 
- - - - - - 0x01DBCB 07:DBBB: 02        .byte $02   ; 
- - - - - - 0x01DBCC 07:DBBC: 20        .byte $20   ; 
- - - - - - 0x01DBCD 07:DBBD: 10        .byte $10   ; 
- - - - - - 0x01DBCE 07:DBBE: FB        .byte $FB   ; 
- - - - - - 0x01DBCF 07:DBBF: EE        .byte $EE   ; 
- - - - - - 0x01DBD0 07:DBC0: 1B        .byte $1B   ; 
- - - - - - 0x01DBD1 07:DBC1: 00        .byte $00   ; 
- - - - - - 0x01DBD2 07:DBC2: 60        .byte $60   ; 
- - - - - - 0x01DBD3 07:DBC3: A9        .byte $A9   ; 
- - - - - - 0x01DBD4 07:DBC4: 3F        .byte $3F   ; 
- - - - - - 0x01DBD5 07:DBC5: 8D        .byte $8D   ; 
- - - - - - 0x01DBD6 07:DBC6: 06        .byte $06   ; 
- - - - - - 0x01DBD7 07:DBC7: 20        .byte $20   ; 
- - - - - - 0x01DBD8 07:DBC8: A9        .byte $A9   ; 
- - - - - - 0x01DBD9 07:DBC9: 00        .byte $00   ; 
- - - - - - 0x01DBDA 07:DBCA: 8D        .byte $8D   ; 
- - - - - - 0x01DBDB 07:DBCB: 06        .byte $06   ; 
C - - - - - 0x01DBDC 07:DBCC: 20 A9 0E  JSR $0EA9
C - - - - - 0x01DBDF 07:DBCF: AC 20 00  LDY a: ram_0020
C - - - - - 0x01DBE2 07:DBD2: 8D 07 20  STA $2007
C - - - - - 0x01DBE5 07:DBD5: 88        DEY
C - - - - - 0x01DBE6 07:DBD6: C0 00     CPY #$00
C - - - - - 0x01DBE8 07:DBD8: D0 F8     BNE $DBD2
C - - - - - 0x01DBEA 07:DBDA: 20 8E DB  JSR $DB8E
C - - - - - 0x01DBED 07:DBDD: A9 20     LDA #$20
C - - - - - 0x01DBEF 07:DBDF: 8D 06 20  STA $2006
C - - - - - 0x01DBF2 07:DBE2: A9 00     LDA #$00
C - - - - - 0x01DBF4 07:DBE4: 8D 06 20  STA $2006
C - - - - - 0x01DBF7 07:DBE7: 20 1B DC  JSR $DC1B
C - - - - - 0x01DBFA 07:DBEA: 20 8E DB  JSR $DB8E
C - - - - - 0x01DBFD 07:DBED: A9 21     LDA #$21
C - - - - - 0x01DBFF 07:DBEF: 8D 06 20  STA $2006
C - - - - - 0x01DC02 07:DBF2: A9 00     LDA #$00
C - - - - - 0x01DC04 07:DBF4: 8D 06 20  STA $2006
C - - - - - 0x01DC07 07:DBF7: 20 1B DC  JSR $DC1B
C - - - - - 0x01DC0A 07:DBFA: 20 8E DB  JSR $DB8E
C - - - - - 0x01DC0D 07:DBFD: A9 22     LDA #$22
C - - - - - 0x01DC0F 07:DBFF: 8D 06 20  STA $2006
C - - - - - 0x01DC12 07:DC02: A9 00     LDA #$00
C - - - - - 0x01DC14 07:DC04: 8D 06 20  STA $2006
C - - - - - 0x01DC17 07:DC07: 20 1B DC  JSR $DC1B
C - - - - - 0x01DC1A 07:DC0A: 20 8E DB  JSR $DB8E
C - - - - - 0x01DC1D 07:DC0D: A9 23     LDA #$23
C - - - - - 0x01DC1F 07:DC0F: 8D 06 20  STA $2006
C - - - - - 0x01DC22 07:DC12: A9 00     LDA #$00
C - - - - - 0x01DC24 07:DC14: 8D 06 20  STA $2006
C - - - - - 0x01DC27 07:DC17: 20 1B DC  JSR $DC1B
C - - - - - 0x01DC2A 07:DC1A: 60        RTS
C - - - - - 0x01DC2B 07:DC1B: A2 00     LDX #$00
C - - - - - 0x01DC2D 07:DC1D: 8D 07 20  STA $2007
C - - - - - 0x01DC30 07:DC20: E8        INX
C - - - - - 0x01DC31 07:DC21: E0 00     CPX #$00
C - - - - - 0x01DC33 07:DC23: D0 F8     BNE $DC1D
C - - - - - 0x01DC35 07:DC25: 60        RTS
C - - - - - 0x01DC36 07:DC26: A9 00     LDA #$00
C - - - - - 0x01DC38 07:DC28: 8D 66 00  STA a: ram_0066
C - - - - - 0x01DC3B 07:DC2B: A9 00     LDA #$00
C - - - - - 0x01DC3D 07:DC2D: 8D 03 20  STA $2003
C - - - - - 0x01DC40 07:DC30: A9 F5     LDA #$F5
C - - - - - 0x01DC42 07:DC32: 8D 04 20  STA $2004
C - - - - - 0x01DC45 07:DC35: EE 66 00  INC a: ram_0066
C - - - - - 0x01DC48 07:DC38: A9 00     LDA #$00
C - - - - - 0x01DC4A 07:DC3A: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DC4D 07:DC3D: AD 66 00  LDA a: ram_0066
C - - - - - 0x01DC50 07:DC40: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DC53 07:DC43: F0 03     BEQ $DC48
C - - - - - 0x01DC55 07:DC45: 4C 30 DC  JMP $DC30
C - - - - - 0x01DC58 07:DC48: 60        RTS
C - - - - - 0x01DC59 07:DC49: A9 00     LDA #$00
C - - - - - 0x01DC5B 07:DC4B: 8D 66 00  STA a: ram_0066
C - - - - - 0x01DC5E 07:DC4E: AE 66 00  LDX a: ram_0066
C - - - - - 0x01DC61 07:DC51: A9 F5     LDA #$F5
- - - - - - 0x01DC63 07:DC53: 9D        .byte $9D   ; 
- - - - - - 0x01DC64 07:DC54: 00        .byte $00   ; 
- - - - - - 0x01DC65 07:DC55: 03        .byte $03   ; 
- - - - - - 0x01DC66 07:DC56: EE        .byte $EE   ; 
- - - - - - 0x01DC67 07:DC57: 66        .byte $66   ; 
- - - - - - 0x01DC68 07:DC58: 00        .byte $00   ; 
- - - - - - 0x01DC69 07:DC59: A9        .byte $A9   ; 
- - - - - - 0x01DC6A 07:DC5A: 00        .byte $00   ; 
- - - - - - 0x01DC6B 07:DC5B: 8D        .byte $8D   ; 
- - - - - - 0x01DC6C 07:DC5C: 09        .byte $09   ; 
- - - - - - 0x01DC6D 07:DC5D: 00        .byte $00   ; 
- - - - - - 0x01DC6E 07:DC5E: AD        .byte $AD   ; 
- - - - - - 0x01DC6F 07:DC5F: 66        .byte $66   ; 
- - - - - - 0x01DC70 07:DC60: 00        .byte $00   ; 
- - - - - - 0x01DC71 07:DC61: CD        .byte $CD   ; 
- - - - - - 0x01DC72 07:DC62: 09        .byte $09   ; 
- - - - - - 0x01DC73 07:DC63: 00        .byte $00   ; 
- - - - - - 0x01DC74 07:DC64: F0        .byte $F0   ; 
- - - - - - 0x01DC75 07:DC65: 03        .byte $03   ; 
- - - - - - 0x01DC76 07:DC66: 4C        .byte $4C   ; 
- - - - - - 0x01DC77 07:DC67: 4E        .byte $4E   ; 
- - - - - - 0x01DC78 07:DC68: DC        .byte $DC   ; 
- - - - - - 0x01DC79 07:DC69: 60        .byte $60   ; 
- - - - - - 0x01DC7A 07:DC6A: 40        .byte $40   ; 
- - - - - - 0x01DC7B 07:DC6B: A9        .byte $A9   ; 
- - - - - - 0x01DC7C 07:DC6C: 05        .byte $05   ; 
- - - - - - 0x01DC7D 07:DC6D: 8D        .byte $8D   ; 
- - - - - - 0x01DC7E 07:DC6E: 7E        .byte $7E   ; 
- - - - - - 0x01DC7F 07:DC6F: 00        .byte $00   ; 
- - - - - - 0x01DC80 07:DC70: 60        .byte $60   ; 
- - - - - - 0x01DC81 07:DC71: A9        .byte $A9   ; 
- - - - - - 0x01DC82 07:DC72: 00        .byte $00   ; 
- - - - - - 0x01DC83 07:DC73: 8D        .byte $8D   ; 
C - - - - - 0x01DC84 07:DC74: 0E 00 AE  ASL $AE00
C - - - - - 0x01DC87 07:DC77: 0E 00 A9  ASL $A900
C - - - - - 0x01DC8A 07:DC7A: 00        BRK
C - - - - - 0x01DC8B 07:DC7B: 9D 72 00  STA a: ram_0072,X
C - - - - - 0x01DC8E 07:DC7E: EE 0E 00  INC a: ram_000E
C - - - - - 0x01DC91 07:DC81: A9 0C     LDA #$0C
C - - - - - 0x01DC93 07:DC83: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DC96 07:DC86: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01DC99 07:DC89: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DC9C 07:DC8C: F0 03     BEQ $DC91
C - - - - - 0x01DC9E 07:DC8E: 4C 76 DC  JMP $DC76
C - - - - - 0x01DCA1 07:DC91: 60        RTS
C - - - - - 0x01DCA2 07:DC92: A9 00     LDA #$00
C - - - - - 0x01DCA4 07:DC94: 8D 7F 00  STA a: ram_007F
C - - - - - 0x01DCA7 07:DC97: AE 7F 00  LDX a: ram_007F
C - - - - - 0x01DCAA 07:DC9A: BD 72 00  LDA a: ram_0072,X
C - - - - - 0x01DCAD 07:DC9D: 8D 80 00  STA a: ram_0080
C - - - - - 0x01DCB0 07:DCA0: A9 00     LDA #$00
C - - - - - 0x01DCB2 07:DCA2: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DCB5 07:DCA5: AD 80 00  LDA a: ram_0080
C - - - - - 0x01DCB8 07:DCA8: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DCBB 07:DCAB: F0 03     BEQ $DCB0
C - - - - - 0x01DCBD 07:DCAD: 4C 19 DD  JMP $DD19
C - - - - - 0x01DCC0 07:DCB0: AE 7F 00  LDX a: ram_007F
C - - - - - 0x01DCC3 07:DCB3: BD 70 80  LDA $8070,X
C - - - - - 0x01DCC6 07:DCB6: 8D 81 00  STA a: ram_0081
C - - - - - 0x01DCC9 07:DCB9: AE 7F 00  LDX a: ram_007F
C - - - - - 0x01DCCC 07:DCBC: BD 7C 80  LDA $807C,X
C - - - - - 0x01DCCF 07:DCBF: 8D 82 00  STA a: ram_0082
C - - - - - 0x01DCD2 07:DCC2: AD 82 00  LDA a: ram_0082
C - - - - - 0x01DCD5 07:DCC5: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DCD8 07:DCC8: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01DCDB 07:DCCB: 38        SEC
C - - - - - 0x01DCDC 07:DCCC: E9 20     SBC #$20
C - - - - - 0x01DCDE 07:DCCE: 4A        LSR
C - - - - - 0x01DCDF 07:DCCF: 4A        LSR
C - - - - - 0x01DCE0 07:DCD0: 4A        LSR
C - - - - - 0x01DCE1 07:DCD1: 4A        LSR
C - - - - - 0x01DCE2 07:DCD2: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DCE5 07:DCD5: F0 03     BEQ $DCDA
C - - - - - 0x01DCE7 07:DCD7: 4C 19 DD  JMP $DD19
C - - - - - 0x01DCEA 07:DCDA: AD 81 00  LDA a: ram_0081
C - - - - - 0x01DCED 07:DCDD: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DCF0 07:DCE0: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01DCF3 07:DCE3: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DCF6 07:DCE6: D0 10     BNE $DCF8
C - - - - - 0x01DCF8 07:DCE8: A9 06     LDA #$06
C - - - - - 0x01DCFA 07:DCEA: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DCFD 07:DCED: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01DD00 07:DCF0: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD03 07:DCF3: 10 03     BPL $DCF8
C - - - - - 0x01DD05 07:DCF5: 4C D8 DD  JMP $DDD8
C - - - - - 0x01DD08 07:DCF8: AD 81 00  LDA a: ram_0081
C - - - - - 0x01DD0B 07:DCFB: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD0E 07:DCFE: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01DD11 07:DD01: 18        CLC
C - - - - - 0x01DD12 07:DD02: 69 01     ADC #$01
C - - - - - 0x01DD14 07:DD04: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD17 07:DD07: D0 10     BNE $DD19
C - - - - - 0x01DD19 07:DD09: A9 0A     LDA #$0A
C - - - - - 0x01DD1B 07:DD0B: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD1E 07:DD0E: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01DD21 07:DD11: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD24 07:DD14: 30 03     BMI $DD19
C - - - - - 0x01DD26 07:DD16: 4C D8 DD  JMP $DDD8
C - - - - - 0x01DD29 07:DD19: EE 7F 00  INC a: ram_007F
C - - - - - 0x01DD2C 07:DD1C: A9 0C     LDA #$0C
C - - - - - 0x01DD2E 07:DD1E: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD31 07:DD21: AD 7F 00  LDA a: ram_007F
C - - - - - 0x01DD34 07:DD24: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD37 07:DD27: F0 03     BEQ $DD2C
C - - - - - 0x01DD39 07:DD29: 4C 97 DC  JMP $DC97
C - - - - - 0x01DD3C 07:DD2C: 60        RTS
C - - - - - 0x01DD3D 07:DD2D: A9 00     LDA #$00
C - - - - - 0x01DD3F 07:DD2F: 8D 83 00  STA a: ram_0083
C - - - - - 0x01DD42 07:DD32: AE 83 00  LDX a: ram_0083
C - - - - - 0x01DD45 07:DD35: BD 44 80  LDA $8044,X
C - - - - - 0x01DD48 07:DD38: 8D 84 00  STA a: ram_0084
C - - - - - 0x01DD4B 07:DD3B: AE 83 00  LDX a: ram_0083
C - - - - - 0x01DD4E 07:DD3E: BD 49 80  LDA $8049,X
C - - - - - 0x01DD51 07:DD41: 8D 85 00  STA a: ram_0085
C - - - - - 0x01DD54 07:DD44: AD 85 00  LDA a: ram_0085
C - - - - - 0x01DD57 07:DD47: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD5A 07:DD4A: AD 0C 00  LDA a: ram_000C
C - - - - - 0x01DD5D 07:DD4D: 38        SEC
C - - - - - 0x01DD5E 07:DD4E: E9 02     SBC #$02
C - - - - - 0x01DD60 07:DD50: 4A        LSR
C - - - - - 0x01DD61 07:DD51: 4A        LSR
C - - - - - 0x01DD62 07:DD52: 4A        LSR
C - - - - - 0x01DD63 07:DD53: 4A        LSR
C - - - - - 0x01DD64 07:DD54: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD67 07:DD57: F0 03     BEQ $DD5C
C - - - - - 0x01DD69 07:DD59: 4C 9B DD  JMP $DD9B
C - - - - - 0x01DD6C 07:DD5C: AD 84 00  LDA a: ram_0084
C - - - - - 0x01DD6F 07:DD5F: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD72 07:DD62: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01DD75 07:DD65: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD78 07:DD68: D0 10     BNE $DD7A
C - - - - - 0x01DD7A 07:DD6A: A9 04     LDA #$04
C - - - - - 0x01DD7C 07:DD6C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD7F 07:DD6F: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01DD82 07:DD72: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD85 07:DD75: 10 03     BPL $DD7A
C - - - - - 0x01DD87 07:DD77: 4C B0 DD  JMP $DDB0
C - - - - - 0x01DD8A 07:DD7A: AD 84 00  LDA a: ram_0084
C - - - - - 0x01DD8D 07:DD7D: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DD90 07:DD80: AD 5E 00  LDA a: ram_005E
C - - - - - 0x01DD93 07:DD83: 18        CLC
C - - - - - 0x01DD94 07:DD84: 69 01     ADC #$01
C - - - - - 0x01DD96 07:DD86: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DD99 07:DD89: D0 10     BNE $DD9B
C - - - - - 0x01DD9B 07:DD8B: A9 0C     LDA #$0C
C - - - - - 0x01DD9D 07:DD8D: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DDA0 07:DD90: AD 5F 00  LDA a: ram_005F
C - - - - - 0x01DDA3 07:DD93: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DDA6 07:DD96: 30 03     BMI $DD9B
C - - - - - 0x01DDA8 07:DD98: 4C B0 DD  JMP $DDB0
C - - - - - 0x01DDAB 07:DD9B: EE 83 00  INC a: ram_0083
C - - - - - 0x01DDAE 07:DD9E: AD 7E 00  LDA a: ram_007E
C - - - - - 0x01DDB1 07:DDA1: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DDB4 07:DDA4: AD 83 00  LDA a: ram_0083
C - - - - - 0x01DDB7 07:DDA7: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DDBA 07:DDAA: 10 03     BPL $DDAF
C - - - - - 0x01DDBC 07:DDAC: 4C 32 DD  JMP $DD32
C - - - - - 0x01DDBF 07:DDAF: 60        RTS
C - - - - - 0x01DDC0 07:DDB0: 20 EB C3  JSR $C3EB
C - - - - - 0x01DDC3 07:DDB3: A9 00     LDA #$00
C - - - - - 0x01DDC5 07:DDB5: 8D 86 00  STA a: ram_0086
C - - - - - 0x01DDC8 07:DDB8: 20 8E DB  JSR $DB8E
C - - - - - 0x01DDCB 07:DDBB: 20 79 E6  JSR $E679
C - - - - - 0x01DDCE 07:DDBE: 20 0D DE  JSR $DE0D
C - - - - - 0x01DDD1 07:DDC1: EE 86 00  INC a: ram_0086
C - - - - - 0x01DDD4 07:DDC4: A9 15     LDA #$15
C - - - - - 0x01DDD6 07:DDC6: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DDD9 07:DDC9: AD 86 00  LDA a: ram_0086
C - - - - - 0x01DDDC 07:DDCC: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DDDF 07:DDCF: F0 03     BEQ $DDD4
C - - - - - 0x01DDE1 07:DDD1: 4C B8 DD  JMP $DDB8
C - - - - - 0x01DDE4 07:DDD4: 20 EB C3  JSR $C3EB
C - - - - - 0x01DDE7 07:DDD7: 60        RTS
C - - - - - 0x01DDE8 07:DDD8: AE 7F 00  LDX a: ram_007F
C - - - - - 0x01DDEB 07:DDDB: A9 01     LDA #$01
C - - - - - 0x01DDED 07:DDDD: 9D 72 00  STA a: ram_0072,X
C - - - - - 0x01DDF0 07:DDE0: A2 05     LDX #$05
C - - - - - 0x01DDF2 07:DDE2: A9 08     LDA #$08
C - - - - - 0x01DDF4 07:DDE4: 9D A4 00  STA a: ram_00A4,X
C - - - - - 0x01DDF7 07:DDE7: A2 05     LDX #$05
C - - - - - 0x01DDF9 07:DDE9: AD 82 00  LDA a: ram_0082
C - - - - - 0x01DDFC 07:DDEC: 0A        ASL
C - - - - - 0x01DDFD 07:DDED: 0A        ASL
C - - - - - 0x01DDFE 07:DDEE: 0A        ASL
C - - - - - 0x01DDFF 07:DDEF: 0A        ASL
C - - - - - 0x01DE00 07:DDF0: 38        SEC
C - - - - - 0x01DE01 07:DDF1: E9 08     SBC #$08
C - - - - - 0x01DE03 07:DDF3: 9D 9E 00  STA a: ram_009E,X
C - - - - - 0x01DE06 07:DDF6: A2 05     LDX #$05
C - - - - - 0x01DE08 07:DDF8: AD 81 00  LDA a: ram_0081
C - - - - - 0x01DE0B 07:DDFB: 9D 92 00  STA a: ram_0092,X
C - - - - - 0x01DE0E 07:DDFE: A2 05     LDX #$05
C - - - - - 0x01DE10 07:DE00: A9 00     LDA #$00
C - - - - - 0x01DE12 07:DE02: 9D 98 00  STA a: ram_0098,X
C - - - - - 0x01DE15 07:DE05: A2 05     LDX #$05
C - - - - - 0x01DE17 07:DE07: A9 01     LDA #$01
C - - - - - 0x01DE19 07:DE09: 9D AA 00  STA a: ram_00AA,X
C - - - - - 0x01DE1C 07:DE0C: 60        RTS
C - - - - - 0x01DE1D 07:DE0D: A9 00     LDA #$00
C - - - - - 0x01DE1F 07:DE0F: 8D 0E 00  STA a: ram_000E
C - - - - - 0x01DE22 07:DE12: A9 00     LDA #$00
C - - - - - 0x01DE24 07:DE14: 8D 87 00  STA a: ram_0087
C - - - - - 0x01DE27 07:DE17: EE 87 00  INC a: ram_0087
C - - - - - 0x01DE2A 07:DE1A: A9 40     LDA #$40
C - - - - - 0x01DE2C 07:DE1C: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DE2F 07:DE1F: AD 87 00  LDA a: ram_0087
C - - - - - 0x01DE32 07:DE22: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DE35 07:DE25: F0 03     BEQ $DE2A
C - - - - - 0x01DE37 07:DE27: 4C 17 DE  JMP $DE17
C - - - - - 0x01DE3A 07:DE2A: EE 0E 00  INC a: ram_000E
C - - - - - 0x01DE3D 07:DE2D: A9 11     LDA #$11
C - - - - - 0x01DE3F 07:DE2F: 8D 09 00  STA a: ram_0009
C - - - - - 0x01DE42 07:DE32: AD 0E 00  LDA a: ram_000E
C - - - - - 0x01DE45 07:DE35: CD 09 00  CMP a: ram_0009
C - - - - - 0x01DE48 07:DE38: F0 03     BEQ $DE3D
C - - - - - 0x01DE4A 07:DE3A: 4C 12 DE  JMP $DE12
C - - - - - 0x01DE4D 07:DE3D: 60        RTS
C - - - - - 0x01DE4E 07:DE3E: FF        UNDEFINED
C - - - - - 0x01DE4F 07:DE3F: FF        UNDEFINED
C - - - - - 0x01DE50 07:DE40: FF        UNDEFINED
C - - - - - 0x01DE51 07:DE41: FF        UNDEFINED
C - - - - - 0x01DE52 07:DE42: FF        UNDEFINED
C - - - - - 0x01DE53 07:DE43: FF        UNDEFINED
C - - - - - 0x01DE54 07:DE44: FF        UNDEFINED
C - - - - - 0x01DE55 07:DE45: FF        UNDEFINED
C - - - - - 0x01DE56 07:DE46: FF        UNDEFINED
- - - - - - 0x01DE57 07:DE47: FF        .byte $FF   ; 
- - - - - - 0x01DE58 07:DE48: FF        .byte $FF   ; 
- - - - - - 0x01DE59 07:DE49: FF        .byte $FF   ; 
- - - - - - 0x01DE5A 07:DE4A: FF        .byte $FF   ; 
- - - - - - 0x01DE5B 07:DE4B: FF        .byte $FF   ; 
- - - - - - 0x01DE5C 07:DE4C: FF        .byte $FF   ; 
- - - - - - 0x01DE5D 07:DE4D: FF        .byte $FF   ; 
- - - - - - 0x01DE5E 07:DE4E: FF        .byte $FF   ; 
- - - - - - 0x01DE5F 07:DE4F: FF        .byte $FF   ; 
- - - - - - 0x01DE60 07:DE50: FF        .byte $FF   ; 
- - - - - - 0x01DE61 07:DE51: FF        .byte $FF   ; 
- - - - - - 0x01DE62 07:DE52: FF        .byte $FF   ; 
- - - - - - 0x01DE63 07:DE53: FF        .byte $FF   ; 
- - - - - - 0x01DE64 07:DE54: FF        .byte $FF   ; 
- - - - - - 0x01DE65 07:DE55: FF        .byte $FF   ; 
- - - - - - 0x01DE66 07:DE56: FF        .byte $FF   ; 
- - - - - - 0x01DE67 07:DE57: FF        .byte $FF   ; 
- - - - - - 0x01DE68 07:DE58: FF        .byte $FF   ; 
- - - - - - 0x01DE69 07:DE59: FF        .byte $FF   ; 
- - - - - - 0x01DE6A 07:DE5A: FF        .byte $FF   ; 
- - - - - - 0x01DE6B 07:DE5B: FF        .byte $FF   ; 
- - - - - - 0x01DE6C 07:DE5C: FF        .byte $FF   ; 
- - - - - - 0x01DE6D 07:DE5D: FF        .byte $FF   ; 
- - - - - - 0x01DE6E 07:DE5E: FF        .byte $FF   ; 
- - - - - - 0x01DE6F 07:DE5F: FF        .byte $FF   ; 
- - - - - - 0x01DE70 07:DE60: FF        .byte $FF   ; 
- - - - - - 0x01DE71 07:DE61: FF        .byte $FF   ; 
- - - - - - 0x01DE72 07:DE62: FF        .byte $FF   ; 
- - - - - - 0x01DE73 07:DE63: FF        .byte $FF   ; 
- - - - - - 0x01DE74 07:DE64: FF        .byte $FF   ; 
- - - - - - 0x01DE75 07:DE65: FF        .byte $FF   ; 
- - - - - - 0x01DE76 07:DE66: FF        .byte $FF   ; 
- - - - - - 0x01DE77 07:DE67: FF        .byte $FF   ; 
- - - - - - 0x01DE78 07:DE68: FF        .byte $FF   ; 
- - - - - - 0x01DE79 07:DE69: FF        .byte $FF   ; 
- - - - - - 0x01DE7A 07:DE6A: FF        .byte $FF   ; 
- - - - - - 0x01DE7B 07:DE6B: FF        .byte $FF   ; 
- - - - - - 0x01DE7C 07:DE6C: FF        .byte $FF   ; 
- - - - - - 0x01DE7D 07:DE6D: FF        .byte $FF   ; 
- - - - - - 0x01DE7E 07:DE6E: FF        .byte $FF   ; 
- - - - - - 0x01DE7F 07:DE6F: FF        .byte $FF   ; 
- - - - - - 0x01DE80 07:DE70: FF        .byte $FF   ; 
- - - - - - 0x01DE81 07:DE71: FF        .byte $FF   ; 
- - - - - - 0x01DE82 07:DE72: FF        .byte $FF   ; 
- - - - - - 0x01DE83 07:DE73: FF        .byte $FF   ; 
- - - - - - 0x01DE84 07:DE74: FF        .byte $FF   ; 
- - - - - - 0x01DE85 07:DE75: FF        .byte $FF   ; 
- - - - - - 0x01DE86 07:DE76: FF        .byte $FF   ; 
- - - - - - 0x01DE87 07:DE77: FF        .byte $FF   ; 
- - - - - - 0x01DE88 07:DE78: FF        .byte $FF   ; 
- - - - - - 0x01DE89 07:DE79: FF        .byte $FF   ; 
- - - - - - 0x01DE8A 07:DE7A: FF        .byte $FF   ; 
- - - - - - 0x01DE8B 07:DE7B: FF        .byte $FF   ; 
- - - - - - 0x01DE8C 07:DE7C: FF        .byte $FF   ; 
- - - - - - 0x01DE8D 07:DE7D: FF        .byte $FF   ; 
- - - - - - 0x01DE8E 07:DE7E: FF        .byte $FF   ; 
- - - - - - 0x01DE8F 07:DE7F: FF        .byte $FF   ; 
- - - - - - 0x01DE90 07:DE80: FF        .byte $FF   ; 
- - - - - - 0x01DE91 07:DE81: FF        .byte $FF   ; 
- - - - - - 0x01DE92 07:DE82: FF        .byte $FF   ; 
- - - - - - 0x01DE93 07:DE83: FF        .byte $FF   ; 
- - - - - - 0x01DE94 07:DE84: FF        .byte $FF   ; 
- - - - - - 0x01DE95 07:DE85: FF        .byte $FF   ; 
- - - - - - 0x01DE96 07:DE86: FF        .byte $FF   ; 
- - - - - - 0x01DE97 07:DE87: FF        .byte $FF   ; 
- - - - - - 0x01DE98 07:DE88: FF        .byte $FF   ; 
- - - - - - 0x01DE99 07:DE89: FF        .byte $FF   ; 
- - - - - - 0x01DE9A 07:DE8A: FF        .byte $FF   ; 
- - - - - - 0x01DE9B 07:DE8B: FF        .byte $FF   ; 
- - - - - - 0x01DE9C 07:DE8C: FF        .byte $FF   ; 
- - - - - - 0x01DE9D 07:DE8D: FF        .byte $FF   ; 
- - - - - - 0x01DE9E 07:DE8E: FF        .byte $FF   ; 
- - - - - - 0x01DE9F 07:DE8F: FF        .byte $FF   ; 
- - - - - - 0x01DEA0 07:DE90: FF        .byte $FF   ; 
- - - - - - 0x01DEA1 07:DE91: FF        .byte $FF   ; 
- - - - - - 0x01DEA2 07:DE92: FF        .byte $FF   ; 
- - - - - - 0x01DEA3 07:DE93: FF        .byte $FF   ; 
- - - - - - 0x01DEA4 07:DE94: FF        .byte $FF   ; 
- - - - - - 0x01DEA5 07:DE95: FF        .byte $FF   ; 
- - - - - - 0x01DEA6 07:DE96: FF        .byte $FF   ; 
- - - - - - 0x01DEA7 07:DE97: FF        .byte $FF   ; 
- - - - - - 0x01DEA8 07:DE98: FF        .byte $FF   ; 
- - - - - - 0x01DEA9 07:DE99: FF        .byte $FF   ; 
- - - - - - 0x01DEAA 07:DE9A: FF        .byte $FF   ; 
- - - - - - 0x01DEAB 07:DE9B: FF        .byte $FF   ; 
- - - - - - 0x01DEAC 07:DE9C: FF        .byte $FF   ; 
- - - - - - 0x01DEAD 07:DE9D: FF        .byte $FF   ; 
- - - - - - 0x01DEAE 07:DE9E: FF        .byte $FF   ; 
- - - - - - 0x01DEAF 07:DE9F: FF        .byte $FF   ; 
- - - - - - 0x01DEB0 07:DEA0: FF        .byte $FF   ; 
- - - - - - 0x01DEB1 07:DEA1: FF        .byte $FF   ; 
- - - - - - 0x01DEB2 07:DEA2: FF        .byte $FF   ; 
- - - - - - 0x01DEB3 07:DEA3: FF        .byte $FF   ; 
- - - - - - 0x01DEB4 07:DEA4: FF        .byte $FF   ; 
- - - - - - 0x01DEB5 07:DEA5: FF        .byte $FF   ; 
- - - - - - 0x01DEB6 07:DEA6: FF        .byte $FF   ; 
- - - - - - 0x01DEB7 07:DEA7: FF        .byte $FF   ; 
- - - - - - 0x01DEB8 07:DEA8: FF        .byte $FF   ; 
- - - - - - 0x01DEB9 07:DEA9: FF        .byte $FF   ; 
- - - - - - 0x01DEBA 07:DEAA: FF        .byte $FF   ; 
- - - - - - 0x01DEBB 07:DEAB: FF        .byte $FF   ; 
- - - - - - 0x01DEBC 07:DEAC: FF        .byte $FF   ; 
- - - - - - 0x01DEBD 07:DEAD: FF        .byte $FF   ; 
- - - - - - 0x01DEBE 07:DEAE: FF        .byte $FF   ; 
- - - - - - 0x01DEBF 07:DEAF: FF        .byte $FF   ; 
- - - - - - 0x01DEC0 07:DEB0: FF        .byte $FF   ; 
- - - - - - 0x01DEC1 07:DEB1: FF        .byte $FF   ; 
- - - - - - 0x01DEC2 07:DEB2: FF        .byte $FF   ; 
- - - - - - 0x01DEC3 07:DEB3: FF        .byte $FF   ; 
- - - - - - 0x01DEC4 07:DEB4: FF        .byte $FF   ; 
- - - - - - 0x01DEC5 07:DEB5: FF        .byte $FF   ; 
- - - - - - 0x01DEC6 07:DEB6: FF        .byte $FF   ; 
- - - - - - 0x01DEC7 07:DEB7: FF        .byte $FF   ; 
- - - - - - 0x01DEC8 07:DEB8: FF        .byte $FF   ; 
- - - - - - 0x01DEC9 07:DEB9: FF        .byte $FF   ; 
- - - - - - 0x01DECA 07:DEBA: FF        .byte $FF   ; 
- - - - - - 0x01DECB 07:DEBB: FF        .byte $FF   ; 
- - - - - - 0x01DECC 07:DEBC: FF        .byte $FF   ; 
- - - - - - 0x01DECD 07:DEBD: FF        .byte $FF   ; 
- - - - - - 0x01DECE 07:DEBE: FF        .byte $FF   ; 
- - - - - - 0x01DECF 07:DEBF: FF        .byte $FF   ; 
- - - - - - 0x01DED0 07:DEC0: FF        .byte $FF   ; 
- - - - - - 0x01DED1 07:DEC1: FF        .byte $FF   ; 
- - - - - - 0x01DED2 07:DEC2: FF        .byte $FF   ; 
- - - - - - 0x01DED3 07:DEC3: FF        .byte $FF   ; 
- - - - - - 0x01DED4 07:DEC4: FF        .byte $FF   ; 
- - - - - - 0x01DED5 07:DEC5: FF        .byte $FF   ; 
- - - - - - 0x01DED6 07:DEC6: FF        .byte $FF   ; 
- - - - - - 0x01DED7 07:DEC7: FF        .byte $FF   ; 
- - - - - - 0x01DED8 07:DEC8: FF        .byte $FF   ; 
- - - - - - 0x01DED9 07:DEC9: FF        .byte $FF   ; 
- - - - - - 0x01DEDA 07:DECA: FF        .byte $FF   ; 
- - - - - - 0x01DEDB 07:DECB: FF        .byte $FF   ; 
- - - - - - 0x01DEDC 07:DECC: FF        .byte $FF   ; 
- - - - - - 0x01DEDD 07:DECD: FF        .byte $FF   ; 
- - - - - - 0x01DEDE 07:DECE: FF        .byte $FF   ; 
- - - - - - 0x01DEDF 07:DECF: FF        .byte $FF   ; 
- - - - - - 0x01DEE0 07:DED0: FF        .byte $FF   ; 
- - - - - - 0x01DEE1 07:DED1: FF        .byte $FF   ; 
- - - - - - 0x01DEE2 07:DED2: FF        .byte $FF   ; 
- - - - - - 0x01DEE3 07:DED3: FF        .byte $FF   ; 
- - - - - - 0x01DEE4 07:DED4: FF        .byte $FF   ; 
- - - - - - 0x01DEE5 07:DED5: FF        .byte $FF   ; 
- - - - - - 0x01DEE6 07:DED6: FF        .byte $FF   ; 
- - - - - - 0x01DEE7 07:DED7: FF        .byte $FF   ; 
- - - - - - 0x01DEE8 07:DED8: FF        .byte $FF   ; 
- - - - - - 0x01DEE9 07:DED9: FF        .byte $FF   ; 
- - - - - - 0x01DEEA 07:DEDA: FF        .byte $FF   ; 
- - - - - - 0x01DEEB 07:DEDB: FF        .byte $FF   ; 
- - - - - - 0x01DEEC 07:DEDC: FF        .byte $FF   ; 
- - - - - - 0x01DEED 07:DEDD: FF        .byte $FF   ; 
- - - - - - 0x01DEEE 07:DEDE: FF        .byte $FF   ; 
- - - - - - 0x01DEEF 07:DEDF: FF        .byte $FF   ; 
- - - - - - 0x01DEF0 07:DEE0: FF        .byte $FF   ; 
- - - - - - 0x01DEF1 07:DEE1: FF        .byte $FF   ; 
- - - - - - 0x01DEF2 07:DEE2: FF        .byte $FF   ; 
- - - - - - 0x01DEF3 07:DEE3: FF        .byte $FF   ; 
- - - - - - 0x01DEF4 07:DEE4: FF        .byte $FF   ; 
- - - - - - 0x01DEF5 07:DEE5: FF        .byte $FF   ; 
- - - - - - 0x01DEF6 07:DEE6: FF        .byte $FF   ; 
- - - - - - 0x01DEF7 07:DEE7: FF        .byte $FF   ; 
- - - - - - 0x01DEF8 07:DEE8: FF        .byte $FF   ; 
- - - - - - 0x01DEF9 07:DEE9: FF        .byte $FF   ; 
- - - - - - 0x01DEFA 07:DEEA: FF        .byte $FF   ; 
- - - - - - 0x01DEFB 07:DEEB: FF        .byte $FF   ; 
- - - - - - 0x01DEFC 07:DEEC: FF        .byte $FF   ; 
- - - - - - 0x01DEFD 07:DEED: FF        .byte $FF   ; 
- - - - - - 0x01DEFE 07:DEEE: FF        .byte $FF   ; 
- - - - - - 0x01DEFF 07:DEEF: FF        .byte $FF   ; 
- - - - - - 0x01DF00 07:DEF0: FF        .byte $FF   ; 
- - - - - - 0x01DF01 07:DEF1: FF        .byte $FF   ; 
- - - - - - 0x01DF02 07:DEF2: FF        .byte $FF   ; 
- - - - - - 0x01DF03 07:DEF3: FF        .byte $FF   ; 
- - - - - - 0x01DF04 07:DEF4: FF        .byte $FF   ; 
- - - - - - 0x01DF05 07:DEF5: FF        .byte $FF   ; 
- - - - - - 0x01DF06 07:DEF6: FF        .byte $FF   ; 
- - - - - - 0x01DF07 07:DEF7: FF        .byte $FF   ; 
- - - - - - 0x01DF08 07:DEF8: FF        .byte $FF   ; 
- - - - - - 0x01DF09 07:DEF9: FF        .byte $FF   ; 
- - - - - - 0x01DF0A 07:DEFA: FF        .byte $FF   ; 
- - - - - - 0x01DF0B 07:DEFB: FF        .byte $FF   ; 
- - - - - - 0x01DF0C 07:DEFC: FF        .byte $FF   ; 
- - - - - - 0x01DF0D 07:DEFD: FF        .byte $FF   ; 
- - - - - - 0x01DF0E 07:DEFE: FF        .byte $FF   ; 
- - - - - - 0x01DF0F 07:DEFF: FF        .byte $FF   ; 
- - - - - - 0x01DF10 07:DF00: FF        .byte $FF   ; 
- - - - - - 0x01DF11 07:DF01: FF        .byte $FF   ; 
- - - - - - 0x01DF12 07:DF02: FF        .byte $FF   ; 
- - - - - - 0x01DF13 07:DF03: FF        .byte $FF   ; 
- - - - - - 0x01DF14 07:DF04: FF        .byte $FF   ; 
- - - - - - 0x01DF15 07:DF05: FF        .byte $FF   ; 
- - - - - - 0x01DF16 07:DF06: FF        .byte $FF   ; 
- - - - - - 0x01DF17 07:DF07: FF        .byte $FF   ; 
- - - - - - 0x01DF18 07:DF08: FF        .byte $FF   ; 
- - - - - - 0x01DF19 07:DF09: FF        .byte $FF   ; 
- - - - - - 0x01DF1A 07:DF0A: FF        .byte $FF   ; 
- - - - - - 0x01DF1B 07:DF0B: FF        .byte $FF   ; 
- - - - - - 0x01DF1C 07:DF0C: FF        .byte $FF   ; 
- - - - - - 0x01DF1D 07:DF0D: FF        .byte $FF   ; 
- - - - - - 0x01DF1E 07:DF0E: FF        .byte $FF   ; 
- - - - - - 0x01DF1F 07:DF0F: FF        .byte $FF   ; 
- - - - - - 0x01DF20 07:DF10: FF        .byte $FF   ; 
- - - - - - 0x01DF21 07:DF11: FF        .byte $FF   ; 
- - - - - - 0x01DF22 07:DF12: FF        .byte $FF   ; 
- - - - - - 0x01DF23 07:DF13: FF        .byte $FF   ; 
- - - - - - 0x01DF24 07:DF14: FF        .byte $FF   ; 
- - - - - - 0x01DF25 07:DF15: FF        .byte $FF   ; 
- - - - - - 0x01DF26 07:DF16: FF        .byte $FF   ; 
- - - - - - 0x01DF27 07:DF17: FF        .byte $FF   ; 
- - - - - - 0x01DF28 07:DF18: FF        .byte $FF   ; 
- - - - - - 0x01DF29 07:DF19: FF        .byte $FF   ; 
- - - - - - 0x01DF2A 07:DF1A: FF        .byte $FF   ; 
- - - - - - 0x01DF2B 07:DF1B: FF        .byte $FF   ; 
- - - - - - 0x01DF2C 07:DF1C: FF        .byte $FF   ; 
- - - - - - 0x01DF2D 07:DF1D: FF        .byte $FF   ; 
- - - - - - 0x01DF2E 07:DF1E: FF        .byte $FF   ; 
- - - - - - 0x01DF2F 07:DF1F: FF        .byte $FF   ; 
- - - - - - 0x01DF30 07:DF20: FF        .byte $FF   ; 
- - - - - - 0x01DF31 07:DF21: FF        .byte $FF   ; 
- - - - - - 0x01DF32 07:DF22: FF        .byte $FF   ; 
- - - - - - 0x01DF33 07:DF23: FF        .byte $FF   ; 
- - - - - - 0x01DF34 07:DF24: FF        .byte $FF   ; 
- - - - - - 0x01DF35 07:DF25: FF        .byte $FF   ; 
- - - - - - 0x01DF36 07:DF26: FF        .byte $FF   ; 
- - - - - - 0x01DF37 07:DF27: FF        .byte $FF   ; 
- - - - - - 0x01DF38 07:DF28: FF        .byte $FF   ; 
- - - - - - 0x01DF39 07:DF29: FF        .byte $FF   ; 
- - - - - - 0x01DF3A 07:DF2A: FF        .byte $FF   ; 
- - - - - - 0x01DF3B 07:DF2B: FF        .byte $FF   ; 
- - - - - - 0x01DF3C 07:DF2C: FF        .byte $FF   ; 
- - - - - - 0x01DF3D 07:DF2D: FF        .byte $FF   ; 
- - - - - - 0x01DF3E 07:DF2E: FF        .byte $FF   ; 
- - - - - - 0x01DF3F 07:DF2F: FF        .byte $FF   ; 
- - - - - - 0x01DF40 07:DF30: FF        .byte $FF   ; 
- - - - - - 0x01DF41 07:DF31: FF        .byte $FF   ; 
- - - - - - 0x01DF42 07:DF32: FF        .byte $FF   ; 
- - - - - - 0x01DF43 07:DF33: FF        .byte $FF   ; 
- - - - - - 0x01DF44 07:DF34: FF        .byte $FF   ; 
- - - - - - 0x01DF45 07:DF35: FF        .byte $FF   ; 
- - - - - - 0x01DF46 07:DF36: FF        .byte $FF   ; 
- - - - - - 0x01DF47 07:DF37: FF        .byte $FF   ; 
- - - - - - 0x01DF48 07:DF38: FF        .byte $FF   ; 
- - - - - - 0x01DF49 07:DF39: FF        .byte $FF   ; 
- - - - - - 0x01DF4A 07:DF3A: FF        .byte $FF   ; 
- - - - - - 0x01DF4B 07:DF3B: FF        .byte $FF   ; 
- - - - - - 0x01DF4C 07:DF3C: FF        .byte $FF   ; 
- - - - - - 0x01DF4D 07:DF3D: FF        .byte $FF   ; 
- - - - - - 0x01DF4E 07:DF3E: FF        .byte $FF   ; 
- - - - - - 0x01DF4F 07:DF3F: FF        .byte $FF   ; 
- - - - - - 0x01DF50 07:DF40: FF        .byte $FF   ; 
- - - - - - 0x01DF51 07:DF41: FF        .byte $FF   ; 
- - - - - - 0x01DF52 07:DF42: FF        .byte $FF   ; 
- - - - - - 0x01DF53 07:DF43: FF        .byte $FF   ; 
- - - - - - 0x01DF54 07:DF44: FF        .byte $FF   ; 
- - - - - - 0x01DF55 07:DF45: FF        .byte $FF   ; 
- - - - - - 0x01DF56 07:DF46: FF        .byte $FF   ; 
- - - - - - 0x01DF57 07:DF47: FF        .byte $FF   ; 
- - - - - - 0x01DF58 07:DF48: FF        .byte $FF   ; 
- - - - - - 0x01DF59 07:DF49: FF        .byte $FF   ; 
- - - - - - 0x01DF5A 07:DF4A: FF        .byte $FF   ; 
- - - - - - 0x01DF5B 07:DF4B: FF        .byte $FF   ; 
- - - - - - 0x01DF5C 07:DF4C: FF        .byte $FF   ; 
- - - - - - 0x01DF5D 07:DF4D: FF        .byte $FF   ; 
- - - - - - 0x01DF5E 07:DF4E: FF        .byte $FF   ; 
- - - - - - 0x01DF5F 07:DF4F: FF        .byte $FF   ; 
- - - - - - 0x01DF60 07:DF50: FF        .byte $FF   ; 
- - - - - - 0x01DF61 07:DF51: FF        .byte $FF   ; 
- - - - - - 0x01DF62 07:DF52: FF        .byte $FF   ; 
- - - - - - 0x01DF63 07:DF53: FF        .byte $FF   ; 
- - - - - - 0x01DF64 07:DF54: FF        .byte $FF   ; 
- - - - - - 0x01DF65 07:DF55: FF        .byte $FF   ; 
- - - - - - 0x01DF66 07:DF56: FF        .byte $FF   ; 
- - - - - - 0x01DF67 07:DF57: FF        .byte $FF   ; 
- - - - - - 0x01DF68 07:DF58: FF        .byte $FF   ; 
- - - - - - 0x01DF69 07:DF59: FF        .byte $FF   ; 
- - - - - - 0x01DF6A 07:DF5A: FF        .byte $FF   ; 
- - - - - - 0x01DF6B 07:DF5B: FF        .byte $FF   ; 
- - - - - - 0x01DF6C 07:DF5C: FF        .byte $FF   ; 
- - - - - - 0x01DF6D 07:DF5D: FF        .byte $FF   ; 
- - - - - - 0x01DF6E 07:DF5E: FF        .byte $FF   ; 
- - - - - - 0x01DF6F 07:DF5F: FF        .byte $FF   ; 
- - - - - - 0x01DF70 07:DF60: FF        .byte $FF   ; 
- - - - - - 0x01DF71 07:DF61: FF        .byte $FF   ; 
- - - - - - 0x01DF72 07:DF62: FF        .byte $FF   ; 
- - - - - - 0x01DF73 07:DF63: FF        .byte $FF   ; 
- - - - - - 0x01DF74 07:DF64: FF        .byte $FF   ; 
- - - - - - 0x01DF75 07:DF65: FF        .byte $FF   ; 
- - - - - - 0x01DF76 07:DF66: FF        .byte $FF   ; 
- - - - - - 0x01DF77 07:DF67: FF        .byte $FF   ; 
- - - - - - 0x01DF78 07:DF68: FF        .byte $FF   ; 
- - - - - - 0x01DF79 07:DF69: FF        .byte $FF   ; 
- - - - - - 0x01DF7A 07:DF6A: FF        .byte $FF   ; 
- - - - - - 0x01DF7B 07:DF6B: FF        .byte $FF   ; 
- - - - - - 0x01DF7C 07:DF6C: FF        .byte $FF   ; 
- - - - - - 0x01DF7D 07:DF6D: FF        .byte $FF   ; 
- - - - - - 0x01DF7E 07:DF6E: FF        .byte $FF   ; 
- - - - - - 0x01DF7F 07:DF6F: FF        .byte $FF   ; 
- - - - - - 0x01DF80 07:DF70: FF        .byte $FF   ; 
- - - - - - 0x01DF81 07:DF71: FF        .byte $FF   ; 
- - - - - - 0x01DF82 07:DF72: FF        .byte $FF   ; 
- - - - - - 0x01DF83 07:DF73: FF        .byte $FF   ; 
- - - - - - 0x01DF84 07:DF74: FF        .byte $FF   ; 
- - - - - - 0x01DF85 07:DF75: FF        .byte $FF   ; 
- - - - - - 0x01DF86 07:DF76: FF        .byte $FF   ; 
- - - - - - 0x01DF87 07:DF77: FF        .byte $FF   ; 
- - - - - - 0x01DF88 07:DF78: FF        .byte $FF   ; 
- - - - - - 0x01DF89 07:DF79: FF        .byte $FF   ; 
- - - - - - 0x01DF8A 07:DF7A: FF        .byte $FF   ; 
- - - - - - 0x01DF8B 07:DF7B: FF        .byte $FF   ; 
- - - - - - 0x01DF8C 07:DF7C: FF        .byte $FF   ; 
- - - - - - 0x01DF8D 07:DF7D: FF        .byte $FF   ; 
- - - - - - 0x01DF8E 07:DF7E: FF        .byte $FF   ; 
- - - - - - 0x01DF8F 07:DF7F: FF        .byte $FF   ; 
- - - - - - 0x01DF90 07:DF80: FF        .byte $FF   ; 
- - - - - - 0x01DF91 07:DF81: FF        .byte $FF   ; 
- - - - - - 0x01DF92 07:DF82: FF        .byte $FF   ; 
- - - - - - 0x01DF93 07:DF83: FF        .byte $FF   ; 
- - - - - - 0x01DF94 07:DF84: FF        .byte $FF   ; 
- - - - - - 0x01DF95 07:DF85: FF        .byte $FF   ; 
- - - - - - 0x01DF96 07:DF86: FF        .byte $FF   ; 
- - - - - - 0x01DF97 07:DF87: FF        .byte $FF   ; 
- - - - - - 0x01DF98 07:DF88: FF        .byte $FF   ; 
- - - - - - 0x01DF99 07:DF89: FF        .byte $FF   ; 
- - - - - - 0x01DF9A 07:DF8A: FF        .byte $FF   ; 
- - - - - - 0x01DF9B 07:DF8B: FF        .byte $FF   ; 
- - - - - - 0x01DF9C 07:DF8C: FF        .byte $FF   ; 
- - - - - - 0x01DF9D 07:DF8D: FF        .byte $FF   ; 
- - - - - - 0x01DF9E 07:DF8E: FF        .byte $FF   ; 
- - - - - - 0x01DF9F 07:DF8F: FF        .byte $FF   ; 
- - - - - - 0x01DFA0 07:DF90: FF        .byte $FF   ; 
- - - - - - 0x01DFA1 07:DF91: FF        .byte $FF   ; 
- - - - - - 0x01DFA2 07:DF92: FF        .byte $FF   ; 
- - - - - - 0x01DFA3 07:DF93: FF        .byte $FF   ; 
- - - - - - 0x01DFA4 07:DF94: FF        .byte $FF   ; 
- - - - - - 0x01DFA5 07:DF95: FF        .byte $FF   ; 
- - - - - - 0x01DFA6 07:DF96: FF        .byte $FF   ; 
- - - - - - 0x01DFA7 07:DF97: FF        .byte $FF   ; 
- - - - - - 0x01DFA8 07:DF98: FF        .byte $FF   ; 
- - - - - - 0x01DFA9 07:DF99: FF        .byte $FF   ; 
- - - - - - 0x01DFAA 07:DF9A: FF        .byte $FF   ; 
- - - - - - 0x01DFAB 07:DF9B: FF        .byte $FF   ; 
- - - - - - 0x01DFAC 07:DF9C: FF        .byte $FF   ; 
- - - - - - 0x01DFAD 07:DF9D: FF        .byte $FF   ; 
- - - - - - 0x01DFAE 07:DF9E: FF        .byte $FF   ; 
- - - - - - 0x01DFAF 07:DF9F: FF        .byte $FF   ; 
- - - - - - 0x01DFB0 07:DFA0: FF        .byte $FF   ; 
- - - - - - 0x01DFB1 07:DFA1: FF        .byte $FF   ; 
- - - - - - 0x01DFB2 07:DFA2: FF        .byte $FF   ; 
- - - - - - 0x01DFB3 07:DFA3: FF        .byte $FF   ; 
- - - - - - 0x01DFB4 07:DFA4: FF        .byte $FF   ; 
- - - - - - 0x01DFB5 07:DFA5: FF        .byte $FF   ; 
- - - - - - 0x01DFB6 07:DFA6: FF        .byte $FF   ; 
- - - - - - 0x01DFB7 07:DFA7: FF        .byte $FF   ; 
- - - - - - 0x01DFB8 07:DFA8: FF        .byte $FF   ; 
- - - - - - 0x01DFB9 07:DFA9: FF        .byte $FF   ; 
- - - - - - 0x01DFBA 07:DFAA: FF        .byte $FF   ; 
- - - - - - 0x01DFBB 07:DFAB: FF        .byte $FF   ; 
- - - - - - 0x01DFBC 07:DFAC: FF        .byte $FF   ; 
- - - - - - 0x01DFBD 07:DFAD: FF        .byte $FF   ; 
- - - - - - 0x01DFBE 07:DFAE: FF        .byte $FF   ; 
- - - - - - 0x01DFBF 07:DFAF: FF        .byte $FF   ; 
- - - - - - 0x01DFC0 07:DFB0: FF        .byte $FF   ; 
- - - - - - 0x01DFC1 07:DFB1: FF        .byte $FF   ; 
- - - - - - 0x01DFC2 07:DFB2: FF        .byte $FF   ; 
- - - - - - 0x01DFC3 07:DFB3: FF        .byte $FF   ; 
- - - - - - 0x01DFC4 07:DFB4: FF        .byte $FF   ; 
- - - - - - 0x01DFC5 07:DFB5: FF        .byte $FF   ; 
- - - - - - 0x01DFC6 07:DFB6: FF        .byte $FF   ; 
- - - - - - 0x01DFC7 07:DFB7: FF        .byte $FF   ; 
- - - - - - 0x01DFC8 07:DFB8: FF        .byte $FF   ; 
- - - - - - 0x01DFC9 07:DFB9: FF        .byte $FF   ; 
- - - - - - 0x01DFCA 07:DFBA: FF        .byte $FF   ; 
- - - - - - 0x01DFCB 07:DFBB: FF        .byte $FF   ; 
- - - - - - 0x01DFCC 07:DFBC: FF        .byte $FF   ; 
- - - - - - 0x01DFCD 07:DFBD: FF        .byte $FF   ; 
- - - - - - 0x01DFCE 07:DFBE: FF        .byte $FF   ; 
- - - - - - 0x01DFCF 07:DFBF: FF        .byte $FF   ; 
- - - - - - 0x01DFD0 07:DFC0: FF        .byte $FF   ; 
- - - - - - 0x01DFD1 07:DFC1: FF        .byte $FF   ; 
- - - - - - 0x01DFD2 07:DFC2: FF        .byte $FF   ; 
- - - - - - 0x01DFD3 07:DFC3: FF        .byte $FF   ; 
- - - - - - 0x01DFD4 07:DFC4: FF        .byte $FF   ; 
- - - - - - 0x01DFD5 07:DFC5: FF        .byte $FF   ; 
- - - - - - 0x01DFD6 07:DFC6: FF        .byte $FF   ; 
- - - - - - 0x01DFD7 07:DFC7: FF        .byte $FF   ; 
- - - - - - 0x01DFD8 07:DFC8: FF        .byte $FF   ; 
- - - - - - 0x01DFD9 07:DFC9: FF        .byte $FF   ; 
- - - - - - 0x01DFDA 07:DFCA: FF        .byte $FF   ; 
- - - - - - 0x01DFDB 07:DFCB: FF        .byte $FF   ; 
- - - - - - 0x01DFDC 07:DFCC: FF        .byte $FF   ; 
- - - - - - 0x01DFDD 07:DFCD: FF        .byte $FF   ; 
- - - - - - 0x01DFDE 07:DFCE: FF        .byte $FF   ; 
- - - - - - 0x01DFDF 07:DFCF: FF        .byte $FF   ; 
- - - - - - 0x01DFE0 07:DFD0: FF        .byte $FF   ; 
- - - - - - 0x01DFE1 07:DFD1: FF        .byte $FF   ; 
- - - - - - 0x01DFE2 07:DFD2: FF        .byte $FF   ; 
- - - - - - 0x01DFE3 07:DFD3: FF        .byte $FF   ; 
- - - - - - 0x01DFE4 07:DFD4: FF        .byte $FF   ; 
- - - - - - 0x01DFE5 07:DFD5: FF        .byte $FF   ; 
- - - - - - 0x01DFE6 07:DFD6: FF        .byte $FF   ; 
- - - - - - 0x01DFE7 07:DFD7: FF        .byte $FF   ; 
- - - - - - 0x01DFE8 07:DFD8: FF        .byte $FF   ; 
- - - - - - 0x01DFE9 07:DFD9: FF        .byte $FF   ; 
- - - - - - 0x01DFEA 07:DFDA: FF        .byte $FF   ; 
- - - - - - 0x01DFEB 07:DFDB: FF        .byte $FF   ; 
- - - - - - 0x01DFEC 07:DFDC: FF        .byte $FF   ; 
- - - - - - 0x01DFED 07:DFDD: FF        .byte $FF   ; 
- - - - - - 0x01DFEE 07:DFDE: FF        .byte $FF   ; 
- - - - - - 0x01DFEF 07:DFDF: FF        .byte $FF   ; 
- - - - - - 0x01DFF0 07:DFE0: FF        .byte $FF   ; 
- - - - - - 0x01DFF1 07:DFE1: FF        .byte $FF   ; 
- - - - - - 0x01DFF2 07:DFE2: FF        .byte $FF   ; 
- - - - - - 0x01DFF3 07:DFE3: FF        .byte $FF   ; 
- - - - - - 0x01DFF4 07:DFE4: FF        .byte $FF   ; 
- - - - - - 0x01DFF5 07:DFE5: FF        .byte $FF   ; 
- - - - - - 0x01DFF6 07:DFE6: FF        .byte $FF   ; 
- - - - - - 0x01DFF7 07:DFE7: FF        .byte $FF   ; 
- - - - - - 0x01DFF8 07:DFE8: FF        .byte $FF   ; 
- - - - - - 0x01DFF9 07:DFE9: FF        .byte $FF   ; 
- - - - - - 0x01DFFA 07:DFEA: FF        .byte $FF   ; 
- - - - - - 0x01DFFB 07:DFEB: FF        .byte $FF   ; 
- - - - - - 0x01DFFC 07:DFEC: FF        .byte $FF   ; 
- - - - - - 0x01DFFD 07:DFED: FF        .byte $FF   ; 
- - - - - - 0x01DFFE 07:DFEE: FF        .byte $FF   ; 
- - - - - - 0x01DFFF 07:DFEF: FF        .byte $FF   ; 
- - - - - - 0x01E000 07:DFF0: FF        .byte $FF   ; 
- - - - - - 0x01E001 07:DFF1: FF        .byte $FF   ; 
- - - - - - 0x01E002 07:DFF2: FF        .byte $FF   ; 
- - - - - - 0x01E003 07:DFF3: FF        .byte $FF   ; 
- - - - - - 0x01E004 07:DFF4: FF        .byte $FF   ; 
- - - - - - 0x01E005 07:DFF5: FF        .byte $FF   ; 
- - - - - - 0x01E006 07:DFF6: FF        .byte $FF   ; 
- - - - - - 0x01E007 07:DFF7: FF        .byte $FF   ; 
- - - - - - 0x01E008 07:DFF8: FF        .byte $FF   ; 
- - - - - - 0x01E009 07:DFF9: FF        .byte $FF   ; 
- - - - - - 0x01E00A 07:DFFA: FF        .byte $FF   ; 
- - - - - - 0x01E00B 07:DFFB: FF        .byte $FF   ; 
- - - - - - 0x01E00C 07:DFFC: FF        .byte $FF   ; 
- - - - - - 0x01E00D 07:DFFD: FF        .byte $FF   ; 
- - - - - - 0x01E00E 07:DFFE: FF        .byte $FF   ; 
- - - - - - 0x01E00F 07:DFFF: FF        .byte $FF   ; 