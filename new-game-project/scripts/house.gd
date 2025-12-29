extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$QuestItem.pressed.connect(box_pressed)
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("text")
	await get_tree().create_timer(5).timeout
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("text2")
	await get_tree().create_timer(5).timeout
	$AnimationPlayer/TextBox.visible = false
	await $AnimationPlayer.animation_finished
func box_pressed():
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("GameBoard")
	await get_tree().create_timer(5).timeout
	$AnimationPlayer/TextBox.visible = false
	await $AnimationPlayer.animation_finished
	
func game_pressed():
	pass
