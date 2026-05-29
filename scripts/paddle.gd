extends Sprite2D

var speed = 1000

func _process(delta: float) -> void:
	
	var movement_direction = Vector2(0, 0)
	
	if Input.is_action_pressed("move_up_1"):
		movement_direction = Vector2(0, -1)
	if Input.is_action_pressed("move_down_1"):
		movement_direction = Vector2(0, 1)
		
	var velocity = movement_direction * speed
	position += velocity * delta
