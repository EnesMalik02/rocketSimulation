extends Sprite

var acik = preload("res://gui/klavye_true.png")
var kapali = preload("res://gui/klavye.png")


var button = false

func _ready():
#	$"../Manuel".texture = otopilot	
	pass			
	

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			button = !button
		
						
			if button:
				texture = acik
				$"../../Roket/rokettt".klavye_kontrol = true

			else:
				texture = kapali
				$"../../Roket/rokettt".klavye_kontrol = false
				
		
