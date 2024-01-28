extends Node2D

@onready var Decks = preload("res://scripts/DeckManager.gd")
var DeckManager

@onready var GlobalState = get_node("/root/GameState")

@onready var Audience = $Stage/Audience.get_children()

var rivalScore = 0
var playerScore = 0
var currentCombo = 0
var lastPlayedCardType = ""
var roundNumber = 0

enum turnState {
	playerTurn,
	playerScore,
	rivalTurn,
	rivalScore
}

var currentTurnState = turnState.playerTurn

#var HandCards = [$Hand/HandCard1, $Hand/HandCard2, $Hand/HandCard3, $Hand/HandCard4]

var LastCardVisibility = [false, false, false]

# Called when the node enters the scene tree for the first time.
func _ready():
	var curtains = preload("res://scenes/scene_transition.tscn")
	var curtainNode = curtains.instantiate()
	add_child(curtainNode)
	
	#Set all 32 audience members
	print(GlobalState.currentAudience)
	for member in 32:
		Audience[member].set_member_type(GlobalState.currentAudience[member])
	#instantiate deck manager to access nonstatic functions like shuffling
	DeckManager = Decks.new()
	print("Selected DECK")
	print(GlobalState.currentPlayerDeck)
	DeckManager.selectedDeck = GlobalState.currentPlayerDeck.duplicate(true)
	DeckManager.playerDeck = DeckManager.shuffleDeck(DeckManager.selectedDeck)
	DeckManager.playerDeckSize = DeckManager.playerDeck.size()
	print(DeckManager.playerDeck)
	$Stage/Hand/HandCard1.set_card(DeckManager.drawCard())
	$Stage/Hand/HandCard2.set_card(DeckManager.drawCard())
	$Stage/Hand/HandCard3.set_card(DeckManager.drawCard())
	$Stage/Hand/HandCard4.set_card(DeckManager.drawCard())
	$Stage/LastPlayed/NextCard.set_card(GlobalState.currentRivalDeck[randi() % GlobalState.currentRivalDeck.size()])
	%LastCard3.visible = false
	%LastCard2.visible = false
	%LastCard1.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move_card(source: Node, target: Node, clearSource: bool = false):
	#check if source is a valid card
	if(!source.cardID):
		return
	target.set_card(source.cardID)
	#target.find_child("NameLabel").text = source.find_child("NameLabel").text
	#target.find_child("TypeLabel").text = source.find_child("TypeLabel").text
	#target.find_child("JokeLabel").text = source.find_child("JokeLabel").text
	if(clearSource):
		source.cardID = 0
		source.find_child("NameLabel").text = ""
		source.find_child("TypeLabel").text = ""
		source.find_child("JokeLabel").text = ""

func play_card(id: int):
	#Move Last Played Cards as needed
	move_card($Stage/LastPlayed/LastCard2, $Stage/LastPlayed/LastCard3)
	move_card($Stage/LastPlayed/LastCard1, $Stage/LastPlayed/LastCard2)
	move_card(get_node("Stage/Hand/HandCard" + str(id)), $Stage/LastPlayed/LastCard1)
	
	DeckManager.playerHandSize -= 1
	
	#Move visibility back one
	for i in 3:
		if(LastCardVisibility[i] == false):
			get_node("Stage/LastPlayed/LastCard" + str(i + 1)).visible = true
			LastCardVisibility[i] = true
			break
	
	var selectedCardType = get_node("Stage/Hand/HandCard" + str(id)).cardType
	
	#Calculate Score
	if(lastPlayedCardType == selectedCardType):
		currentCombo += 5
	else:
		currentCombo = 0
	
	var audienceSum = 0
	for n in 32:
		audienceSum += Audience[n].card_played(selectedCardType)

	lastPlayedCardType = get_node("Stage/Hand/HandCard" + str(id)).cardType
	playerScore += get_node("Stage/Hand/HandCard" + str(id)).pointValue + audienceSum + currentCombo
	$Stage/PlayerScore.text = "Your score: " + str(playerScore)
	
	#Replace card in hand based on deck
	var newCardID = DeckManager.drawCard()
	if(newCardID == -1):
		#Very lazy implementation, but for now just reshuffle and draw a card
		#TODO: Make it so reshuffling factors in cards in hand
		DeckManager.selectedDeck = GlobalState.currentPlayerDeck.duplicate(true)
		DeckManager.playerDeck = DeckManager.shuffleDeck(DeckManager.selectedDeck)
		DeckManager.playerDeckSize = DeckManager.playerDeck.size()
		get_node("Stage/Hand/HandCard" + str(id)).set_card(DeckManager.drawCard())
	else:
		get_node("Stage/Hand/HandCard" + str(id)).set_card(newCardID)
	
	#end turn 
	#in the future, we will yield some time for animations while scoring
	#but for now, turn to enemy
	currentTurnState = turnState.rivalTurn
	await get_tree().create_timer(1.0).timeout
	for n in 32:
		Audience[n].reset_emote()
	play_rival_card()

#Play next card, calculate score for rival
func play_rival_card():
	#Move Last Played Cards as needed
	move_card($Stage/LastPlayed/LastCard2, $Stage/LastPlayed/LastCard3)
	move_card($Stage/LastPlayed/LastCard1, $Stage/LastPlayed/LastCard2)
	move_card($Stage/LastPlayed/NextCard, $Stage/LastPlayed/LastCard1)
	
	#Move visibility back one
	for i in 3:
		if(LastCardVisibility[i] == false):
			get_node("Stage/LastPlayed/LastCard" + str(i + 1)).visible = true
			LastCardVisibility[i] = true
			break
	
	rivalScore += $Stage/LastPlayed/NextCard.pointValue
	$Stage/RivalScore.text = "Rival score: " + str(rivalScore)
	
	lastPlayedCardType = $Stage/LastPlayed/NextCard.cardType
	
	$Stage/LastPlayed/NextCard.set_card(GlobalState.currentRivalDeck[randi() % GlobalState.currentRivalDeck.size()])
	roundNumber += 1
	$Stage/StageStatus.text = "Rounds Left: " + str(5 - roundNumber)
	if(roundNumber == 5):
		if(playerScore >= rivalScore):
			$Stage/StageStatus.text = "You win!"
		else:
			$Stage/StageStatus.text = "You lose!"
	else:
		#end turn 
		#in the future, we will yield some time for animations while scoring
		#but for now, turn to enemy
		currentTurnState = turnState.playerTurn

func _on_hand_card_1_gui_input(event):
	if event is InputEventMouseButton && currentTurnState == turnState.playerTurn:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Card 1 clicked")
			play_card(1)


func _on_hand_card_2_gui_input(event):
	if event is InputEventMouseButton && currentTurnState == turnState.playerTurn:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Card 2 clicked")
			play_card(2)


func _on_hand_card_3_gui_input(event):
	if event is InputEventMouseButton && currentTurnState == turnState.playerTurn:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Card 3 clicked")
			play_card(3)


func _on_hand_card_4_gui_input(event):
	if event is InputEventMouseButton && currentTurnState == turnState.playerTurn:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Card 4 clicked")
			play_card(4)
