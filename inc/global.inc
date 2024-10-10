MAX_HEALTH = 5

.enum EnemyType
	none
	goomba = 2
	crocodile
	cabbage
	carrot = 6
	heart = 8
.endenum

.global reset, nmi, irq
.global rom_start
.global level_name
.global level_title
.global level_end_x
.global sub_de0d
.global sub_dad2
.global sub_d8b7, sub_c35a, enable_sound_channels, vsync
.global sub_d5c3, sub_d5ed, nesmus_shut_up, reset_enemies, sub_c3eb, sub_da95, sub_cab7
.global sub_c9e2, sub_db61, sub_e816, music_loop, sub_c24e
.global sub_e8ed, sub_d2bb, sub_c7ec, sub_cabb, get_controller_buttons, sub_dc71
.global sub_c26a, init_ram, sub_dc26, sub_dbda, sub_f5dd, load_music
.global sub_dc92, sub_dd2d, sub_dc6b, sub_dc1b, sub_dbc3
.global game_over_text, player_gravity_table, tile_shit_1, tile_shit_2, tile_shit_3, tile_shit_4
.global sub_f4f5, sub_ee7e, init_enemies
.global konami_code_values
.global sub_d5d8, sub_c31d, sub_db80, sub_ca72
.global sub_c5aa
.global sub_c6a0
.global sub_c706
.global sub_c414
.global sub_c47d
.global sub_c44b
.global sub_c4b4
.global pause_game
.global sub_d023
.global sub_ce4a
.global sub_d204
.global sub_d255
.global sub_cbaa
.global sub_ccfa
.global sub_d584
.global sub_cb8c
.global sub_d4d9
.global sub_d629
.global sub_d825
.global sub_c35e
.global sub_d6e5
.global sub_c28b
.global sub_c2e0
.global sub_d773
.global sub_dae9
.global sub_db09
.global sub_c17f
.global sub_f8b1
.global sub_f7a8
.global sub_f71c
.global sub_f836
.global sub_f6e9
.global sub_e960
.global sub_ec12
.global sub_edca
.global sub_f2cd
.global sub_f083
.global sub_f193
.global sub_f29b
.global sub_f3db
.global sub_f7ee
.global sub_f7e2
.global sub_f7e8
.global sub_f6d3
.global sub_f44f
.global label_f067
.global label_f52f
.global label_f4c3
.global label_f4dc

.global ram_00
.global music_pos
.global ram_04
.global ram_05
.global ram_06
.global ram_07
.global player_lives
.global temp
.global player_health
.global ram_0b
.global player_position_y_again
.global i_frames
.global idx
.global player_fall_state
.global player_velocity
.global nbasic_temp
.global ram_12
.global button_a_down
.global button_b_down
.global button_up_down
.global button_down_down
.global button_right_down
.global button_left_down
.global button_select_down
.global button_start_down
.global ram_1b
.global player_direction
.global title_screen_wave_timer
.global player_chunk_pos
.global player_chunk_pos_fine
.global player_chunk_pos_again
.global player_chunk_pos_fine_again
.global ram_22
.global ram_23
.global player_sprite
.global player_anim_timer
.global ram_26
.global ram_27
.global ram_28
.global ram_29
.global ram_2a
.global ram_32
.global ram_3a
.global ram_42
.global ram_4a
.global ram_52
.global ram_53
.global ram_54
.global ram_55
.global ram_56
.global ram_57
.global ram_58
.global player_is_moving_h
.global ram_5a
.global ram_5b
.global ram_5c
.global ram_5d
.global player_pos_x1
.global player_pos_x2
.global ram_60
.global ram_61
.global ram_62
.global ram_63
.global ram_64
.global ram_65
.global ram_66
.global ram_67
.global player_offset_y
.global player_offset_x
.global ram_6a
.global ram_6b
.global ram_6c
.global ram_6d
.global ram_6e
.global ram_6f
.global ram_70
.global ram_71
.global ram_72
.global ram_7e
.global ram_7f
.global ram_80
.global ram_81
.global ram_82
.global ram_83
.global ram_84
.global ram_85
.global ram_86
.global ram_87
.global music_start
.global music_end
.global music_stack
.global music_repeat
.global music_wait
.global music_id
.global x_base
.global enemy_pos_x
.global enemy_pos_x2
.global enemy_pos_y
.global enemy_type
.global ram_aa
.global num_enemy_slots
.global ram_b1
.global which_enemy
.global ram_b3
.global ram_b4
.global ram_b5
.global ram_b6
.global ram_b7
.global ram_b8
.global ram_b9
.global ram_ba
.global ram_bb
.global ram_bc
.global ram_bd
.global ram_be
.global ram_bf
.global ram_c0
.global konami_code_correct_presses
.global konami_code_active
.global konami_code_correct_button_down
.global button_mask
.global ram_c5
.global collision_something
.global OAM
.global collision_something_else
