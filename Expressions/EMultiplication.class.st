"
I implement multiplication
"
Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [

	^ self new left: anExp ; right: anExp2
]

{ #category : #accessing }
EMultiplication >> evaluateWith: anObject [
	^ (left evaluateWith: anObject)
		* (right evaluateWith: anObject)
]

{ #category : #accessing }
EMultiplication >> operatorString [

	^ ' * '
]
