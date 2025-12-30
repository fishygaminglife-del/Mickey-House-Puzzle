extends Node2D

var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$QuestItem/CollisionShape2D.disabled = true
	$QuestItem.pressed.connect(box_pressed)
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("text")
	await get_tree().create_timer(5).timeout
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("text2")
	await get_tree().create_timer(5).timeout
	$QuestItem/CollisionShape2D.disabled = false
	$AnimationPlayer/TextBox.visible = false
	await $AnimationPlayer.animation_finished
	counter = 1
	
func box_pressed():
	$QuestItem/CollisionShape2D.disabled = true	
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("GameBoard")
	await get_tree().create_timer(5).timeout
	$AnimationPlayer/TextBox.visible = false
	await $AnimationPlayer.animation_finished
	$QuestItem/CollisionShape2D.disabled = false
	
func game_pressed():
	pass
