extends Node

export var res = ""

func _process(delta):
	if Input.is_action_just_pressed("skip"):
		get_tree().change_scene_to(load(res))
		
