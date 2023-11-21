.segment "ZP": absolute

	ram_00: .res 1 ; probably a pointer to level data or something
	ram_01: .res 1
	ram_02: .res 1
	ram_03: .res 1
	music_pointer = ram_02 ; music_pointer:
	ram_04: .res 1
	ram_05: .res 1
	ram_06: .res 1
	ram_07: .res 1
	player_lives: .res 1 ; 08
	temp: .res 1 ; this is used a fuckton, also set it to res 2 and it skips levels lol
	player_health: .res 1 ; 0A
	ram_0b: .res 1
	player_position_y_again: .res 1
	i_frames: .res 1
	ram_0e: .res 1 ; 0E related to player_health

	player_fall_state: .res 1 ; (?) 2 = on ground, 1 = ascending, 0 = descending
	player_velocity: .res 1
	ram_11: .res 1
	ram_12: .res 1 ; related to jumping?

	button_a_down: .res 1
	button_b_down: .res 1
	button_up_down: .res 1
	button_down_down: .res 1
	button_right_down: .res 1
	button_left_down: .res 1
	button_select_down: .res 1
	button_start_down: .res 1

	MAX_HEALTH = 5

	.enum EnemyType
		none
		goomba = 2
		crocodile
		cabbage
		carrot = 6
		heart = 8
	.endenum

	; man I hate all this res

	ram_1b: .res 1
	player_direction: .res 1 ; 0 = left, 1 = right
	title_screen_wave_timer: .res 1
	player_chunk_pos: .res 1
	player_chunk_pos_fine: .res 1
	player_chunk_pos_again: .res 1
	player_chunk_pos_fine_again: .res 1
	ram_22: .res 1
	ram_23: .res 1
	player_sprite: .res 1
	player_anim_timer: .res 1
	ram_26: .res 1
	ram_27: .res 1
	ram_28: .res 1
	ram_29: .res 1
	ram_2a: .res 1
	ram_2b: .res 1
	ram_2c: .res 1
	ram_2d: .res 1
	ram_2e: .res 1
	ram_2f: .res 1
	ram_30: .res 1
	ram_31: .res 1
	ram_32: .res 1
	ram_33: .res 1
	ram_34: .res 1
	ram_35: .res 1
	ram_36: .res 1
	ram_37: .res 1
	ram_38: .res 1
	ram_39: .res 1
	ram_3a: .res 1
	ram_3b: .res 1
	ram_3c: .res 1
	ram_3d: .res 1
	ram_3e: .res 1
	ram_3f: .res 1
	ram_40: .res 1
	ram_41: .res 1
	ram_42: .res 1
	ram_43: .res 1
	ram_44: .res 1
	ram_45: .res 1
	ram_46: .res 1
	ram_47: .res 1
	ram_48: .res 1
	ram_49: .res 1
	ram_4a: .res 1
	ram_4b: .res 1
	ram_4c: .res 1
	ram_4d: .res 1
	ram_4e: .res 1
	ram_4f: .res 1
	ram_50: .res 1
	ram_51: .res 1
	ram_52: .res 1
	ram_53: .res 1
	ram_54: .res 1
	ram_55: .res 1
	ram_56: .res 1
	ram_57: .res 1
	ram_58: .res 1
	player_is_moving_h: .res 1
	ram_5a: .res 1
	ram_5b: .res 1
	ram_5c: .res 1
	ram_5d: .res 1
	player_pos_x1: .res 1
	player_pos_x2: .res 1
	ram_60: .res 1
	ram_61: .res 1
	ram_62: .res 1
	ram_63: .res 1
	ram_64: .res 1
	ram_65: .res 1
	ram_66: .res 1
	ram_67: .res 1
	player_offset_y: .res 1
	player_offset_x: .res 1
	ram_6a: .res 1
	ram_6b: .res 1
	ram_6c: .res 1
	ram_6d: .res 1
	ram_6e: .res 1
	ram_6f: .res 1
	ram_70: .res 1
	ram_71: .res 1
	ram_72: .res 1
	ram_73: .res 1
	ram_74: .res 1
	ram_75: .res 1
	ram_76: .res 1
	ram_77: .res 1
	ram_78: .res 1
	ram_79: .res 1
	ram_7a: .res 1
	ram_7b: .res 1
	ram_7c: .res 1
	ram_7d: .res 1
	ram_7e: .res 1
	ram_7f: .res 1
	ram_80: .res 1
	ram_81: .res 1
	ram_82: .res 1
	ram_83: .res 1
	ram_84: .res 1
	ram_85: .res 1
	ram_86: .res 1
	ram_87: .res 1
	ram_88: .res 1
	ram_89: .res 1
	ram_8a: .res 1
	ram_8b: .res 1
	ram_8c: .res 1
	ram_8d: .res 1
	ram_8e: .res 1
	ram_8f: .res 1
	ram_90: .res 1
	ram_91: .res 1
	enemy_pos_x: .res 6
	enemy_pos_x2: .res 6
	enemy_pos_y: .res 6
	enemy_type: .res 6
	ram_aa: .res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	ram_b0: .res 1
	ram_b1: .res 1
	which_enemy: .res 1
	ram_b3: .res 1
	ram_b4: .res 1
	ram_b5: .res 1
	ram_b6: .res 1
	ram_b7: .res 1
	ram_b8: .res 1
	ram_b9: .res 1
	ram_ba: .res 1
	ram_bb: .res 1
	ram_bc: .res 1
	ram_bd: .res 1
	ram_be: .res 1
	ram_bf: .res 1
	ram_c0: .res 1
	konami_code_correct_presses: .res 1
	konami_code_active: .res 1
	konami_code_correct_button_down: .res 1
	button_mask: .res 1
	ram_c5: .res 1



.segment "BSS"
	; $1F7 may have something to do with enemies

	collision_something: .res $100

	OAM: .res $100
