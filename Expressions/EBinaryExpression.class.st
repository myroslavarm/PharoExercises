"
I represent binary expressions
"
Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EBinaryExpression >> evaluate [ 

	^ self subclassResponsibility 
]

{ #category : #accessing }
EBinaryExpression >> left: aValue [

	left := aValue
]

{ #category : #accessing }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility 
]

{ #category : #accessing }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '('.
	left printOn: aStream. 
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ')'
]

{ #category : #accessing }
EBinaryExpression >> right: aValue [

	right := aValue
]
