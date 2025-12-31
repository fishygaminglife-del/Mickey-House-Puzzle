extends Area2D

var counter_1 = 0

signal pressed

	
	
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		counter_1 +=1 
		if counter_1 %2 ==1 :
			$Notepad2.visible = true
			$"../NoteLabel".visible = true
			$"../NoteLabel2".visible = true
			$"../Area2D/CollisionPolygon2D".disabled=false
			emit_signal("pressed")
			
		if counter_1 % 2 == 0:
			$Notepad2.visible = false
			$"../NoteLabel".visible = false
			$"../NoteLabel2".visible = false
