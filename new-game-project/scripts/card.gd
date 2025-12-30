extends Area2D
@export var card_type: String
var is_flipped = false


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		flip_card()

func flip_card ():
	if is_flipped:
		return
	
	is_flipped = true
	$Sprite2D2.modulate.a = 1.0

	get_parent().card_flipped(self)

func hide_front():
	is_flipped = false
	$Sprite2D2.modulate.a = 0.0
