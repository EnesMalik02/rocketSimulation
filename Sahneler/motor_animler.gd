extends Sprite

export var motor_ana = false
export var motor_on = false
export var motor_arka = false
export var motor_sag = false
export var motor_sol = false
onready var roket = $"../../Roket/rokettt"
var yesil = preload("res://gui/motor_acik.png")
var gri = preload("res://gui/motor_kapali.png")

onready var animasyonlar = $"../AnimationPlayer"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if motor_ana:
		if Input.is_action_pressed("jump"):
#			animasyonlar.play("ana_motor_acik")
			texture = yesil
		elif Input.is_action_just_released("jump"):
#			animasyonlar.play("ana_motor_kapali")
			texture = gri
	if motor_sol:
		if Input.is_action_pressed("left"):
			texture = yesil
#			animasyonlar.play("sol_motor_acik")
		elif Input.is_action_just_released("left"):
#			animasyonlar.play("sol_motor_kapali")	
			texture = gri
	if motor_sag:
		if Input.is_action_pressed("right"):
			texture = yesil
#			animasyonlar.play("sag_motor_acik")
		elif Input.is_action_just_released("right"):
#			animasyonlar.play("sag_motor_kapali")	
			texture = gri
	if motor_on:
		if Input.is_action_pressed("up"):
			texture = yesil
			
#			animasyonlar.play("on_motor_acik")
		elif Input.is_action_just_released("up"):			
#			animasyonlar.play("on_motor_kapali")
			texture = gri
	
	if motor_arka:
		if Input.is_action_pressed("down"):
			texture = yesil
			
#			animasyonlar.play("arka_motor_acik")
		elif Input.is_action_just_released("down"):
#			animasyonlar.play("arka_motor_kapali")
			texture = gri

		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
