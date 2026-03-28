Class {
	#name : 'IMFish',
	#superclass : 'CMAgent',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'initialization' }
IMFish >> initialize [ 
	super initialize .
]

{ #category : 'accessing' }
IMFish >> pov [ 
	<pov> 
	^ CMPointOfView
		image: IMImages fish
		size: 0.5
]

{ #category : 'control' }
IMFish >> step [
	
]
