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
EAddition >> evaluate [
	^ left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> operatorString [

	^ ' + '
]
