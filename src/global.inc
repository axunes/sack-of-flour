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
.global music_start
.global level_name
.global level_title
.global label_de0d
.global label_d8b7, label_c35a, label_c236, label_db8e
.global label_d5c3, label_d5ed, nesmus_shut_up, label_e7f4, label_c3eb, label_da95, label_cab7
.global label_c9e2, label_db61, label_e816, label_e679, label_c24e
.global label_e8ed, label_d2bb, label_c7ec, label_cabb, get_controller_buttons, label_dc71, label_e6eb
.global label_c26a, init_ram, label_dc26, label_dbda, label_f5dd, label_e5eb
.global label_dc92, label_dd2d, label_dc6b, label_dc1b, label_dbc3
.global game_over_text, player_gravity_table, tile_shit_1, tile_shit_2, tile_shit_3, tile_shit_4
.global label_f4f5, label_ee7e, init_enemies
.global konami_code_values
.global label_d5d8, label_c31d, label_db80, label_ca72


.global ram_00
.global music_pointer
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
.global ram_11
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
.global ram_88
.global ram_8a
.global ram_8c
.global ram_8e
.global ram_8f
.global ram_90
.global ram_91
.global enemy_pos_x
.global enemy_pos_x2
.global enemy_pos_y
.global enemy_type
.global ram_aa
.global ram_b0
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
