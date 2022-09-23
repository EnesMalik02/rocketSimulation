extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("acilis")
	yield(get_tree().create_timer(12), "timeout")	
	get_tree().change_scene_to(load("res://sahne_1/animasyonSahnesi.tscn"))
	



