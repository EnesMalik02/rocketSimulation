extends Sprite

var acik = preload("res://gui/radio-acik-.png")
var kapali = preload("res://gui/radio.png")

var button = false

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			button = !button
						
			if button:
				print("ad")
				texture = acik
				$AudioStreamPlayer2D.play()

			else:
				texture = kapali
				$AudioStreamPlayer2D.stop()
		
