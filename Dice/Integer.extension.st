Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D10 [
	^ self D: 10
]

{ #category : #'*Dice' }
Integer >> D20 [
	^ self D: 20
]

{ #category : #'*Dice' }
Integer >> D4 [
	^ self D: 4
]

{ #category : #'*Dice' }
Integer >> D6 [
	^ self D: 6
]

{ #category : #'*Dice' }
Integer >> D: anInteger [ 
	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: anInteger)].
	^ handle

]
