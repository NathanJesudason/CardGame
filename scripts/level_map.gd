extends Node2D

var stage_description

@onready var Decks = preload("res://scripts/DeckManager.gd")
@onready var GlobalState = get_node("/root/GameState")

func _ready():
	stage_description = %StageDescription
	stage_description.text = "Select a venue!"

func _on_stage_1_mouse_entered():
	stage_description.text = "A cocktail bar where grown-ups go to watch shows. no kids allowed."

func _on_stage_1_mouse_exited():
	stage_description.text = "Select a venue!"

func _on_stage_2_mouse_entered():
	stage_description.text = "An arcade & pizza place, seldom visited by old people."

func _on_stage_2_mouse_exited():
	stage_description.text = "Select a venue!"

func _on_stage_3_mouse_entered():
	stage_description.text = "A renovated church, all ages welcome."

func _on_stage_3_mouse_exited():
	stage_description.text = "Select a venue!"

func _on_stage_4_mouse_entered():
	stage_description.text = "A Netflix comedy special. You need better jokes before you can get on the big stage!"

func _on_stage_4_mouse_exited():
	stage_description.text = "Select a venue!"

func _on_stage_1_pressed():
	get_node(".").hide()
	GlobalState.currentRivalDeck = Decks.phsyicalRival
	get_tree().change_scene_to_file("res://scenes/play_scene.tscn")

func _on_stage_2_pressed():
	get_node(".").hide()
	GlobalState.currentRivalDeck = Decks.punsPlayerDeck
	get_tree().change_scene_to_file("res://scenes/play_scene.tscn")

func _on_stage_3_pressed():
	get_node(".").hide()
	GlobalState.currentRivalDeck = Decks.punsRival
	get_tree().change_scene_to_file("res://scenes/play_scene.tscn")

func _on_option_button_item_selected(index):
	match index:
		0:
			GlobalState.currentPlayerDeck = Decks.physicalPlayerDeck
		1:
			GlobalState.currentPlayerDeck = Decks.observationalPlayerDeck
		2: 
			GlobalState.currentPlayerDeck = Decks.punsPlayerDeck
