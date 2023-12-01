.ifndef INES_SRAM
INES_SRAM = 0 ; 1 = battery backed SRAM at $6000-7FFF
.endif

.ifndef INES_FOUR_SCREEN_MIRRORING
INES_FOUR_SCREEN_MIRRORING = 0
.endif

.if INES_FOUR_SCREEN_MIRRORING && INES_MIRROR
.error "INES_Mirror should be set to 0 (horizontal) when 4-screen mirroring is enabled."
.endif

.byt $4E, $45, $53, $1A ; ID
.byt INES_PRG_ROM_SIZE ; 16k PRG chunk count
.byt INES_CHR_ROM_SIZE ;  8k CHR chunk count
.byt INES_MIRROR | (INES_SRAM << 1) | (INES_FOUR_SCREEN_MIRRORING << 3) | ((INES_MAPPER & $f) << 4)
.byt (INES_MAPPER & %11110000)
