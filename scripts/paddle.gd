extends Sprite2D

var speed = 1000
var screen_size
var half_height

func _ready():
	screen_size = get_viewport_rect().size
	half_height = texture.get_height() * scale.y / 2.0

func hello_world():
	print("Hello World!")

func _process(delta: float) -> void:
	
	var movement_direction = Vector2(0, 0)
	
	if Input.is_action_pressed("move_up_1"):
		movement_direction = Vector2(0, -1)
	if Input.is_action_pressed("move_down_1"):
		movement_direction = Vector2(0, 1)
		
	var velocity = movement_direction * speed
	position += velocity * delta
	position.y = clamp(position.y, half_height, screen_size.y - half_height)
