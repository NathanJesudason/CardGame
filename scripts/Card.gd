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
	pointValue = cardTemplate.pointValue
	cardType = cardTemplate.cardType
	var borderImage = str("res://resources/pixel-cards/card-frame-", cardType,".png")
	var cardIcon = str("res://resources/pixel-cards/", cardType,"-icon.png")
	
	$Border.texture = load(borderImage)
	$Bars/JokeBar/JokeText/CenterContainer/JokeLabel.text = cardTemplate.jokeText
	$Bars/Name/CenterContainer/NameLabel.text = cardTemplate.cardName
	$Bars/TypeBar/Type/CenterContainer/TypeLabel.text = cardTemplate.typeText
	$Bars/TypeBar/LeftIconBox/CenterContainer/LeftIcon.texture = load(cardIcon)
	$Bars/TypeBar/RightIconBox/CenterContainer/RightIcon.texture = load(cardIcon)
	$Bars/BottomBar/CardNumber/CenterContainer/CardNumber.text = str("#", cardID)
	$Bars/BottomBar/PointValue/CenterContainer/PointValue.text = str(pointValue)
	
