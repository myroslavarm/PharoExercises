"
I represent a value
"
Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> evaluateWith: anObject [

	^ value
]

{ #category : #accessing }
EConstant >> printOn: aStream [

	aStream nextPutAll: value printString
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger 
]
