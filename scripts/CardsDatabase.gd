# map of card database, organized by card number
# 1-10 are acting/physical comedy, 11-20 are puns/wordplay, 21-30 are observational

# can use this enum to quickly set borders, or check type vs various factors
enum CardType  {
	slpastick,
	wordplay,
	observational
}

const DATABASE = {
	1	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Banana Cream Pie",
		"jokeText": "Right to the face!",
		"pointValue": 1		
	},
	2	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Banana Peel",
		"jokeText": "I personally prefer\nred shells.",
		"pointValue": 1		
	},
	3	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Eyepoke",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	4	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Fish Slap",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	5	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Whoopie Cushion",
		"jokeText": "It was the chair!",
		"pointValue": 3		
	},
	6	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Hit Head on Doorway",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	7	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Mime Stuck In Box",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	8	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Fall Through Table",
		"jokeText": "Bah gawd he's\nbroken in half!",
		"pointValue": 4		
	},
	9	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slime Time Live!",
		"jokeText": "I wonder what\nOlmec is up\nto these days.",
		"pointValue": 5		
	},
	10	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Step on Rake",
		"jokeText": "*Thwack*\n*Groan*\n*Thwack*\n*Groan*",
		"pointValue": 5		
	},
	11	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "My Hero",
		"jokeText": "To the guy who\ninvented zero,thanks\nfor nothing.",
		"pointValue": 1		
	},
	12	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Napa Valley",
		"jokeText": "What did the grape\nsay when it got\ncrushed?\nNothing, it just let\nout a little wine.",
		"pointValue": 1		
	},
	13	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Positivity",
		"jokeText": "I lost my mood\nring and I don't know\nhow to feel about it!",
		"pointValue": 2		
	},
	14	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Mounting Suspicion",
		"jokeText": "I don’t trust\nstairs because they’re\nalways up to something.",
		"pointValue": 2	
	},
	15	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Perspective",
		"jokeText": "I was wondering why\nthe ball was getting\nbigger. Then it\nhit me.",
		"pointValue": 3		
	},
	16	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "The Fates",
		"jokeText": "The past, the\npresent, and the\nfuture walk into\na bar. It was\ntense!",
		"pointValue": 3		
	},
	17	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "They're Everywhere",
		"jokeText": "Never trust an atom,\nthey make up everything!",
		"pointValue": 4		
	},
	18	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Fowl Play",
		"jokeText": "What do you call the\nghost of a chicken?\nA poultry-geist.",
		"pointValue": 4		
	},
	19	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Thyme",
		"jokeText": "What does a clock\ndo when it's hungry?\nIt goes back\nfor seconds.",
		"pointValue": 5		
	},
	20	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Limitless",
		"jokeText": "Never discuss infinity\nwith a mathematician,\nthey can go on\nabout it forever.",
		"pointValue": 5		
	},
	21	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Brick House",
		"jokeText": "I have a lot\nof growing up to\ndo. I realised that\nthe other day inside\nmy fort",
		"pointValue": 1		
	},
	22	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Perfect Coverage",
		"jokeText": "Do Transformers\nget car, or life\ninsurance?",
		"pointValue": 1		
	},
	23	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Seussical",
		"jokeText": "Two fish in a tank.\nOne says: ‘How do you\ndrive this thing?",
		"pointValue": 2		
	},
	24	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Recycle",
		"jokeText": "I like an escalator\nbecause it can never break.\nIt can only become stairs.",
		"pointValue": 2		
	},
	25	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Maritime",
		"jokeText": "I saw a documentary on\nhow ships are kept\ntogether. Riveting!",
		"pointValue": 3		
	},
	26	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Stealth",
		"jokeText": "I went to buy\ncamouflage trousers but\nI couldn’t find any",
		"pointValue": 3		
	},
	27	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Beep Boops",
		"jokeText": "I would imagine that\nif you could understand\nMorse code, a\ntap dancer would\ndrive you crazy.",
		"pointValue": 4		
	},
	28	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Broken Bonez",
		"jokeText": "The easiest time to add\ninsult to injury is when you’re\nsigning somebody’s\ncast.",
		"pointValue": 4		
	},
	29	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Honey Trap",
		"jokeText": "A waffle is like\na pancake with a\nsyrup trap.",
		"pointValue": 5		
	},
	30	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Stalwart Defense",
		"jokeText": "The depressing thing about\ntennis is that no\nmatter how good I get,\nI’ll never be as good\nas a wall",
		"pointValue": 5	
	},
	
}
