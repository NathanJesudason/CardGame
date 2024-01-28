extends Node2D

var stage_description

@onready var Decks = preload("res://scripts/DeckManager.gd")
@onready var GlobalState = get_node("/root/GameState")

var barAudience =    [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,0]
var arcadeAudience = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1,1,0]
var churchAudience = [0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0]

func _ready():
	$levelselect.play()
	stage_description = %StageDescription
	stage_description.text = "Select a venue!"
	barAudience.shuffle()
	arcadeAudience.shuffle()
	churchAudience.shuffle()

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
	$levelbutton.play()
	get_node(".").hide()
	GlobalState.currentAudience = barAudience
	GlobalState.currentRivalDeck = Decks.phsyicalRival
	get_tree().change_scene_to_file("res://scenes/play_scene.tscn")

func _on_stage_2_pressed():
	$levelbutton.play()
	get_node(".").hide()
	GlobalState.currentAudience = arcadeAudience
	GlobalState.currentRivalDeck = Decks.punsPlayerDeck
	get_tree().change_scene_to_file("res://scenes/play_scene.tscn")

func _on_stage_3_pressed():
	$levelbutton.play()
	get_node(".").hide()
	GlobalState.currentAudience = churchAudience
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
