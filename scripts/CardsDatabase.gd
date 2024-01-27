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
		"cardName": "Slapstick 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	2	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	3	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	4	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	5	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	6	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	7	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	8	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	9	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	10	: {
		"cardType": "Slapstick",
		"typeText": "Slapstick",
		"cardName": "Slapstick 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	11	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	12	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	13	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	14	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2	
	},
	15	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	16	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	17	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	18	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	19	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	20	: {
		"cardType": "Wordplay",
		"typeText": "Wordplay",
		"cardName": "Wordplay 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	21	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	22	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	23	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	24	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	25	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	26	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observationaly 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	27	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	28	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	29	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	30	: {
		"cardType": "Observational",
		"typeText": "Observational",
		"cardName": "Observational 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5	
	},
	
}
