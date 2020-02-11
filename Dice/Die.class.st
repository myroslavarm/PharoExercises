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
Die >> + aDicable [

	^ aDicable sumWithDie: self
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

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPutAll: ')'
]

{ #category : #action }
Die >> roll [

	^ faces atRandom 
]

{ #category : #initialization }
Die >> sumWithDie: aDie [

	^ DieHandle new addDie: self; addDie: aDie; yourself
]

{ #category : #initialization }
Die >> sumWithHandle: aDieHandle [
	| handle |
	handle := DieHandle new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle
]
