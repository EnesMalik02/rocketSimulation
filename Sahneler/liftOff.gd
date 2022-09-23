extends RigidBody

onready var roket = $"../../roketLiftOff"

func _ready():
	$"Falcon 9/First Stage/Landing Leg Rotator/Ayaklar".play("acik")	
	roket.play("roketLiftOff")
	yield(get_tree().create_timer(30), "timeout")
	$"Falcon 9/First Stage/Landing Leg Rotator/Ayaklar".play("kapanis")
	yield(get_tree().create_timer(60), "timeout")
	get_tree().change_scene("res://Sahneler/Sahne.tscn")
	
	
	
	
	


