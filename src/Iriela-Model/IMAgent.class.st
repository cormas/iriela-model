Class {
	#name : 'IMAgent',
	#superclass : 'CMAgent',
	#instVars : [
		'hasLicense'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'control' }
IMAgent >> collect: anIMAgent [
	<action>
	self cell hasResource ifFalse: [ ^ self ].
	(self cell occupantsOfClass: anIMAgent ) ifEmpty: [ ^ self ].
	(self cell occupantsOfClass: anIMAgent ) ifNotEmpty: [ :list | ^ list first die ].
]

{ #category : 'accessing' }
IMAgent >> hasLicense [

	^ hasLicense
]

{ #category : 'accessing' }
IMAgent >> hasLicense: anObject [

	hasLicense := anObject
]

{ #category : 'control' }
IMAgent >> move [ 
	<action> 
	self cell neighbourhood 
		detect: [ :c | cell hasResource ]
		ifFound: [ :c | self moveTo: cell ]
		ifNone: [ self moveRandomly ]
]

{ #category : 'as yet unclassified' }
IMAgent >> moveRandomly [ 
	self randomWalk 
]

{ #category : 'accessing' }
IMAgent >> pov [ 
	<pov> 
	^ CMPointOfView 
		tile: IMTileset agent
		size: 0.8
]

{ #category : 'control' }
IMAgent >> reportFish [
	<action> 
	self cell neighbourhood 
		detect: [ :c | cell beOffice ]
		ifFound: [ :c | [self moveTo: cell . self hasLicense: true ] ]
		ifNone: [ self moveRandomly. self reportFish ]
]

{ #category : 'control' }
IMAgent >> step [ 
	self move. 
	self collect: IMWood . 
	self collect: IMFish .
]
