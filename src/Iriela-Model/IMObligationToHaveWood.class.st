Class {
	#name : 'IMObligationToHaveWood',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMObligationToHaveWood >> action [
	"To start a new day, the agent is required to have wood already"
	
	^ IMAgent >> #step
]

{ #category : 'api - rules' }
IMObligationToHaveWood >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."

	^ agent hasWood not.
]

{ #category : 'api - rules' }
IMObligationToHaveWood >> consequence: agent [
	"Return the method that is executed if the rule is broken"

	^ agent incrementDaysWithoutFood .
]
