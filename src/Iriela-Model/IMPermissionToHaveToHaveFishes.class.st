Class {
	#name : 'IMPermissionToHaveToHaveFishes',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMPermissionToHaveToHaveFishes >> action [
	"Return the method that should be observed. This is the action of the cormas model"

	"TODO: it's not just the action, it's the state to have 2 or more fishes actually"
	^ []
]

{ #category : 'api - rules' }
IMPermissionToHaveToHaveFishes >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."

	^ true.
]

{ #category : 'api - rules' }
IMPermissionToHaveToHaveFishes >> consequence: agent [
	"Return the method that is executed if the rule is broken"

	^ [  ]
]
