"
I implement negation
"
Class {
	#name : #ENegation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [

	expression := anExpression 
]

{ #category : #accessing }
ENegation >> negated [

	^ self class new expression: self
]
