extends Area2D



signal pressed



var counter = 0

func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		counter +=1 
		if counter == 1:
			$Gamebox.visible=true
			emit_signal("pressed")
		if counter == 2:
			get_tree().change_scene_to_file("res://scene/puzzle.tscn")
