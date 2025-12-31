extends Area2D

var is_flipped := false


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		flip_card()

func flip_card():
	is_flipped = true
	$Mickey/Sprite2D2.modulate.a = 1.0

func hide_front():
	is_flipped = false
	$Mickey/Sprite2D2.modulate.a = 0.0
