Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EMultiplicationTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := (EConstant new value: 5).
	ep2 := (EConstant new value: 3).
	self assert: (EMultiplication new right: ep1; left: ep2) evaluate equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateNegated [
	| ep1 ep2 |
	ep1 := (EConstant new value: 5).
	ep2 := (EConstant new value: 3).
	self assert: (EMultiplication new right: ep1; left: ep2) negated evaluate equals: -15
]
