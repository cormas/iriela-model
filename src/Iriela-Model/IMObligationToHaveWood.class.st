Class {
	#name : 'IMObligationToHaveWood',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMObligationToHaveWood >> action [
	"Return the method that should be observed. This is the action of the cormas model"

	^ []
]

{ #category : 'api - rules' }
IMObligationToHaveWood >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."

	^ true.
]

{ #category : 'api - rules' }
IMObligationToHaveWood >> consequence: agent [
	"Return the method that is executed if the rule is broken"

	^ []
]
