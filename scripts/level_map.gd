extends Node2D

var stage_description

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