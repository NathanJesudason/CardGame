extends Control

signal start_game

@onready var MainMenu = get_node("/root/MainMenu")

func _on_start_pressed():
	MainMenu.hide()
	emit_signal("start_game")


func _on_quit_pressed():
	get_tree().quit()
