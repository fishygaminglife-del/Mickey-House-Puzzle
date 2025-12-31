extends Area2D
var can_enter = false

func _on_body_entered(body: Node2D) -> void:
	can_enter = true
	if body.name == "Player" and can_enter:
		print("enter")
		
		get_tree().change_scene_to_file("res://scene/party.tscn")

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		can_enter = false
