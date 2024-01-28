extends Node2D

enum audience_member_type {
	kid, #Likes wordplay, doesn't like slapstick (too crass!)
	nerd, # Likes slapstick, doesn't like observational (don't get it)
	old # like observational humor, doesn't like wordplay (heard em all!)
}

var currentType:audience_member_type
var restingFrameID
var colors = [Color(0.7, 0.3, 0.3), Color(0.3, 0.7, 0.3), Color(0.3, 0.3, 0.7)]

func set_member_type(type: audience_member_type):
	#set frame to be multiple of 3, and then random gender
	restingFrameID = type * 6 + ((randi() % 2) * 3)
	$Sprite2D.frame = restingFrameID
	currentType = type 

func reset_emote():
	$Sprite2D.frame = restingFrameID

#For now doing a string, but in the future this should use an enum
func card_played(type: String) -> int:
	#based on what type of audience member, display the frame reaction and return the score
	match [type, currentType]:
		["Slapstick", audience_member_type.kid]:
			$Sprite2D.frame = restingFrameID + 1
			return 2
		["Slapstick", audience_member_type.nerd]:
			$Sprite2D.frame = restingFrameID + 2
			return 0
		["Wordplay", audience_member_type.nerd]:
			$Sprite2D.frame = restingFrameID + 1
			return 2
		["Wordplay", audience_member_type.old]:
			$Sprite2D.frame = restingFrameID + 2
			return 0
		["Observational", audience_member_type.old]:
			$Sprite2D.frame = restingFrameID + 1
			return 2
		["Observational", audience_member_type.kid]:
			$Sprite2D.frame = restingFrameID + 2
			return 0
		_:
			return 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.modulate = colors[randi() % colors.size()]
