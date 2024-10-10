.include "global.inc"
.include "nes.inc"
.include "ca65hl/ca65hl.inc"

setLongBranch -, -

.segment "PRGF"

; manually converted from nesmus music.bas

load_music:
	mb music_repeat = #0 
	mb music_wait = #0
	mb APU_CHANCTRL = #STATUS_ENABLE_MASK
	mb music_id = #0
	mb x_base = ram_07 << 2

	ldx x_base
	lda rom_start,x
	sta music_start+0
	sta music_pos
	inx
	lda rom_start,x
	sta music_start+1
	sta music_pos+1
	inx

	lda rom_start,x
	sta music_end+0
	inx
	lda rom_start,x
	sta music_end+1
	rts

music_loop_start_loop:
	iny
	lda (<music_pos),y
	sta music_repeat
	clc
	lda music_pos
	adc #2
	sta music_pos
	sta music_stack+0
	lda music_pos+1
	adc #0
	sta music_pos+1
	sta music_stack+1
	jmp music_loop
music_loop_end_loop:
	dec music_repeat
	lda music_repeat
	cmp #0
	beq music_loop_end_loop_last_time
	lda music_stack+0
	sta music_pos
	lda music_stack+1
	sta music_pos+1
	jmp music_loop
music_loop_end_loop_last_time:
	clc
	lda music_pos
	adc #1
	sta music_pos
	lda music_pos+1
	adc #0
	sta music_pos+1
	jmp music_loop
music_loop:
	if (music_wait <> #0)
		dec music_wait
		rts
	endif

	ldy #0
	lda (<music_pos),y
	cmp #$ff
	beq music_loop_start_loop
	cmp #$fe
	beq music_loop_end_loop
	sta music_wait
	iny
	lda (<music_pos),y
	sta music_id
	iny
music_loop_c0:
	if (music_id & #%11 = #0) goto music_loop_c1, long
	if (music_id & #%11 = #%11) goto music_loop_c0_full, long
music_loop_c0_full:
	lda (<music_pos),y
	sta APU_PULSE1CTRL
	iny
	lda (<music_pos),y
	sta APU_PULSE1RAMP
	iny
	lda (<music_pos),y
	sta APU_PULSE1FTUNE
	iny
	lda (<music_pos),y
	sta APU_PULSE1CTUNE
	iny
music_loop_c1:
	if (music_id & #%1100 = #0) goto music_loop_c2, long
	if (music_id & #%1100 = #%1100) goto music_loop_c1_full, long
music_loop_c1_full:
	lda (<music_pos),y
	sta APU_PULSE2CTRL
	iny
	lda (<music_pos),y
	sta APU_PULSE2RAMP
	iny
	lda (<music_pos),y
	sta APU_PULSE2FTUNE
	iny
	lda (<music_pos),y
	sta APU_PULSE2STUNE
	iny
music_loop_c2:
	if (music_id & #%110000 = #0) goto music_loop_c3, long
	if (music_id & #%110000 = #%110000) goto music_loop_c2_full, long
music_loop_c2_full:
	lda (<music_pos),y
	sta APU_TRICTRL1
	iny
	lda (<music_pos),y
	sta APU_TRICTRL2
	iny
	lda (<music_pos),y
	sta APU_TRIFREQ1
	iny
	lda (<music_pos),y
	sta APU_TRIFREQ2
	iny
music_loop_c3:
	if (music_id & #%11000000 = #0) goto music_loop_increment, long
	if (music_id & #%11000000 = #%11000000) goto music_loop_c3_full, long
music_loop_c3_full:
	lda (<music_pos),y
	sta APU_NOISECTRL
	iny
	lda (<music_pos),y
	sta $400d ; lol
	iny
	lda (<music_pos),y
	sta APU_NOISEFREQ1
	iny
	lda (<music_pos),y
	sta APU_NOISEFREQ2
	iny
music_loop_increment:
	tya
	sta nbasic_temp
	clc
	lda music_pos
	adc nbasic_temp
	sta music_pos
	lda music_pos+1
	adc #0
	sta music_pos+1
music_loop_increment_2:
	clc
	lda music_pos
	cmp music_end+0
	bne music_loop_end
	lda music_pos+1
	cmp music_end+1
	bne music_loop_end
	lda music_start+0
	sta music_pos
	lda music_start+1
	sta music_pos+1
music_loop_end:
	rts
