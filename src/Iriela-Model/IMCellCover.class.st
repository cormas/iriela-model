Class {
	#name : 'IMCellCover',
	#superclass : 'Object',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'accessing' }
IMCellCover >> povBorderColor [ 
	^ CMColor white
]

{ #category : 'accessing' }
IMCellCover >> povColor [
	self subclassResponsibility .
]
