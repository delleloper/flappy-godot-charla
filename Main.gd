extends Node2D


onready var time = $Timer

# Called when the node enters the scene tree for the first time.
func _process(delta):
	$Label.text = str($Pajaro.score)
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().reload_current_scene()


func _on_Timer_timeout():
	get_tree().change_scene("res://Menu.tscn")


func _on_Pajaro_gameover():
	time.start(2)
