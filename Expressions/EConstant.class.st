"
I represent a value
"
Class {
	#name : #EConstant,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant >> evaluate [

	^ value
]

{ #category : #accessing }
EConstant >> negated [

	^ ENegation new expression: self
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger 
]
