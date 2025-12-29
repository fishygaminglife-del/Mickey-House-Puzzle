extends CharacterBody2D

@export var speed := 500

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(342, 495)



func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
