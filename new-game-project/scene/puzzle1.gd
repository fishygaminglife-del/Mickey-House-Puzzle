extends Node2D

@onready var timer_label = $TimerLabel



var time_left = 30
var timer_running = true

var matched_pairs = 0
var total_pairs = 6 

var first_card = null
var second_card = null

func _ready() -> void:
	$GameCongradulations.visible = false
	$AnimationPlayer/TextBox.visible = true
	$AnimationPlayer.play("MemoryGame")
	await get_tree().create_timer(5).timeout
	await $AnimationPlayer.animation_finished
	$AnimationPlayer/TextBox.visible = false

func _process(delta):
	if timer_running:
		time_left -= delta
		if time_left == 0:
			timer_running = false
			time_left = 0
			time_up()
	timer_label.text = str(int(time_left))


func card_flipped(card):
	if first_card == null:
		first_card = card
	elif second_card == null:
		second_card = card
		check_match()
		
func check_match():
	if first_card.card_type == second_card.card_type:
		matched_pairs += 1
		first_card = null
		second_card = null
		
		if matched_pairs == total_pairs:
			game_complete()
			
			
	else:
		await get_tree().create_timer(1.0).timeout
		first_card.hide_front()
		second_card.hide_front()
		first_card = null
		second_card = null
	
func game_complete():
	$GameCongradulations.visible = true
	await get_tree().create_timer(3).timeout
	$GameCongradulations.visible = false
	get_tree().change_scene_to_file("res://scene/house2.tscn")
	
func time_up():
	print("Time is Up!")
	time_left = 0
	get_tree().reload_current_scene()
