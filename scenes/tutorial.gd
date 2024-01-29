extends Node2D

var lines = [
	
	"Hello there!\nWelcome to the world of jokes!",
	"My name is J-OAK!\nPeople call me the professor of jokes!",
	"This world is inhabited by three types of jokes:\nPuns, Observations, and Slapstick!",
	"Puns are loved by nerds but disliked by old people.\nObservations are loved by old people...",
	"but young kids don't get them.\nSlapstick is loved by kids but nerds find them crass.",
	"Remember to play to the best joke to defeat rival comedians, and craft the ultimate joke!",
	"Bash Mustard!\nA world of jokes awaits!"
	
]

var currentLine

# Called when the node enters the scene tree for the first time.
func _ready():
	currentLine = 0
	$Untitled/Label.text = lines[currentLine]

func _input(event):
	if event is InputEventMouseButton && event.get_button_index() == MOUSE_BUTTON_LEFT && event.is_pressed():
		currentLine += 1;
		if(currentLine >= lines.size()):
			get_tree().change_scene_to_file("res://scenes/level_map.tscn")
			return
		if(currentLine == 2):
			$AnimationPlayer.play("Card_Slide_in")
		$Untitled/Label.text = lines[currentLine]
		await get_tree().create_timer(1.0).timeout 
