extends RigidBody2D


var ball_speed = 400
var ball_direction = Vector2(-1, 0)
var velocity


func _ready():
	linear_velocity = Vector2(-400, 0)
	

func _process(delta: float) -> void:
	velocity = ball_speed * ball_direction
	linear_velocity = velocity
	

func _on_paddle_head_hit() -> void:
	ball_direction.x = ball_direction.x * -1
	if ball_direction.x > 0:
		rotation += PI/4 * -1
	elif ball_direction.x < 0:
		rotation += PI/4
	ball_direction = ball_direction.rotated(rotation)


func _on_right_paddle_head_hit() -> void:
	_on_paddle_head_hit()


func _on_paddle_body_hit() -> void:
	ball_direction = ball_direction * -1
	


func _on_right_paddle_body_hit() -> void:
	_on_paddle_body_hit()
