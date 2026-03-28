Class {
	#name : 'IMCell',
	#superclass : 'CMCell',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'testing' }
IMCell >> hasResource [ 
	^ (self hasOccupantsOfClass: IMWood) or: [self hasOccupantsOfClass: IMFish] 
]
