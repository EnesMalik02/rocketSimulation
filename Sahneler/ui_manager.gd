extends Control

export var sahne  = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var animasyonlar = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if sahne:
		$yukseklik.text = "YÜKSEKLİK: " + str($"../Roket".translation.y - 0.4)
	else:
		$yukseklik.text = "YÜKSEKLİK: " + str($"../Roket/rokettt".translation.y - 23.6)
		
	
		



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
