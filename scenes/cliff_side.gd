extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scenes()


func _on_cliffside_exitpoint_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true
		print("Player is in the collision shape.")


func _on_cliffside_exitpoint_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scenes():
	if global.transition_scene == true:
		#print("Global transition scene is true.")
		if global.current_scene == "cliff_side":
			print("Current scene is cliffside.")
			get_tree().change_scene_to_file("res://scenes/world.tscn")
			print("You got the scene for world.")
			global.finish_changescenes()
