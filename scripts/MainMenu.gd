extends Control

signal start_game

@onready var MainMenu = get_node("/root/MainMenu")

func _on_start_pressed():
	emit_signal("start_game")
	MainMenu.hide()
	get_tree().change_scene_to_file("res://scenes/level_map.tscn")
	


func _on_quit_pressed():
	get_tree().quit()
