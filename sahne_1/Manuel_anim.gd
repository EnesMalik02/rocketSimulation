extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../AnimationPlayer".play("manuel_animation")
	yield(get_tree().create_timer(23), "timeout")	
	$"../AnimationPlayer".play("auto_pilot_animation")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
