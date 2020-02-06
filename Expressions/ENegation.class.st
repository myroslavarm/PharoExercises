"
I implement negation
"
Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression 
]

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
