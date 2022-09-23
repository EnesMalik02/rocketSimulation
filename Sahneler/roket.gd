extends RigidBody

var klavye_kontrol = false
var roket_itici_yoneticisi = ""
var is_on_floor = false
var birKereBABA = true


# Called when the node enters the scene tree for the first time.
var bikere = false
var gyro = rotation_degrees
var yukseklik_sensor 

func _ready():
	bikere = true

#	yield(get_tree().create_timer(5), "timeout")
	
func _process(delta):
	gyro = rotation_degrees
	yukseklik_sensor = translation.y - 23.6
	
	

	if klavye_kontrol == false:
		if gyro.z > 5 :
			Input.action_press("left")

		else:
			Input.action_release("left")


		if gyro.z < -5 :
			Input.action_press("right")
		else:
			Input.action_release("right")


		if gyro.x < -5 :
			Input.action_press("up")
		else:
			Input.action_release("up")

		if gyro.x > 5 :
			Input.action_press("down")
		else:
			Input.action_release("down")
			
		

#	if yukseklik_sensor < 30 and yukseklik_sensor > 25 :
#		Input.action_press("jump")
#	else:
#		Input.action_release("jump")
#
#	if yukseklik_sensor < 20 and yukseklik_sensor > 15 :
#		Input.action_press("jump")
#	else:
#		Input.action_release("jump")
#
#	if yukseklik_sensor < 10 and yukseklik_sensor > 5 :
#		Input.action_press("jump")
#	else:
#		Input.action_release("jump")

	if yukseklik_sensor < 30:
		if yukseklik_sensor > 15:
			Input.action_press("jump")			
			yield(get_tree().create_timer(0.5), "timeout")	
			Input.action_release("jump")			
			yield(get_tree().create_timer(0.5), "timeout")	
			Input.action_press("jump")		
			yield(get_tree().create_timer(0.5), "timeout")	
			Input.action_release("jump")
	
	
	
	if yukseklik_sensor <= 40 :
		if birKereBABA:
			$"Falcon 9/First Stage/Landing Leg Rotator/Ayaklar".play("ayaklar")
			birKereBABA = false
