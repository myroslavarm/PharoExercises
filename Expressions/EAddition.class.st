"
I implement addition
"
Class {
	#name : #EAddition,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EAddition >> evaluate [
	^ left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> left: aValue [

	left := aValue
]

{ #category : #accessing }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EAddition >> right: aValue [

	right := aValue
]
