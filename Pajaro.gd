extends KinematicBody2D


class_name Bird


onready var audioStream = $AudioStreamPlayer
var grav :int = 20
var velocity = Vector2.ZERO
export var jumpSpeed = 200
var play = true
var score = 0

signal gameover

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _physics_process(delta):
	velocity.y+= grav
	if Input.is_action_just_pressed("click") && play:
		salto()
	move_and_slide(velocity)

func muerte():
	print("me choque")
	play = false
	audioStream.stream = preload("res://Lose.wav")
	audioStream.play()
	emit_signal("gameover")

func salto():
	velocity.y = -jumpSpeed
	$AnimationPlayer.play("salto")
