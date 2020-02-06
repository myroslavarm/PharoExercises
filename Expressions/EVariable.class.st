"
I represent a value that can be set
"
Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #accessing }
EVariable >> evaluateWith: aBindingDictionary [

	^ aBindingDictionary at: id
]

{ #category : #accessing }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : #accessing }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
