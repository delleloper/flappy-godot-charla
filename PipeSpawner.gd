extends Node2D

onready var pipeScn = preload("res://Pipe.tscn")

func _ready():
	$MeshInstance2D.visible = false


func _on_Timer_timeout():
	var pipe = pipeScn.instance()
	var pos = to_global(pipe.position)
	get_parent().add_child(pipe)
	pipe.position = pos
