extends Area2D


@export var item_id: String = ""
@export var item_quantity: int = 1
signal pressed



var counter = 0

func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		$Gamebox.visible=true
		emit_signal("pressed")
