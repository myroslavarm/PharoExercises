"
I represent a die handle (collection of dice)
"
Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #initialization }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	dice := OrderedCollection new
]
