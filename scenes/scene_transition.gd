extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var animationPlayer = $Curtains
	animationPlayer.play("Curtains")
	await animationPlayer.animation_finished
	self.visible = false
