"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [ 	
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger.
	
]

{ #category : #operation }
Counter >> decrement [
	"decrease the value of count by 1"
	count := count - 1.
]

{ #category : #operation }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 	
	"Set the initial value of the value to 0"
	count := 0
]
