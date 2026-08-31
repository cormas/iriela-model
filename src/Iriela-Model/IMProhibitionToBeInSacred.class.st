Class {
	#name : 'IMProhibitionToBeInSacred',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMProhibitionToBeInSacred >> action [
	"Return the method that should be observed. This is the action of the cormas model"

	^ [self agent move]
]

{ #category : 'api - rules' }
IMProhibitionToBeInSacred >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."
	"TODO: should be on the condition that the target zone is a sacred one. "
	^ true.
]

{ #category : 'api - rules' }
IMProhibitionToBeInSacred >> consequence: agent [
	"Return the method that is executed if the rule is broken"
	"TODO: should die instantly"
	^ []
]
