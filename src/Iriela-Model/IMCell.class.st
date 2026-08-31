Class {
	#name : 'IMCell',
	#superclass : 'CMCell',
	#instVars : [
		'state',
		'cover'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'accessing' }
IMCell >> beNormal [
	"Changes the state to normal"
	state:= #normal
]

{ #category : 'accessing' }
IMCell >> beOffice [
	"Changes the state to be an office"

	state:= #office
]

{ #category : 'accessing' }
IMCell >> beProtected [
	"Changes the state of the cell to protected"
	state:= #protected
]

{ #category : 'accessing' }
IMCell >> beSacred [
	"Changes the set of the cell to be sacred"
	state:= #sacred
]

{ #category : 'testing' }
IMCell >> hasResource [ 
	^ (self hasOccupantsOfClass: IMWood) or: [self hasOccupantsOfClass: IMFish] 
]

{ #category : 'accessing' }
IMCell >> initialize [ 
	super initialize. 
	cover := IMForestCover new. 
]

{ #category : 'accessing' }
IMCell >> isNormal [
	"Returns true if the cell is normal, returns false otherwise"

	^ state = #normal
]

{ #category : 'accessing' }
IMCell >> isOffice [
	"Returns true if the cell is an office, returns false otherwise"

	^ state = #office
]

{ #category : 'accessing' }
IMCell >> isProtected [
	"Returns true if the cell is protected, returns false otherwise"
	^ state = #protected
]

{ #category : 'accessing' }
IMCell >> isSacred [
	"Returns true if the cell is sacred, returns false otherwise"
	^ state = #sacred
]

{ #category : 'accessing' }
IMCell >> pov [
	<pov>
	^ CMPointOfView new
		color: cover povColor;
		borderColor: cover povBorderColor ;
		yourself
]

{ #category : 'accessing' }
IMCell >> povColor [ 
	self isSacred ifTrue: [^CMColor red].
	self isProtected ifTrue: [^CMColor yellow].
	self isOffice ifTrue: [^CMColor blue].
	^CMColor white.
]
