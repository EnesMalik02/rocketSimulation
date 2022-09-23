extends Sprite

export var x = false
export var z = false
export var text = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if x:
		rotation = $"../../../Roket/rokettt".rotation.x
		$"../../Label".text = "X-ROTATINON : " + str($"../../../Roket/rokettt".rotation_degrees.x)
	elif z:
		rotation = $"../../../Roket/rokettt".rotation.z
		$"../../Label2".text = "Z-ROTATINON : " + str( $"../../../Roket/rokettt".rotation_degrees.z)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
