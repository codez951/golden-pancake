extends RigidBody2D


var ball_speed = 400
var ball_direction = Vector2(-1, 0)

func _ready():
	var velocity = ball_speed * ball_direction
	linear_velocity = velocity
