extends Node

# load the card tempalte
const cardTemplate = preload("res://scenes/CardTemplate.tscn")

# preset player decks that the user can select
# the decks feature 5 primary cards (values 1-5) based on their specialty
# 3 secondary cards (values 1, 3, 5) from the deck that is neutral vs. their specialty
# and 2 tertiary cards (values, 2, 4) from the deck that is stronger vs. their specialty
const physicalPlayerDeck = [1, 3, 5, 7, 9, 12, 16, 20, 24, 28]
const punsPlayerDeck = [11, 13, 15, 17, 19, 22, 26, 30, 4, 8]
const observationalPlayerDeck = [21, 23, 25, 27, 29, 2, 6, 10, 14, 18]

# since rivals only have five cards, they don't need decks and we can just set their hands as const
# each rival has 3 cards from their primary specialty (values 1, 4, 5)
# 1 card (value 3) from the deck that is neutral vs. their specialty
# and 1 card (value 2) from the deck that is stronger vs. their specialty
const phsyicalRival = [2, 8, 10, 15, 23]
const punsRival = [12, 18, 20, 25, 3]
const observationalRival = [22, 28, 30, 5, 13]

var selectedDeck
var playerDeck = []
var playerDeckSize = 0
var playerHand = []
var playerHandSize = 0 

# Called when the node enters the scene tree for the first time.
func _ready():
	#TODO: update selected deck with the option the player chooses
	# physicalPlayerDeck is just for testing
	selectedDeck = physicalPlayerDeck
	playerDeck = shuffleDeck(selectedDeck)
	playerDeckSize = playerDeck.size()
	

func drawCard(): 
	if playerDeckSize > 0 and playerHandSize < 5:
		var drawnCardIdD = playerDeck.pop_front()
		#TODO: connect this with the updated card scripts
		var newCard = cardTemplate.instantiate()
		
		playerDeckSize -= 1
		playerHand.insert(playerHand.size(), drawnCardIdD)
		playerHandSize += 1
	

func shuffleDeck(deck: Array): 
	deck.shuffle()
	return deck


func resetBattle():
	playerDeck = selectedDeck
	playerDeckSize = playerDeck.size()
	playerHand = []
	playerHandSize = 0
