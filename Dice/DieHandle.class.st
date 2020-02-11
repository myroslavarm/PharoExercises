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

{ #category : #arithmetic }
DieHandle >> + aDieOrADieHandle [
	^ (aDieOrADieHandle class = self class)
			ifTrue: [ | handle |
					handle := self class new.
					self dice do: [ :each | handle addDie: each ].
					aDieOrADieHandle dice do: [ :each | handle addDie: each ].
					handle ]
			ifFalse: [ | handle |
					handle := self class new.
					self dice do: [ :each | handle addDie: each ].
					handle addDie: aDieOrADieHandle.
					handle ]
]

{ #category : #initialization }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #initialization }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	dice := OrderedCollection new
]

{ #category : #action }
DieHandle >> roll [
	| diceRollSum |
	diceRollSum := 0.
	dice do: [ :each | diceRollSum := diceRollSum + each roll ].
	^ diceRollSum
]
