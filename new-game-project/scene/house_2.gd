extends Node2D



func _ready() -> void:
	$NotepadFull.pressed.connect(pressed)
	$NotepadFull/CollisionShape2D2.disabled = true
	$Area2D/CollisionPolygon2D.disabled = true
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("NoteFind")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer/TextBox.visible = false
	$NotepadFull/CollisionShape2D2.disabled = false

func pressed():
	$Area2D/CollisionPolygon2D.disabled=false
