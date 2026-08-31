Class {
	#name : 'IMAgent',
	#superclass : 'CMAgent',
	#instVars : [
		'daysWithoutWood',
		'hasLicense',
		'collectedFishes',
		'collectedWoods'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'control' }
IMAgent >> collectFish [
	<action>
	(self cell occupantsOfClass: IMFish ) ifNotEmpty: [ :fishes | 
		| fish |
		fish := fishes first .
		collectedFishes add: fish.
		fish leave.
	].
]

{ #category : 'control' }
IMAgent >> collectResource: anIMAgent [
	(self cell occupantsOfClass: anIMAgent ) ifNotEmpty: [ :list | ^ list first die ].
]

{ #category : 'control' }
IMAgent >> collectWood [
	<action>
	(self cell occupantsOfClass: IMWood ) ifNotEmpty: [ :woods | 
		| wood |
		wood := woods first .
		collectedWoods add: wood .
		wood leave.
	].
]

{ #category : 'accessing' }
IMAgent >> hasLicense [

	^ hasLicense
]

{ #category : 'accessing' }
IMAgent >> hasLicense: anObject [

	hasLicense := anObject
]

{ #category : 'accessing' }
IMAgent >> hasWood [

	^ collectedWoods isNotEmpty .
]

{ #category : 'accessing' }
IMAgent >> incrementDaysWithoutFood [ 
	daysWithoutWood := daysWithoutWood + 1.
]

{ #category : 'accessing' }
IMAgent >> initialize [ 
	super initialize.
	daysWithoutWood := 0.
	collectedFishes := OrderedCollection new. 
	collectedWoods := OrderedCollection new.
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
	self collectFish .
	self collectWood .
]
