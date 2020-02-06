"
I am the super class for all expressions
"
Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #accessing }
EExpression >> evaluateWith: anObject [ 
	
	^ self subclassResponsibility 
]

{ #category : #accessing }
EExpression >> negated [
	^ ENegation new expression: self
]
