extends Node


const lines: Array[String] = [
	"Hello Rat!",
	"Just want to check if this thing works",
	"welp it does",
]


func _unhandled_input(event):
	if event.is_action_pressed("interact"):
		if interaction_area.get_overlapping_bodies().size() > 0:
			InteractionLabel.hide_label()
			DialogManager.start_dialog(global_position, lines) 
			sprite.flip_h = true if interaction_area.get_overlapping_bodies()[0].global_position.x < global_position
