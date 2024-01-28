extends Node

@onready var Decks = preload("res://scripts/DeckManager.gd")

var currentPlayerDeck
var currentRivalDeck
var currentAudience

# Called when the node enters the scene tree for the first time.
func _ready():
	currentPlayerDeck = Decks.physicalPlayerDeck
	currentRivalDeck = Decks.phsyicalRival


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
