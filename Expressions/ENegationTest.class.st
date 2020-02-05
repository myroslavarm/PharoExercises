Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testEvaluate [

	self assert: (ENegation new expression: (EConstant new value: 5)) evaluate equals: -5
]

{ #category : #tests }
ENegationTest >> testNegationNegated [

	self assert: (EConstant new value: 6) negated negated evaluate equals: 6
]
