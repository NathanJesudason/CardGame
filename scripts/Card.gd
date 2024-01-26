extends Node

@onready var cardDB = preload("res://scripts/CardsDatabase.gd")

#internal value of each card, 0 meaning null
var cardID = 0
var pointValue = 0
var cardType

func get_card_point_value() -> int:
	return pointValue

func set_card(id):
	var cardTemplate = cardDB.DATABASE[id]
	if(!cardTemplate):
		return
	cardID = id
	$Bars/JokeText/CenterContainer/JokeLabel.text = cardTemplate.jokeText
	$Bars/Name/CenterContainer/NameLabel.text = cardTemplate.cardName
	$Bars/Type/CenterContainer/TypeLabel.text = cardTemplate.typeText
	pointValue = cardTemplate.pointValue
	cardType = cardTemplate.cardType
