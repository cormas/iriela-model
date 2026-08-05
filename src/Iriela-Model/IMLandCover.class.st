Class {
	#name : 'IMLandCover',
	#superclass : 'IMCellCover',
	#instVars : [
		'isProtected',
		'isSacred'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'accessing' }
IMLandCover >> beProtected [

	isSacred := false. 
	isProtected := true.
]

{ #category : 'accessing' }
IMLandCover >> bePublic [

	isSacred := false. 
	isProtected := false.
]

{ #category : 'accessing' }
IMLandCover >> beSacred [

	isSacred := true. 
	isProtected := false.
]

{ #category : 'accessing' }
IMLandCover >> initialize [ 

	super initialize .
	self bePublic .
]

{ #category : 'accessing' }
IMLandCover >> isProtected [

	^ isProtected
]

{ #category : 'accessing' }
IMLandCover >> isPublic [ 

	^ isProtected not and: [isSacred not]. 
]

{ #category : 'accessing' }
IMLandCover >> isSacred [

	^ isSacred
]

{ #category : 'accessing' }
IMLandCover >> povBorderColor [ 
	isProtected ifTrue: [ ^ CMColor tangerine ].
	isSacred ifTrue: [  ^ CMColor red ].
	^ super povBorderColor 
]
