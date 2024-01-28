extends Control

signal start_game

@onready var MainMenu = get_node("/root/MainMenu")

func _on_start_pressed():
	$buttonsound.play()
	emit_signal("start_game")
	MainMenu.hide()
	get_tree().change_scene_to_file("res://scenes/level_map.tscn")
	


func _on_quit_pressed():
	$buttonsound.play()
	get_tree().quit()
