.segment "ZEROPAGE"
	.res 2 ; probably a pointer to level data or something
	music_pointer: .res 2
	.res 1
	.res 1
	.res 1
	.res 1
	player_lives: .res 1 ; 08
	temp: .res 1 ; this is used a fuckton, also set it to res 2 and it skips levels lol
	player_health: .res 1 ; 0A
	.res 1
	.res 1
	.res 1
	.res 1 ; 0E related to player_health

	player_fall_state: .res 1 ; (?) 2 = on ground, 1 = ascending, 0 = descending
	player_velocity: .res 1
	.res 1
	.res 1 ; related to jumping?

	button_a_down: .res 1
	button_b_down: .res 1
	button_up_down: .res 1
	button_down_down: .res 1
	button_right_down: .res 1
	button_left_down: .res 1
	button_select_down: .res 1
	button_start_down: .res 1

	.enum EnemyType
		goomba = 2
		crocodile
		cabbage
		carrot = 6
		heart = 8
	.endenum

	; man I hate all this res

	.res 1
	player_direction: .res 1 ; 0 = left, 1 = right
	title_screen_wave_timer: .res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	enemy_pos_x: .res 6
	enemy_pos_x2: .res 6
	enemy_pos_y: .res 6
	enemy_type: .res 6
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	.res 1
	
	konami_code_correct_presses: .res 1
	konami_code_active: .res 1
	konami_code_correct_button_down: .res 1
	button_mask: .res 1



.segment "BSS"
	; $1F7 may have something to do with enemies

	collision_something: .res $100

	OAM: .res $100
