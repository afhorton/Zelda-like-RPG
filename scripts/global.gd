extends Node

var player_currect_attack = false

var current_scene = "world" #world cliff_side
var transition_scene = false

var player_exit_cliffside_posx = 216
var player_exit_cliffside_posy = 20
var player_start_posx = 8
var player_start_posy = 84

var game_first_loadin = true

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		
	if current_scene == "world":
		current_scene = "cliff_side"
	else:
		current_scene = "world"
