# map of card database, organized by card number
# 1-10 are acting/physical comedy, 11-20 are puns/wordplay, 21-30 are observational

# can use this enum to quickly set borders, or check type vs various factors
enum CardType  {
	physicalComedy,
	puns,
	observational
}

const DATABASE = {
	1	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	2	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	3	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	4	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	5	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	6	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	7	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	8	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	9	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	10	: {
		"cardType": "PhysicalComedy",
		"typeText": "Physical Comedy",
		"cardName": "Physical Comedy 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	11	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	12	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	13	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	14	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2	
	},
	15	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	16	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	17	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	18	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	19	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	20	: {
		"cardType": "PunsAndWordplay",
		"typeText": "Puns and Wordplay",
		"cardName": "Puns and Wordplay 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	21	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 1",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	22	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 2",
		"jokeText": "Sample Joke Text",
		"pointValue": 1		
	},
	23	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 3",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	24	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 4",
		"jokeText": "Sample Joke Text",
		"pointValue": 2		
	},
	25	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 5",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	26	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 6",
		"jokeText": "Sample Joke Text",
		"pointValue": 3		
	},
	27	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 7",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	28	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 8",
		"jokeText": "Sample Joke Text",
		"pointValue": 4		
	},
	29	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 9",
		"jokeText": "Sample Joke Text",
		"pointValue": 5		
	},
	30	: {
		"cardType": "ObservationalComedy",
		"typeText": "Observational Comedy",
		"cardName": "Observational Comedy 10",
		"jokeText": "Sample Joke Text",
		"pointValue": 5	
	},
	
}
