extends RigidBody2D


var ball_speed = 400
var ball_direction = Vector2(-1, 0)


func _ready():
	linear_velocity = Vector2(-400, 0)
	
func _process(delta: float) -> void:
	var velocity = ball_speed * ball_direction
	linear_velocity = velocity


func _on_paddle_paddle_hit() -> void:
	print("Connection established")
	ball_direction = ball_direction * -1
	print(ball_direction)
	await get_tree().create_timer(1.0).timeout
	print(ball_direction)


func _on_right_paddle_paddle_hit() -> void:
	_on_paddle_paddle_hit()
