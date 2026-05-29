extends "res://scripts/paddle.gd"

func _process(delta: float) -> void:
	
	var movement_direction = Vector2(0, 0)
	
	if Input.is_action_pressed("move_up_2"):
		movement_direction = Vector2(0, -1)
	if Input.is_action_pressed("move_down_2"):
		movement_direction = Vector2(0, 1)
		
	var velocity = movement_direction * speed
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
