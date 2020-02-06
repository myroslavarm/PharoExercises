"
I implement addition
"
Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [

	^ self new left: anInteger; right: anInteger2 
]

{ #category : #accessing }
EAddition >> evaluateWith: anObject [
	^ (left evaluateWith: anObject)
		+ (right evaluateWith: anObject)
]

{ #category : #accessing }
EAddition >> operatorString [

	^ ' + '
]
