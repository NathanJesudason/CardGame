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
		"jokeText": "I personally prefer red shells.",
		"pointValue": 1		
	},
	3	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Eyepoke",
		"jokeText": "The least favorite joke of every pirate.",
		"pointValue": 2		
	},
	4	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Fish Slap",
		"jokeText": "Giving carpal tunnel a brand new meaning.",
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
		"jokeText": "Objects may be shorter than they appear.",
		"pointValue": 3		
	},
	7	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Mime Stuck In Box",
		"jokeText": "One day he'll learn to keep the keys in his pocket.",
		"pointValue": 4		
	},
	8	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Fall Through Table",
		"jokeText": "Bah gawd he's broken in half!",
		"pointValue": 4		
	},
	9	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slime Time Live!",
		"jokeText": "I wonder what Olmec is up to these days.",
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
		"jokeText": "To the guy who invented zero,thanks for nothing.",
		"pointValue": 1		
	},
	12	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Napa Valley",
		"jokeText": "What did the grape say when it got crushed? Nothing, it just let out a little wine.",
		"pointValue": 1		
	},
	13	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Positivity",
		"jokeText": "I lost my mood ring and I don't know how to feel about it!",
		"pointValue": 2		
	},
	14	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Mounting Suspicion",
		"jokeText": "I don’t trust stairs because they’re always up to something.",
		"pointValue": 2	
	},
	15	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Perspective",
		"jokeText": "I was wondering why the ball was getting bigger. Then it hit me.",
		"pointValue": 3		
	},
	16	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "The Fates",
		"jokeText": "The past, the present, and the future walk into a bar. It was tense!",
		"pointValue": 3		
	},
	17	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "They're Everywhere",
		"jokeText": "Never trust an atom, they make up everything!",
		"pointValue": 4		
	},
	18	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Fowl Play",
		"jokeText": "What do you call the ghost of a chicken? A poultry-geist.",
		"pointValue": 4		
	},
	19	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Thyme",
		"jokeText": "What does a clock do when it's hungry? It goes back for seconds.",
		"pointValue": 5		
	},
	20	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Limitless",
		"jokeText": "Never discuss infinity with a mathematician, they can go on about it forever.",
		"pointValue": 5		
	},
	21	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Brick House",
		"jokeText": "I have a lot of growing up to do. I realised that the other day inside my fort.",
		"pointValue": 1		
	},
	22	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Perfect Coverage",
		"jokeText": "Do Transformers get car, or life insurance?",
		"pointValue": 1		
	},
	23	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Seussical",
		"jokeText": "Two fish in a tank. One says: ‘How do you drive this thing?",
		"pointValue": 2		
	},
	24	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Recycle",
		"jokeText": "I like an escalator because it can never break. It can only become stairs.",
		"pointValue": 2		
	},
	25	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Maritime",
		"jokeText": "I saw a documentary on how ships are kept together. Riveting!",
		"pointValue": 3		
	},
	26	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Stealth",
		"jokeText": "I went to buy camouflage trousers but I couldn’t find any.",
		"pointValue": 3		
	},
	27	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Beep Boops",
		"jokeText": "I would imagine that if you could understand Morse code, a tap dancer would drive you crazy.",
		"pointValue": 4		
	},
	28	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Broken Bonez",
		"jokeText": "The easiest time to add insult to injury is when you’re signing somebody’s cast.",
		"pointValue": 4		
	},
	29	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Honey Trap",
		"jokeText": "A waffle is like a pancake with a syrup trap.",
		"pointValue": 5		
	},
	30	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Stalwart Defense",
		"jokeText": "The depressing thing about tennis is that no matter how good I get, I’ll never be as good as a wall.",
		"pointValue": 5	
	},
	
}
