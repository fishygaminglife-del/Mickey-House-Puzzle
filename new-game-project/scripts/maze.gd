extends Node2D



func _ready() -> void:
	$LastSceneTransporter/CollisionShape2D.disabled = false	
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("MazeInstructions")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer/TextBox.visible = false
