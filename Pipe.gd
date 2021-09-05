extends Area2D

export var speed = 50

func _physics_process(delta):
	position.x -= speed * delta
	if position.x < 0:
		queue_free()


func _on_Pipe_body_entered(body):
	if body is Bird:
		body.muerte()

func enterArea(body):
	body.score += 10
