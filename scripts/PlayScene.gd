extends Node2D

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
	#HandCards[1].get_children()
	$Hand/HandCard1.set_card(11)
	$Hand/HandCard2.set_card(3)
	$Hand/HandCard3.set_card(21)
	$Hand/HandCard4.set_card(17)
	$LastPlayed/NextCard.set_card(randi() % 30 + 1)
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
	move_card($LastPlayed/LastCard2, $LastPlayed/LastCard3)
	move_card($LastPlayed/LastCard1, $LastPlayed/LastCard2)
	move_card(get_node("Hand/HandCard" + str(id)), $LastPlayed/LastCard1)
	
	#Move visibility back one
	for i in 3:
		if(LastCardVisibility[i] == false):
			get_node("LastPlayed/LastCard" + str(i + 1)).visible = true
			LastCardVisibility[i] = true
			break
	
	#Calculate Score
	if(lastPlayedCardType == get_node("Hand/HandCard" + str(id)).cardType):
		currentCombo += 1
	else:
		currentCombo = 0

	lastPlayedCardType = get_node("Hand/HandCard" + str(id)).cardType
	playerScore += get_node("Hand/HandCard" + str(id)).pointValue + currentCombo
	$PlayerScore.text = "Your score: " + str(playerScore)
	
	#Replace card in hand based on deck
	get_node("Hand/HandCard" + str(id)).set_card(randi() % 30 + 1)
	
	#end turn 
	#in the future, we will yield some time for animations while scoring
	#but for now, turn to enemy
	currentTurnState = turnState.rivalTurn
	await get_tree().create_timer(1.0).timeout
	play_rival_card()

#Play next card, calculate score for rival
func play_rival_card():
	#Move Last Played Cards as needed
	move_card($LastPlayed/LastCard2, $LastPlayed/LastCard3)
	move_card($LastPlayed/LastCard1, $LastPlayed/LastCard2)
	move_card($LastPlayed/NextCard, $LastPlayed/LastCard1)
	
	#Move visibility back one
	for i in 3:
		if(LastCardVisibility[i] == false):
			get_node("LastPlayed/LastCard" + str(i + 1)).visible = true
			LastCardVisibility[i] = true
			break
	
	rivalScore += $LastPlayed/NextCard.pointValue
	$RivalScore.text = "Rival score: " + str(rivalScore)
	
	lastPlayedCardType = $LastPlayed/NextCard.cardType
	
	$LastPlayed/NextCard.set_card(randi() % 30 + 1)
	roundNumber += 1
	$StageStatus.text = "Rounds Left: " + str(5 - roundNumber)
	if(roundNumber == 5):
		if(playerScore >= rivalScore):
			$StageStatus.text = "You win!"
		else:
			$StageStatus.text = "You lose!"
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
