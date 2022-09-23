extends RigidBody

export var jump_velocity = 10
export var acceleration = 5
var accel_multiplier = 1.0
export var speed = 25
export var max_speed = 150
export var tus = ""
export(NodePath) var parent_path  
onready var animasyon = $AnimationPlayer
export (float, 0.01,1.0) var stop_speed = 0.1
var velocity=Vector3()
var mouse_input = Vector2()
onready var head = $MeshInstance
export var view_sensitivity = 10.0
var is_on_floor = false
var move_input
#Ses
onready var ses = $AudioStreamPlayer3D
var db = 1
export var sesDuzenleyici = false
onready var roket = $".."
var seskis = false
var tusyonlendirme = ""

func _ready():
	var x = get_tree().get_root().get_node(parent_path)
	$dengeItici.emitting = false	
	linear_damp = 1.0
	#Input.set_mouse_mode(Input.CURSOR_ARROW)



func _physics_process(delta):
	if friction >= 0:
		friction = 0
	is_on_floor = false
	move_input = Vector2.ZERO
	var dir = Vector3()		

	if sesDuzenleyici :
		if seskis == true:
			if db != 0:
				db -= 0.5
				ses.set_unit_db(db)
			else:
				seskis = false

#Roket Kontrol
	if Input.is_action_pressed(tus):
		$dengeItici.emitting = true
		move_input = Vector2(0,5)
		if sesDuzenleyici:
			if Input.is_action_pressed(tus):	
				if db != 30:	
					db += 0.5
					ses.set_unit_db(db)

	else:
		$dengeItici.emitting = false		
		seskis = true
	
	


		
	dir += move_input.x*head.global_transform.basis.x;
	dir -= move_input.y*head.global_transform.basis.z;
	velocity = lerp(velocity,dir*speed,acceleration*accel_multiplier*delta)
	add_central_force(velocity)
	
func _integrate_forces(state):
	if state.linear_velocity.length()>max_speed:
		state.linear_velocity=state.linear_velocity.normalized()*max_speed
	if move_input.length() < 0.2:
		state.linear_velocity.x = lerp(state.linear_velocity.x,0,stop_speed)
		state.linear_velocity.z = lerp(state.linear_velocity.z,0,stop_speed)
	if state.get_contact_count() > 0 and move_input.length()< 0.2:
		if is_on_floor and state.get_contact_local_normal(0).y < 0.9:
			add_central_force(-state.get_contact_local_normal(0)*10)
			

func _input(event):
	if event is InputEventMouseMotion:
		mouse_input = event.relative;
		
		
