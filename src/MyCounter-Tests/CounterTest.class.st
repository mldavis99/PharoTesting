Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
| c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterWellInitialized [
	"test that Counter count is initialized to 0"
	self assert: (Counter new increment; increment; count) equals: 2
]

{ #category : #tests }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 4 ; decrement ; decrement.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0 ; increment ; increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [ 
	self assert: Counter new count equals: 0
]
