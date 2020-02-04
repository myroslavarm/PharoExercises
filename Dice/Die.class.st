"
I implement a die in a DnD game
"
Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance

	
]

{ #category : #initialization }
Die >> faces [

	^ faces
]

{ #category : #initialization }
Die >> faces: aNumber [

	faces := aNumber
]

{ #category : #initialization }
Die >> initialize [ 

	faces := 6
]

{ #category : #action }
Die >> roll [

	^ self faces atRandom 
]
