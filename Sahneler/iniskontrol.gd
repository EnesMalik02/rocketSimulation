extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var birKere = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	#BAŞARISIZ
	if $"../../Roket/rokettt".translation.y - 23.6 < 1:
#		if $"../../Roket/rokettt".rotation_degrees.z > 5 or $"../../Roket/rokettt".rotation_degrees.z < -5 or $"../../Roket/rokettt".rotation_degrees.x > 5 or $"../../Roket/rokettt".rotation_degrees.z < -5:
		if $"../../Roket/rokettt".rotation_degrees.z > 26 or $"../../Roket/rokettt".rotation_degrees.z < -26:
			$"../../Roket/rokettt".set_mode(RigidBody.MODE_STATIC)	
			if birKere == false:		
				$"../../Control2/AnimationPlayer".play("patlamaSesi")				
				$"../../Roket/rokettt/AnimationPlayer".play("patlama")
				birKere = true
			if Input.is_action_just_pressed("skip"):
				get_tree().change_scene_to(load("res://Sahneler/Sahne.tscn"))
		#BAŞARILI
		if $"../../Roket/rokettt".rotation_degrees.z < 5 and $"../../Roket/rokettt".rotation_degrees.z > -5 and  $"../../Roket/rokettt".rotation_degrees.x < 5 and $"../../Roket/rokettt".rotation_degrees.z > -5:
			$"../../Roket/rokettt/AnimationPlayer".play("basarili")
			$"../../Roket/rokettt".set_mode(RigidBody.MODE_STATIC)									
			if Input.is_action_just_pressed("skip"):
				get_tree().change_scene_to(load("res://Sahneler/Sahne.tscn"))
